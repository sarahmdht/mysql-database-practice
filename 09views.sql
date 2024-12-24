-- Task 1: Create a view called user_orders that shows all orders along with the user names.
CREATE VIEW user_orders AS
SELECT Orders.id AS order_id,
       Orders.user_id,
       Users.name AS user_name,
       Orders.order_date,
       Orders.total_amount
FROM Orders
INNER JOIN Users ON Orders.user_id = Users.id;

-- Task 2: Create a view called order_summary that shows each order’s total price and number of items.
CREATE VIEW order_summary AS
SELECT 
    Orders.id AS order_id,
    SUM(Order_Items.price * Order_Items.quantity) AS total_price,
    SUM(Order_Items.quantity) AS total_items
FROM Orders
JOIN Order_Items ON Orders.id = Order_Items.order_id
GROUP BY Orders.id;

-- Task 3: Select from the user_orders view to show only orders placed by a specific user.
SELECT * 
FROM user_orders
WHERE user_id = 4;

