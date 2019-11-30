#!/bin/sh
cd /home/alex/Загрузки
for i in *.*
do
k=`echo ${i}|sed s/' '/'_'/g`
mv "${i}" ${k}
done
