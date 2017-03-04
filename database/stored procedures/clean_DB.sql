DROP PROCEDURE IF EXISTS clean_DB;
DELIMITER $$

# CALL clean_DB();
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_DB`()
BEGIN
	
	DECLARE cnt INT(11);
    DECLARE insert_id INT(11);
    
	TRUNCATE TABLE users;
	TRUNCATE TABLE position;
	TRUNCATE TABLE codes;
	TRUNCATE TABLE commission;
	TRUNCATE TABLE withdrawal;
	TRUNCATE TABLE hierarchy;
	TRUNCATE TABLE _selectedhierarchy;
    TRUNCATE TABLE _currentchild;
    TRUNCATE TABLE request_withdrawal;

	INSERT INTO `users`
	(`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`)
	VALUES
	(1, 'admin', '12345', 'Luyabaya', 'Admin', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', NOW(), '', 1, 'luyabaya@gmail.com', ''),
	(2, 'luyabaya1', '12345', 'Luyabaya', '1', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', NOW(), '1', 0, 'luyabaya@gmail.com', '2');

	INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES (1, '2', '', '', '2', '2');
	INSERT INTO `hierarchy` (`p_id`,`parent`,`child`,`depth`,`position`, `created_by`,`datetime`) VALUES (1,2,2, 0,'parent','SystemCreate', NOW());
    
    SET cnt = 2;
    WHILE cnt <= 7 DO
			INSERT INTO `users`
				(`user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`)
			VALUES
				(CONCAT('luyabaya', cnt), '12345', 'Luyabaya', cnt, 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', NOW(), '1', 0, CONCAT('luyabaya', cnt, '@gmail.com'), '2');
			
            SET insert_id = LAST_INSERT_ID();
            INSERT INTO `position` (`user_id`, `position_left`, `position_right`, `sponsor_by`) VALUES (insert_id, '', '', '2');
            INSERT INTO `commission` (`c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('2', '50', insert_id, NULL, 'referral', NOW());
			INSERT INTO `hierarchy` (`parent`,`child`,`depth`,`position`, `created_by`,`datetime`) VALUES (cnt,cnt, 0,'parent','SystemCreate', NOW());
        SET cnt = cnt + 1;
    END WHILE;
    
    UPDATE position SET position_left = 3, position_right = 4, upline = 2 WHERE user_id = 2;
	UPDATE position SET position_left = 5, position_right = 6, upline = 3 WHERE user_id = 3;
	UPDATE position SET position_left = 7, position_right = 8, upline = 4 WHERE user_id = 4;
    
    -- CALL add_userDownlines('parent_id', 'child_id', 'position', 'main_position', 'system')
    CALL add_userDownlines(2, 3, 'left', 'left', '');
    CALL add_userDownlines(2, 4, 'right', 'right', '');
    CALL add_userDownlines(3, 5, 'left', 'left', '');
    CALL add_userDownlines(3, 6, 'right', 'left', '');
    CALL add_userDownlines(4, 7, 'left', 'right', '');
    CALL add_userDownlines(4, 8, 'right', 'right', '');
END$$
DELIMITER ;
