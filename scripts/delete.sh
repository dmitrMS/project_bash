#!/bin/bash
filename=$(find ./catalog/ -name $file*)
# directory_name=$(find ./catalog/ -name $file)
# echo "$directory_name"
if [ -f $filename ]; then
    if basename $filename > /dev/null 2>&1 
    then
        rm $filename
        echo "ok"
    else 
        echo "Неправильное название файла или директории"
    fi
elif [ -d $filename ]; then
rm -R $filename
echo "ok"
fi