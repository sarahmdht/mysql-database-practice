--Task 1: Count the total number of orders in the Orders table.
SELECT COUNT(*) FROM Orders;

--Task 2: Calculate the total revenue from all orders (use SUM).
SELECT SUM(total_amount) FROM Orders;

--Task 3: Calculate the average product price in the Products table.
SELECT AVG(price) FROM products;

--Task 4: Find the most expensive product in the Products table.
SELECT MAX(price) FROM products;

--Task 5: Count the number of products that are out of stock (stock = 0).
SELECT COUNT(*) AS out_of_stock FROM Products
WHERE stock = 0;
