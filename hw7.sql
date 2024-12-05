- Task 1

USE mydb;

SELECT 
    id, 
    date, 
    YEAR(date) AS year,
    MONTH(date) AS month,
    DAY(date) AS day 
FROM orders;

- Task 2

SELECT 
    id, 
    date, 
    DATE_ADD(date, INTERVAL 1 DAY) AS changed_date
FROM orders;

- Task 3

SELECT 
    id, 
    date, 
    UNIX_TIMESTAMP(date) AS timestamp
FROM orders;

- Task 4

SELECT 
    COUNT(*) as row_count
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

- Task 5

SELECT 
    id, 
    date, 
    JSON_OBJECT('id', id, 'date', date) AS json_object
FROM orders;