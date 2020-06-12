#! /bin/bash
cat ./all_file | while read line 
do 
	echo $line
	a=a+1
    sed -i 'N;2i\#include "sta_config.h"' $line
done 
echo $a

