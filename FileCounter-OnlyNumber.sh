#!/bin/bash
DIR1="data/ic_check_w2/"
DIR2="data/w1_ph/"
DIR3="data/w2_ph/1/"
DIR4="data/w2_ph/2/"
DIR5="data/w2_ph/3/"
DIR6="data/reagent_ph/ic_check/"
DIR7="data/reagent_ph/w1_ph/"
DIR8="data/reagent_ph/w2_ph/"
DIR9="data/reagent_ph/a_ph/"
DIR10="data/reagent_ph/c_ph/"
DIR11="data/reagent_ph/g_ph/"
DIR12="data/reagent_ph/t_ph/"
DIR13="data/ic_check_1/"
DIR14="data/ic_check_2/"
DIR15="data/BeadFind/pre/"
DIR16="data/BeadFind/post/"
if [ -d $DIR1 ]; then
	num=$(ls -l $DIR1 | grep "dat"| wc -l)
	printf "%-30s %-8s\n" $DIR1 $num 
fi
if [ -d $DIR2 ]; then
	num=$(ls -l $DIR2 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR2 $num
fi
if [ -d $DIR3 ]; then
	num=$(ls -l $DIR3 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR3 $num
fi
if [ -d $DIR4 ]; then
	num=$(ls -l $DIR4 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR4 $num
fi
if [ -d $DIR5 ]; then
	num=$(ls -l $DIR5 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR5 $num
fi
if [ -d $DIR6 ]; then
        num=$(ls -l $DIR6 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR6 $num
fi
if [ -d $DIR7 ]; then
        num=$(ls -l $DIR7 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR7 $num
fi
if [ -d $DIR8 ]; then
        num=$(ls -l $DIR8 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR8 $num
fi
if [ -d $DIR9 ]; then
        num=$(ls -l $DIR9 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR9 $num
fi
if [ -d $DIR10 ]; then
        num=$(ls -l $DIR10 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR10 $num
fi
if [ -d $DIR11 ]; then
        num=$(ls -l $DIR11 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR11 $num
fi
if [ -d $DIR12 ]; then
        num=$(ls -l $DIR12 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR12 $num
fi
if [ -d $DIR13 ]; then
        num=$(ls -l $DIR13 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR13 $num
fi
if [ -d $DIR14 ]; then
        num=$(ls -l $DIR14 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR14 $num
fi
if [ -d $DIR15 ]; then
        num=$(ls -l $DIR15 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR15 $num
fi
if [ -d $DIR16 ]; then
        num=$(ls -l $DIR16 | grep "dat" | wc -l)
	printf "%-30s %-8s\n" $DIR16 $num
fi
echo "Finished to counter files number"
