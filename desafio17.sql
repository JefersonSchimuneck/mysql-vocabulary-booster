USE w3schools;
DELIMITER $$

CREATE TRIGGER update_orders_after_insert
BEFORE INSERT ON orders FOR EACH ROW
BEGIN
SET NEW.OrderDate = DATE(NOW());
END $$

DELIMITER ;
