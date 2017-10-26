#!/bin/bash
for ((i = 1; i <= 5; i++)) do
	./hex2raw < $i.tmp > $i.ans
done
./ctarget -q -i 1.ans
./ctarget -q -i 2.ans
./ctarget -q -i 3.ans
./rtarget -q -i 4.ans
./rtarget -q -i 5.ans

