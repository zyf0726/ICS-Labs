####################################################
# Students' Makefile for the CS:APP Architecture Lab
####################################################

# IMPORTANT: Change the USER variable to your unique UserID
USER = 1600012710

sim:
	(cd sim; make)

# Use this rule to build the handin file for Part A ("make handin-parta")
handin-parta:
	cp sim/misc/sum.ys $(USER)-sum.ys
	cp sim/misc/rsum.ys $(USER)-rsum.ys
	cp sim/misc/copy.ys $(USER)-copy.ys
	tar cf - $(USER)-sum.ys $(USER)-rsum.ys $(USER)-copy.ys > $(USER)-parta.tar
	rm -f $(USER)-sum.ys $(USER)-rsum.ys $(USER)-copy.ys

# Use this rule to build the handin file for Part B ("make handin-partb")
handin-partb:
	cp sim/seq/seq-full.hcl $(USER)-seq-full.hcl
	tar cf - $(USER)-seq-full.hcl > $(USER)-partb.tar
	rm -f $(USER)-seq-full.hcl

# Use this rule to build the handin file for Part C ("make handin-partc")
handin-partc:
	cp sim/pipe/ncopy.ys $(USER)-ncopy.ys
	cp sim/pipe/pipe-full.hcl $(USER)-pipe-full.hcl
	tar cf - $(USER)-ncopy.ys $(USER)-pipe-full.hcl > $(USER)-partc.tar
	rm -f $(USER)-ncopy.ys $(USER)-pipe-full.hcl

clean:
	rm -f *~ *.o



