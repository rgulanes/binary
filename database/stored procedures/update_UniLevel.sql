DROP PROCEDURE IF EXISTS update_UniLevel;
-- CALL update_UniLevel();
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_UniLevel`()
BEGIN
    TRUNCATE TABLE _unilevel_tree;
    TRUNCATE TABLE unilevel_tree;
    
    SELECT add_userUnilevel(sponsor_by, user_id, COALESCE(first_name, ' ', last_name)) FROM users;
    
    CALL get_UnilevelHierarchy(2);
END$$
DELIMITER ;
