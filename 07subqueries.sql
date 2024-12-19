-- Task 1: Select all users who have placed an order worth more than $500 (use WHERE IN with a subquery).
SELECT name, id 
FROM Users 
WHERE id IN (
    SELECT user_id 
    FROM Orders 
    WHERE total_amount > 500
);

-- Task 2: Select the names of products that have been ordered more than 10 times.
SELECT name 
FROM Products 
WHERE id IN (
    SELECT product_id 
    FROM Order_Items 
    GROUP BY product_id 
    HAVING COUNT(product_id) > 10
);

-- Task 3: Select the product with the second-highest price.
SELECT name, price 
FROM Products 
WHERE price < (
    SELECT MAX(price) 
    FROM Products
)
ORDER BY price DESC 
LIMIT 1;

-- Task 4: Select all orders that contain a product whose price is higher than the average product price.
SELECT DISTINCT Orders.id, Orders.user_id, Orders.order_date, Orders.total_amount 
FROM Orders
INNER JOIN Order_Items ON Orders.id = Order_Items.order_id
INNER JOIN Products ON Order_Items.product_id = Products.id
WHERE Products.price > (
    SELECT AVG(price) FROM Products
);

-- Task 5: Find all users who have never placed an order (without using JOINs).
SELECT * 
FROM Users 
WHERE id NOT IN (
    SELECT user_id 
    FROM Orders
);
