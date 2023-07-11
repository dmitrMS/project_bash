#!/bin/bash
filename=$(find /home/dmitry/project_bash/catalog/ -name $argument*)
if [ -f $filename ]; then
rm $filename
echo "ok"
elif [ -d $file ]; then
rm -R $filename
echo "ok"
fi