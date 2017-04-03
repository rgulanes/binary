DROP PROCEDURE IF EXISTS update_UniLevel;
-- CALL update_UniLevel();
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_UniLevel`()
BEGIN    
    DECLARE cnt INT(11);
    DECLARE maxSize INT(11);
    DECLARE fName VARCHAR(100);
    DECLARE sponsorBy INT(11);
    
    TRUNCATE TABLE unilevel_tree;
    
    SET maxSize = (SELECT COUNT(*) FROM users WHERE user_name NOT IN ('admin'));
    SET cnt = 2;

    WHILE cnt <= maxSize DO
		SET fName = (SELECT CONCAT(first_name, ' ', last_name) FROM users WHERE user_id = cnt );
        SET sponsorBy = (SELECT sponsor_by FROM users WHERE user_id = cnt );
        
        CALL add_userUnilevel(sponsorBy, cnt, fName);
        SET cnt = cnt + 1;
    END WHILE;
    
    CALL get_UnilevelHierarchy(2);
END$$
DELIMITER ;
