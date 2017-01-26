DROP PROCEDURE IF EXISTS add_userDownlines;
DELIMITER $$

# CALL add_userDownlines(15);
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_userDownlines`(IN parentId INT(11), IN childId INT(11), IN _position VARCHAR(100), IN createdBy VARCHAR(100))
BEGIN
	DECLARE userId VARCHAR(100);
    DECLARE _depth INT(11);
    
    IF createdBy = '' THEN 
		SET userId = 'SystemCreate';
	ELSE
		SET userId = (SELECT user_name FROM users WHERE user_id = createdBy);
	END IF;
    
    IF (SELECT COALESCE(depth, 0) FROM hierarchy WHERE parent = parentId ORDER BY datetime DESC LIMIT 1) IS NULL
    THEN
		SET _depth = 0;
		INSERT INTO hierarchy (parent, child, depth, position, created_by, datetime) 
			VALUES (parentId, childId, (_depth), _position, userId, NOW());
	ELSE
		#SET _depth = (SELECT COALESCE(depth, 0) FROM hierarchy WHERE parent = parentId ORDER BY datetime DESC LIMIT 1);
		INSERT INTO hierarchy (parent, child, depth, position, created_by, datetime)
			SELECT parent, childId, 
            CASE WHEN
			depth <> 0	THEN (((SELECT COALESCE(depth, 0) FROM hierarchy WHERE child = parentId ORDER BY datetime DESC LIMIT 1)) + 1)
			ELSE 1 END
            , _position, userId, NOW() FROM hierarchy
				WHERE child = parentId;
	END IF;
END$$
DELIMITER ;
