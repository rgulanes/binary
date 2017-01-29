DROP PROCEDURE IF EXISTS clean_DB;
DELIMITER $$

# CALL clean_DB();
CREATE DEFINER=`root`@`localhost` PROCEDURE `clean_DB`()
BEGIN

	TRUNCATE TABLE users;
	TRUNCATE TABLE position;
	TRUNCATE TABLE codes;
	TRUNCATE TABLE commission;
	TRUNCATE TABLE withdrawal;
	TRUNCATE TABLE hierarchy;
	TRUNCATE TABLE _selectedhierarchy;

	INSERT INTO `users`
	(`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`)
	VALUES
	(1, 'admin', '12345', 'Luyabaya', 'Admin', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2016-12-23 05:50:47', '', 1, 'luyabaya@gmail.com', ''),
	(2, 'luyabaya', '12345', 'Luyabaya', 'Sponsor', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2016-12-23 05:50:47', '1', 0, 'luyabaya@gmail.com', '2');

	INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES (1, '2', '', '', '2', '2');
	INSERT INTO `hierarchy` (`p_id`,`parent`,`child`,`depth`,`position`, `created_by`,`datetime`) VALUES (1,2,2, 0,'parent','SystemCreate', NOW());

END$$
DELIMITER ;
