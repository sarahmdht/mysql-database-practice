 MySQL practice tasks to help you strengthen your SQL skills. The tasks range from basic to advanced concepts, covering CRUD, joins, subqueries, and more.

## 1.&2. Database Creation & Table Design
Task 1: Create a database named ecommerce.
Task 2: Create the following tables with proper data types and primary keys:
Users: id, name, email, password, created_at
Products: id, name, description, price, stock, created_at
Orders: id, user_id, order_date, total_amount
Order_Items: id, order_id, product_id, quantity, price
Challenge: Create the necessary foreign key constraints (e.g., user_id in Orders references id in Users).

## 3. Data Insertion & Modification
Task 1: Insert 5 users into the Users table.
Task 2: Insert 5 products into the Products table.
Task 3: Insert 3 orders for users, and each order should have at least 2 items (populate the Order_Items table).
Task 4: Update the stock of one of the products.
Task 5: Delete a user from the Users table and ensure their associated orders are also deleted.
Challenge: Write a single SQL statement to insert multiple rows at once (bulk insert).

## 4. Select Queries (Basic)
Task 1: Select all users from the Users table.
Task 2: Select all products with a price greater than $50.
Task 3: Select the total number of users from the Users table.
Task 4: Select products that have "Phone" in their name.
Task 5: Select orders placed in the last 30 days.
Challenge: Select the first 3 users who signed up (use LIMIT).

## 5. Aggregation (SUM, AVG, COUNT, MAX, MIN)
Task 1: Count the total number of orders in the Orders table.
Task 2: Calculate the total revenue from all orders (use SUM).
Task 3: Calculate the average product price in the Products table.
Task 4: Find the most expensive product in the Products table.
Task 5: Count the number of products that are out of stock (stock = 0).
Challenge: Find the user who has spent the most money on orders.

## 6. Joins (INNER, LEFT, RIGHT, FULL OUTER)
Task 1: Select all orders and the names of the users who placed them (use INNER JOIN).
Task 2: List all products along with the order in which they appear (if they exist) in Order_Items (use LEFT JOIN).
Task 3: Get a list of users who have NOT placed an order (use LEFT JOIN and check for NULL).
Task 4: Get a list of all orders and their total price.
Task 5: Create a report that shows each user and the number of orders they have made.
Challenge: Write a query that lists users along with the total amount they have spent on orders.

## 7. Subqueries
Task 1: Select all users who have placed an order worth more than $500 (use WHERE IN with a subquery).
Task 2: Select the names of products that have been ordered more than 10 times.
Task 3: Select the product with the second-highest price.
Task 4: Select all orders that contain a product whose price is higher than the average product price.
Task 5: Find all users who have never placed an order (without using JOINs).
Challenge: Write a query to select the name of the user who has made the largest total purchase amount.

## 8. Advanced Queries (GROUP BY, HAVING)
Task 1: Group orders by user_id and show the total revenue for each user.
Task 2: Count how many orders each user has placed.
Task 3: Select all users who have placed more than 3 orders.
Task 4: Count how many times each product has been ordered (use GROUP BY).
Task 5: Show the most ordered product (hint: use ORDER BY and LIMIT 1).
Challenge: Show users who spent more than $1000 in total on orders.

## 9. Views
Task 1: Create a view called user_orders that shows all orders along with the user names.
Task 2: Create a view called order_summary that shows each order’s total price and number of items.
Task 3: Select from the user_orders view to show only orders placed by a specific user.
Challenge: Create a view that shows the top 3 products that have been ordered the most.

## 10. Indexes & Performance
Task 1: Create an index on the email column in the Users table.
Task 2: Create a composite index on the Order_Items table for the order_id and product_id columns.
Task 3: Compare query execution time before and after creating indexes.
Challenge: Write an explanation of when you should use indexes and when you should avoid them.

## 11. Triggers & Procedures
Task 1: Write a trigger that updates the stock in the Products table when a new Order_Item is added.
Task 2: Write a procedure that takes a user's ID as input and returns all the orders for that user.
Task 3: Write a trigger to prevent a user from being deleted if they have active orders.
Challenge: Create a procedure that generates a monthly sales report and inserts it into a Reports table.

## 12. Export & Import
Task 1: Export the entire ecommerce database to an SQL file.
Task 2: Import an existing SQL file to recreate the database.
Challenge: Write a simple bash script that exports the ecommerce database every day at midnight.