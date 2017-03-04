DROP PROCEDURE IF EXISTS add_userDownlines;
DELIMITER $$

# CALL add_userDownlines(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_userDownlines`(IN parentId INT(11), IN childId INT(11), IN _position VARCHAR(100), IN _pos VARCHAR(100), IN createdBy VARCHAR(100))
BEGIN
	DECLARE userId VARCHAR(100);
    DECLARE _depth INT(11);
    
    IF createdBy = '' THEN 
		SET userId = 'SystemCreate';
	ELSE
		SET userId = (SELECT user_name FROM users WHERE user_id = createdBy);
	END IF;
    
    INSERT INTO hierarchy (parent, child, depth, position, m_position, created_by, datetime)
	SELECT parent, childId, depth+1, _position, _pos, userId, NOW() FROM hierarchy
		WHERE child = parentId
	UNION ALL SELECT childId, childId, 0, _position, _pos, userId, NOW();
END$$
DELIMITER ;
