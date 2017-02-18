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

END$$
DELIMITER ;
