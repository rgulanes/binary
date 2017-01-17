DROP PROCEDURE IF EXISTS add_userCommission;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_userCommission`(IN userId INT, IN amount FLOAT, IN _desc VARCHAR(45))
BEGIN
	INSERT INTO commission (c_user_id, c_amount, remarks, date_create) VALUES(userId, amount, _desc, NOW());
END$$
DELIMITER ;
