-- Task 1: Select all users from the Users table.
SELECT * FROM Users;

-- Task 2: Select all products with a price greater than $50.
SELECT * FROM Products
WHERE price > 50;

-- Task 3: Select the total number of users from the Users table.
SELECT COUNT(*) FROM Users;

-- Task 4: Select products that have "Phone" in their name.
SELECT * FROM Products
WHERE name LIKE '%Phone%';

-- Task 5: Select orders placed in the last 30 days.
SELECT * FROM Orders
WHERE order_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY)
ORDER BY order_date DESC;

