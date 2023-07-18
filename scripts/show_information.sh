#!/bin/bash
show_file=$(find ./catalog/ -name $file*)

if basename $show_file > /dev/null 2>&1 
then

    size_file=$(du -h $show_file | awk '{ print $1}')
    birth_file=$(stat -c '%w' $show_file)
    update_file=$(stat -c '%x' $show_file)
    echo "name: $show_file"
    echo "size: $size_file"
    echo "created at: $birth_file"
    echo "last updated at: $update_file"
    echo " ----------------------"
    cat $show_file | grep -v '^$'
else 
    echo "Неправильное название файла"
fi