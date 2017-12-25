/*
 * proxc.c - A caching web proxy server
 **************************************
 * Name : Yunfan Zhang
 * ID   : 1600012710
 **************************************
**/

#include "csapp.h"
#include "cache.h"

/* Recommended max object sizes */
#define MAX_OBJECT_SIZE 102400

#define HTTP_PORT 80
#define perror(...) fprintf(stderr, __VA_ARGS__)

/* You won't lose style points for including this long line in your code */
static char user_agent_hdr[] = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3)Gecko/20120305 Firefox/10.0.3\r\n";
static char connection_hdr[] = "Connection: close\r\n";
static char proxy_connection_hdr[] = "Proxy-Connection: close\r\n";

static Cache *cache;

void proxy(int connfd);
void *thread(void *vargp);
int parse_url(char *url, char *host, char *port, char *uri);

int main(int argc, char *argv[]) {
    int listenfd, *connfdp = NULL;
    
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    char hostname[MAXLINE], port[MAXLINE];
    
    pthread_t tid;    
    
    Signal(SIGPIPE, SIG_IGN);
    
    cache = (Cache *) Malloc(sizeof(Cache));
    initCache(cache);
    
    /* Check command line args */
    if (argc != 2) {
        perror("usage: %s <port>\n", argv[0]);
        exit(1);
    }
    
    if ((listenfd = open_listenfd(argv[1])) < 0) {
        perror("fatal error: failed to open listenfd on port(%s).\n", argv[1]);
        exit(1);
    }
    
    while (1) {
        clientlen = sizeof(clientaddr);
        connfdp = Malloc(sizeof(int));
        if ((*connfdp = accept(listenfd, (SA *) &clientaddr, &clientlen)) < 0) {
            perror("error: failed to accept connection on listenfd(%d).\n",
                   listenfd);
            continue;
        }
        if (getnameinfo((SA *) &clientaddr, clientlen, hostname, MAXLINE,
                        port, MAXLINE, 0) != 0) {
            printf("Accepted connection from (NULL, -1)\n");
            perror("error: failed to get nameinfo.");
        }
        else {
            printf("Accepted connection from (%s, %s)\n", hostname, port);
        }
        Pthread_create(&tid, NULL, thread, connfdp);
    }
    
    return 0;
}

/* Thread routine */
void *thread(void *vargp) {
    int connfd = *((int *)vargp);
    Pthread_detach(pthread_self());
    Free(vargp);
    proxy(connfd);
    Close(connfd);
    return NULL;
}

