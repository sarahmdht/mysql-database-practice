-- Users table data
INSERT INTO Users (name, email, password) VALUES
    ('Sara Ahmed', 'sara@example.com', 'password123'),
    ('Ali Hassan', 'ali@example.com', 'securePass!'),
    ('Layla Omar', 'layla@example.com', 'mySecret789'),
    ('Sally Ebeid', 'sally@example.com', '********'),
    ('Yusuf Mohamed', 'yusuf@example.com', 'my5password');

-- Orders table data
INSERT INTO Orders (user_id, order_date, total_amount) VALUES 
    (1, '2024-11-20', 150.75), 
    (2, '2024-11-21', 220.40), 
    (1, '2024-11-22', 75.00),
    (3, '2024-10-23', 200.00),
    (4, '2024-12-4', 320.50);

-- Products data
INSERT INTO Products (name, description, price, stock) VALUES
('iPhone 14', 'smartphone from Apple', 999.99, 10),
('Samsung S22', 'Flipphone', 850.00, 5),
('Dell Laptop', '7th generation corei', 250.00, 10),
('Wireless Earbuds', 'Clear sound with noise cancellation', 150.75, 20),
('Smart Watch', 'can be used with any android phone', 250.00, 7);


-- Order_items data
INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES 
(1, 1, 1, 999.99),
(1, 5, 1, 250.00),
(2, 2, 2, 850.00),
(2, 4, 1, 150.75),
(3, 5, 1, 250.00),
(3, 4, 1, 150.75),
(3, 3, 1, 699.50),
(1, 3, 1, 699.50);
