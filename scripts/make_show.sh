#!/bin/bash
show_file=$(find /home/dmitry/project_bash/catalog/ -name $argument*)
if basename $show_file >> /dev/null
then
    size_file=$(du -h $show_file | awk '{ print $1}')
    birth_file=$(stat -c '%w' $show_file)
    update_file=$(stat -c '%x' $show_file)
    name_file=$(basename $show_file)
    echo "name: $name_file"
    echo "size: $size_file"
    echo "created at: $birth_file"
    echo "last updated at: $update_file"
    echo " ----------------------"
    cat $show_file | grep -v '^$'
fi