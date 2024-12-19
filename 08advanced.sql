-- Task 1: Group orders by user_id and show the total revenue for each user.
SELECT Orders.user_id, 
       SUM(Orders.total_amount) AS total_revenue
FROM Orders
GROUP BY Orders.user_id;

-- Task 2: Count how many orders each user has placed.
SELECT Orders.user_id, 
       COUNT(Orders.id) AS total_orders
FROM Orders
GROUP BY Orders.user_id;

-- Task 3: Select all users who have placed more than 3 orders.
SELECT Orders.user_id, 
       COUNT(Orders.id) AS total_orders
FROM Orders
GROUP BY Orders.user_id
HAVING COUNT(Orders.id) > 3;

-- Task 4: Count how many times each product has been ordered (use GROUP BY).
SELECT Order_Items.product_id, 
       COUNT(Order_Items.product_id) AS times_ordered
FROM Order_Items
GROUP BY Order_Items.product_id;

-- Task 5: Show the most ordered product (hint: use ORDER BY and LIMIT 1).
SELECT Order_Items.product_id, 
       COUNT(Order_Items.product_id) AS times_ordered
FROM Order_Items
GROUP BY Order_Items.product_id
ORDER BY times_ordered DESC
LIMIT 1;

