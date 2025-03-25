#!/bin/bash

# Запрос исходной и целевой директории у пользователя

# Запрос расширения файлов, которые нужно скопировать

# Запросить новое расширение для файлов.

# Проверка существования исходной директории
#if [ ! -d "$source_directory" ]; then
#    echo "Error: Source directory $source_directory does not exist."
#    read -p "Please enter a valid source directory: " source_directory
#fi

if [ ! -d "$source_directory" ] || [ ! -r "$source_directory" ]; then
    echo "Error: Source directory $source_directory does not exist or lacks read permissions."
    exit 1
fi

# Проверка существования целевой директории
#if [ ! -d "$target_directory" ]; then
#    echo "Error: Target directory $target_directory does not exist. Creating directory."
#    mkdir -p $target_directory
#    echo "Directory $target_directory created"
#fi

if [ ! -d "$target_directory" ] || [ ! -w "$target_directory" ]; then
    echo "Error: Target directory $target_directory does not exist or lacks write permissions."
    exit 1
fi

# Проверка, есть ли файлы с указанным расширением в исходной директории

# Копирование файлов с указанным расширением в целевую директорию