/* Proxy service */
void proxy(int connfd) {
    char method[MAXLINE], url[MAXLINE], version[MAXLINE];
    char host[MAXLINE], port[MAXLINE], uri[MAXLINE];
    char buf[MAXLINE+5];
    rio_t rio_conn, rio_proxy; int proxyfd;
    int bytes = 0, rest_bytes, exist_host = 0;

    char body[MAX_OBJECT_SIZE], *bodyp; int content_length = 0;
    char header[MAX_OBJECT_SIZE];
    
    /* Read request line */
    Rio_readinitb(&rio_conn, connfd);
    if (!Rio_readlineb(&rio_conn, buf, MAXLINE))
        return;
    printf("%s", buf);
    if (sscanf(buf, "%s %s %s", method, url, version) < 3) {
        perror("error: request format unrecognized.\n");
        return;
    }

    if (strcasecmp(method, "GET") != 0) {
        perror("error: method(%s) not implemented.\n", method);
        return;
    }
    
    /* Parse URL from GET request */
    if (parse_url(url, host, port, uri) != 0) {
        perror("error: unable to parse URL(%s).\n", url);
        return;
    }

    /* Check if web object has been cached */
    if (findBlock(cache, url, header, body, &content_length)) {
        Rio_writen(connfd, header, strlen(header));
        Rio_writen(connfd, body, content_length);
        return;
    }
    
    /* Open a connection to HOST */
    if ((proxyfd = open_clientfd(host, port)) < 0) {
        perror("error: failed to open a connection to (%s, %s)\n",
               host, port);
        return;
    }
    Rio_readinitb(&rio_proxy, proxyfd);
    
    /* Forward GET request */
    sprintf(buf, "GET %s HTTP/1.0\r\n", uri);
    Rio_writen(proxyfd, buf, strlen(buf));
    
    /* Read and forward request headers */
    while (1) {
        Rio_readlineb(&rio_conn, buf, MAXLINE);
        if (strncasecmp(buf, "Connection:", strlen("Connection:")) == 0)
            continue;
        if (strncasecmp(buf, "Proxy-Connection:",
                        strlen("Proxy-Connection")) == 0)
            continue;
        if (strncasecmp(buf, "User-Agent:", strlen("User-Agent:")) == 0)
            continue;
        printf("%s", buf);
        Rio_writen(proxyfd, buf, strlen(buf));
        if (strcmp(buf, "\r\n") == 0)
            break;
        if (strncasecmp(buf, "Host:", strlen("Host")) == 0)
            exist_host = 1;
    }
    if (!exist_host) {
        sprintf(buf, "Host: %s\r\n", host);
        Rio_writen(proxyfd, buf, strlen(buf));
    }
    Rio_writen(proxyfd, user_agent_hdr, strlen(user_agent_hdr));
    Rio_writen(proxyfd, connection_hdr, strlen(connection_hdr));
    Rio_writen(proxyfd, proxy_connection_hdr, strlen(proxy_connection_hdr));
    
    /* Read and forward response line */
    Rio_readlineb(&rio_proxy, buf, MAXLINE);
    Rio_writen(connfd, buf, strlen(buf));
    sprintf(header, "%s", buf);

    /* Read and forward response header */
    while (1) {
        Rio_readlineb(&rio_proxy, buf, MAXLINE);
        Rio_writen(connfd, buf, strlen(buf));
        printf("%s", buf);
        sprintf(header, "%s%s", header, buf);
        if (strcmp(buf, "\r\n") == 0)
            break;
        if (strncasecmp(buf, "Content-Length:",
                        strlen("Content-Length:")) == 0) {
            sscanf(buf, "%*s %d", &content_length);
        }
    }
    
    /* Read and forward response body */
    rest_bytes = content_length, bodyp = body;
    while (rest_bytes > 0) {
        bytes = Rio_readnb(&rio_proxy, buf, MAXLINE);
        Rio_writen(connfd, buf, bytes);
        if (content_length <= MAX_OBJECT_SIZE) {
            memcpy(bodyp, buf, bytes);
            bodyp += bytes;
        }
        rest_bytes -= bytes;
    }
    
    
    /* Insert a new web object into cache */
    if (content_length <= MAX_OBJECT_SIZE)
        insertBlock(cache, url, header, body, content_length);
    
    Close(proxyfd);
}

/* parse_url : Divide URL into three parts: hostname, port number and URI.
               Return 1 if parse error.
 */ 
int parse_url(char *url, char *host, char *port, char *uri) {
    char *ptr = url;
    if (tolower(*ptr++) != 'h') return 1;
    if (tolower(*ptr++) != 't') return 1;
    if (tolower(*ptr++) != 't') return 1;
    if (tolower(*ptr++) != 'p') return 1;
    if (*ptr++ != ':') return 1;
    if (*ptr++ != '/') return 1;
    if (*ptr++ != '/') return 1;
    
    while (*ptr && *ptr != '/' && *ptr != ':')
        *host++ = *ptr++;
    if (!*ptr) return 1;
    
    if (*ptr != ':')
        sprintf(port, "%d", HTTP_PORT);
    else {
        ++ptr;
        while (*ptr && *ptr != '/')
            *port++ = *ptr++;
    }    
    if (*ptr != '/') return 1;
    
    sprintf(uri, "%s", ptr);
    return 0;
}
