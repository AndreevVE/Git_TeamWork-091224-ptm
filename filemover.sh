#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории

# Проверка существования целевой директории

# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию


for file in "$source_directory"/*."$file_extension"; do
    if [ -f "$file" ]; then
        
        new_file_name="$(basename "$file" ."$file_extension").$new_file_extension"
         
        cp "$file" "$target_directory/$new_file_name"
        
        echo "Файл $file скопирован как $target_directory/$new_file_name"
    fi
done
