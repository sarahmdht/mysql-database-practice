-- Task 1: Select all orders and the names of the users who placed them (use INNER JOIN).
SELECT Orders.id AS order_id, 
       Users.name AS user_name, 
       Orders.order_date, 
       Orders.total_amount 
FROM Orders 
INNER JOIN Users 
    ON Orders.user_id = Users.id;

-- Task 2: List all products along with the order in which they appear (if they exist) in Order_Items (use LEFT JOIN).
SELECT Products.id AS product_id, 
       Products.name AS product_name, 
       Order_Items.order_id, 
       Order_Items.quantity, 
       Order_Items.price 
FROM Products 
LEFT JOIN Order_Items 
    ON Products.id = Order_Items.product_id;


SELECT Users.id AS user_id, 
       Users.name AS user_name, 
       Users.email 
FROM Users 
LEFT JOIN Orders 
    ON Users.id = Orders.user_id 
WHERE Orders.id IS NULL;

SELECT Orders.id AS order_id, 
       Orders.user_id, 
       Orders.order_date, 
       SUM(Order_Items.price * Order_Items.quantity) AS total_price 
FROM Orders 
JOIN Order_Items 
    ON Orders.id = Order_Items.order_id 
GROUP BY Orders.id, Orders.user_id, Orders.order_date;

-- Task 5: Create a report that shows each user and the number of orders they have made.
SELECT Users.id AS user_id, 
       Users.name, 
       COUNT(Orders.id) AS no_of_orders
FROM Users 
LEFT JOIN Orders 
    ON Users.id = Orders.user_id 
GROUP BY Users.id, Users.name;


