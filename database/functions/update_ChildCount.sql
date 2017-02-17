DROP FUNCTION IF EXISTS update_ChildCount;
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `update_ChildCount`(`depthId` INT(11)) RETURNS INT(11) 
BEGIN
    DECLARE _oldCount INT(11);
    DECLARE _newCount INT(11);
    DECLARE count INT(11);
    DECLARE counter INT(11);
    
	SET _newCount = (SELECT SUM(get_DescendantCount(s.child, s.depth)) AS count
						FROM   _selectedhierarchy s
						WHERE EXISTS (SELECT 1 
										   FROM   _currentchild c
										   WHERE  s.depth = c.depth)
						AND s.depth = depthId
						GROUP BY s.depth);
	SET _oldCount = (SELECT old_count FROM _currentchild WHERE depth = depthId);
	SET count = (SELECT new_count FROM _currentchild WHERE depth = depthId);
    
	IF _oldCount != _newCount
		THEN
			UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE depth = depthId;
			SET counter = 1;
	ELSE
		SET counter = 0;
	END IF;
    
    RETURN counter;
END$$
DELIMITER ;
