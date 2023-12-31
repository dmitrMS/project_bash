#!/bin/bash
folder="/home/dmitry/project_bash/catalog"
arr=("${arr[@]}")
iteration_complete=false
iterations=0
while [ "$iteration_complete" = "false" ]; do
    ((iterations++))
    ## добавление в массив путей к директориям и вывод названий файлов в директории $folder
    for file in $folder/*; do
        if [ -f $file ]; then
            if cat $file  | grep -n -o -P '.{0,30}'$argument'.{0,30}' > /dev/null
            then
                echo " $(basename $file)"
                echo "--------------------------------"
                cat $file  | grep -n -o -P '.{0,30}'$argument'.{0,30}'
                echo "                       "
            fi
        elif [ -d $file ]; then
            arr=("${arr[@]}" "$file") ##добавление строки(пути в директорию) в массив
        fi
    done
    if [ ${#arr[@]} -eq 0 ]; then
        iteration_complete=true
    else
        folder=${arr[0]}
        unset arr[0]
    fi
done