Структура проекта:
- catalog (папка в которой лежат файлы с текстовыми данными и вложенные папки)
- scripts (вспомогательные скрипты)
- Makefile (управляющий файл)
Команды, которые доступны пользователю:
1) make catalog:list
возвращает отформатированный список файлов c их размером вида:
file1.txt ... 40kb
subfolder1/folder/file3.txt ... 30 mb
2) make search "test for search"
Команда ищет вхождение строки внутри каталога, выводит все найденные совпадения в формате (30 символов спереди и сзади искомой строки)
<file1.txt>
50 строка: ... asdasd_test for search_asdasd ...
100 строка: ... кукук test for search ...
<subfolder/file1.txt>
50 строка: ... asdasd_test for search_asdasd ...
100 строка: ... кукук test for search ...
3) make show file1.txt
выводит файл и информацию о нём в формате:
name: file1.txt
size: 30kb
created at: 08.11.2022
last updated at: 08.11.2022
data:
asda
asdsadsadsa
asdsad
asd13rqafs
4) make delete file1.txt
удаляет файл или директорию
ответ: ok
