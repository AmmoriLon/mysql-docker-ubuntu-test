# Тестовое задание

Решения для тестового задания, демонстрирующие навыки работы с MySQL, Docker и Ubuntu.

## Структура проекта
test-assignment/
├── delete_query.sql # SQL запрос на удаление данных
├── docker-compose.yml # Docker Compose конфигурация
├── ubuntu_search_commands.md # Команды поиска в Ubuntu
└── README.md # Данный файл

text

## 1. MySQL запрос

### Задача
Написать запрос на удаление записей из таблицы `indicator_to_mo_fact` со связью из трех таблиц за определенный день (`fact_time='2024-09-10'`) по `indicator_id = 273`.

### Решение
Файл: `delete_query.sql`


Особенности
Использует многотабличный DELETE с JOIN

Точечное удаление по конкретному indicator_id и дате

Оптимизирован для SQL Server

## 2. Docker Compose конфигурация
Задача
Подготовить docker-compose.yml для запуска нескольких сервисов: nginx, php, mariadb, backend1.

Решение
Файл: docker-compose.yml

yaml
version: '3.8'
services:
  nginx:
    image: nginx:latest
    ports:
      - "80:80"
    volumes:
      - ./nginx.conf:/etc/nginx/nginx.conf
    depends_on:
      - php

  php:
    image: php:8.2-fpm
    volumes:
      - ./app:/var/www/html

  mariadb:
    image: mariadb:10.6
    environment:
      MYSQL_ROOT_PASSWORD: rootpass
      MYSQL_DATABASE: app_db

  backend1:
    build: ./backend
    ports:
      - "8000:8000"
## 3. Команды поиска в Ubuntu
Задача
Предоставить команды для поиска по содержимому файлов в Ubuntu.

Решение
Файл: ubuntu_search_commands.md

Основная команда:

bash
grep -r "искомый_текст" /путь/к/директории/
Ключевые опции
-r - рекурсивный поиск

-i - игнорирование регистра

-n - вывод номеров строк

-w - поиск целых слов

Как использовать
MySQL запрос
sql
-- Выполнить в SQL Server Management Studio
Docker Compose
bash
# Запуск всех сервисов
docker-compose up -d

# Остановка сервисов  
docker-compose down
Поиск в Ubuntu
bash
# Пример использования
grep -r "database" /var/www/
