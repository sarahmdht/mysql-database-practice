-- Users Table
CREATE TABLE Users(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50), 
    email VARCHAR(50), 
    password VARCHAR(50), 
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products Table
CREATE TABLE Products(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    name VARCHAR(50), 
    description LONGTEXT,
    price DECIMAL(10, 2),
    stock INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Orders Table
CREATE TABLE Orders(
    id INT AUTO_INCREMENT PRIMARY KEY, 
    user_id INT NOT NULL, 
    order_date DATE NOT NULL, 
    total_amount DECIMAL(10, 2) NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

-- Order Items Table
CREATE TABLE Order_Items(
    order_id INT NOT NULL, 
    product_id INT NOT NULL, 
    quantity INT NOT NULL DEFAULT 1 CHECK (quantity > 0), 
    price DECIMAL(10, 2) NOT NULL CHECK (price > 0), 
    PRIMARY KEY (order_id, product_id), 
    FOREIGN KEY (order_id) REFERENCES Orders(id), 
    FOREIGN KEY (product_id) REFERENCES Products(id)
);