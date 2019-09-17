#!/bin/sh
for i in *.*
do
k=`echo ${i}|sed s/' '/'_'/g`
mv "${i}" ${k}
done
