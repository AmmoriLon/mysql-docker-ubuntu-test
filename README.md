# Тестовое задание

Решения для тестового задания, демонстрирующие навыки работы с MySQL, Docker и Ubuntu.


## 1. MySQL запрос

### Задача
Написать запрос на удаление записей из таблицы `indicator_to_mo_fact` со связью из трех таблиц за определенный день (`fact_time='2024-09-10'`) по `indicator_id = 273`.

### Решение
Файл: `delete_query.sql`

## 2. Docker Compose конфигурация
Задача:
Подготовить docker-compose.yml для запуска нескольких сервисов: nginx, php, mariadb, backend1.
### Структура проекта:
./.env  # переменные для запуска docker compose (MYSQL_ROOT_PASSWORD, MYSQL_DATABASE...)
./.gitignore
./.dockerignore # список игнорируемых файлов при сборке контейнера
./db_data/  # директория базы данных - перед запуском сменить пользователя на mysql
./app-php-01/  # директория с кодом php
./backend-01/ # директория с кодом backend
./config/ # директория с конфигурационными файлами контейнеров
./docker-compose.yml
./Dockerfile.backend-01 # файл с описанием сценария сборки контейнера

Решение:
Файл: `docker-compose.yml`

## 3. Команды поиска в Ubuntu
Задача:
Предоставить команды для поиска по содержимому файлов в Ubuntu.

Решение:
Файл: `ubuntu_search_commands.md`
