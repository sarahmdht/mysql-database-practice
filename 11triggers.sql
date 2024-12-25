-- Task 1: Write a trigger that updates the stock in the Products table when a new Order_Item is added.
DELIMITER $$

CREATE TRIGGER update_stock_after_order
AFTER INSERT ON Order_Items
FOR EACH ROW
BEGIN
    -- Update the stock in the Products table
    UPDATE Products
    SET stock = stock - NEW.quantity
    WHERE id = NEW.product_id;
END$$

DELIMITER ;

-- Task 2: Write a procedure that takes a user's ID as input and returns all the orders for that user.
DELIMITER $$

CREATE PROCEDURE GetUserOrders(IN userID INT)
BEGIN
    SELECT * 
    FROM Orders
    WHERE user_id = userID;
END$$

DELIMITER ;

-- Task 3: Write a trigger to prevent a user from being deleted if they have active orders.
DELIMITER $$

CREATE TRIGGER PreventUserDeletion
BEFORE DELETE ON Users
FOR EACH ROW
BEGIN
    DECLARE activeOrderCount INT;
    
    -- Check if the user has active orders
    SELECT COUNT(*) INTO activeOrderCount
    FROM Orders
    WHERE user_id = OLD.id;

    -- If active orders exist, throw an error
    IF activeOrderCount > 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete user with active orders.';
    END IF;
END$$

DELIMITER ;
