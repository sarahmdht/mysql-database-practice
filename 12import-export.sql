-- Task 1: Export the entire ecommerce database to an SQL file.
mysqldump -u your_username -p ecommerce > ecommerce.sql

-- Task 2: Import an existing SQL file to recreate the database.
CREATE DATABASE new_database;

USE new_database;

mysql -u your_username -p new_database < ecommerce.sql
