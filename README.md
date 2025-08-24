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

```sql
DELETE f FROM indicator_to_mo_fact f
JOIN indicator_to_mo im ON f.indicator_to_mo_id = im.indicator_to_mo_id
JOIN indicator i ON im.indicator_id = i.indicator_id
WHERE i.indicator_id = 273 AND CAST(f.fact_time AS DATE) = '2024-09-10';```
Особенности
Использует многотабличный DELETE с JOIN

Точечное удаление по конкретному indicator_id и дате

Оптимизирован для SQL Server

2. Docker Compose конфигурация
Задача
Подготовить docker-compose.yml для запуска нескольких сервисов: nginx, php, mariadb, backend1.

Решение
Файл: docker-compose.yml

yaml
version: '3.8'
services:
  nginx:
    image: nginx:latest
    ports: ["80:80"]
    # ... полная конфигурация в файле
Сервисы
nginx: Веб-сервер с пробросом портов

php: PHP-FPM для обработки скриптов

mariadb: База данных с настроенными переменными окружения

backend1: Пример бэкенд-сервиса

3. Команды поиска в Ubuntu
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
bash
# Выполнить в SQL Server Management Studio
sqlcmd -i delete_query.sql
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
Технические детали
Проверка окружения
SQL Server 2019+

Docker Engine 20.10+

Docker Compose 2.0+

Ubuntu 20.04+
