-- Task 1: Create an index on the email column in the Users table.
CREATE INDEX idx_email ON Users(email);

-- Task 2: Create a composite index on the Order_Items table for the order_id and product_id columns.
CREATE INDEX idx_order_product ON Order_Items(order_id, product_id);

-- Task 3: Compare query execution time before and after creating indexes.
SET profiling = 1;
-- first test before creating the previous indexes or drop them
DROP INDEX idx_email ON Users;
DROP INDEX idx_order_product ON Order_Items;

SELECT * 
FROM Order_Items 
WHERE order_id = 1 AND product_id = 2;

SHOW PROFILES; --0.00062750

CREATE INDEX idx_order_product ON Order_Items(order_id, product_id);
CREATE INDEX idx_email ON Users(email);

SELECT * 
FROM Order_Items 
WHERE order_id = 1 AND product_id = 2;

SHOW PROFILES; --0.00088650 

-- time is supposed to be less after indexing 
-- but it may be higher in case of small databases where indexing is not meaningful
