DROP PROCEDURE IF EXISTS generate_userCommission;
DELIMITER $$

# CALL generate_userCommission(2);
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_userCommission`(IN userId INT)
BEGIN
	DECLARE maxDepth INT(11);
    DECLARE _depth INT(11);
    DECLARE _check INT(11);
    DECLARE _position VARCHAR(100);
    DECLARE _children INT(11);

	DROP TEMPORARY TABLE IF EXISTS _userCommissions;
	CREATE TEMPORARY TABLE IF NOT EXISTS _userCommissions AS (
	SELECT *, get_DescendantCount(child) AS child_count FROM _selectedhierarchy);
    
    SET _depth = (SELECT MAX(depth) FROM _userCommissions);
    SET maxDepth = 0;
    
    WHILE _depth >= maxDepth DO
		SET _check = (SELECT  MOD(SUM(child_count), 2) FROM _userCommissions WHERE depth = _depth);
        SET _position = (SELECT  GROUP_CONCAT( position ORDER BY position SEPARATOR ', ') FROM _userCommissions WHERE depth = _depth);
        SET _children = (SELECT SUM(child_count) FROM _userCommissions WHERE depth = _depth);
        
        -- SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth FROM _userCommissions WHERE depth = _depth;
        IF _depth = 0 AND _position = 'parent'
			THEN
				SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position,
					CASE WHEN child_count = 2
						THEN
							'Add Commission'
					ELSE
						'Commission has been added'
					END AS commissioned FROM _userCommissions WHERE depth = _depth;
        ELSEIF _depth = 1 AND _check = 0
			THEN
                SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, _children FROM _userCommissions WHERE depth = _depth;
                
                IF _position = 'left, right' AND _children = 2
					THEN
						SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position FROM _userCommissions WHERE child_count = 1 AND depth = _depth;
				ELSEIF _position != 'left, right' AND _children = 2
					THEN
						SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position FROM _userCommissions WHERE child_count = 1 AND depth = _depth;
				ELSE
					SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position FROM _userCommissions WHERE child_count = 2 AND depth = _depth;
                END IF;
                
		ELSEIF _check = 0 AND _depth NOT IN (0,1)
			THEN
                SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position, _children FROM _userCommissions WHERE depth = _depth;
                
                IF _position = 'left, right'
					THEN
						SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position FROM _userCommissions WHERE child_count = 1 AND depth = _depth;
				ELSE
					SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _position FROM _userCommissions WHERE child_count = 2 AND depth = _depth;
				END IF;
		ELSEIF _check = 1 AND _depth = 1
			THEN
			SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _children FROM _userCommissions WHERE child_count = 2 AND depth = _depth;
        ELSEIF _check = 1 AND _depth NOT IN (0,1)
			THEN
			SELECT  *, get_Parent(parent) AS parent_of_Parent, _depth, _children FROM _userCommissions WHERE child_count = 2 AND depth = _depth;
		END IF;
        
        SET _depth = _depth - 1;
	END WHILE;
    
    
END$$
DELIMITER ;
