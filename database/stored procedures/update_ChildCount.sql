DROP PROCEDURE IF EXISTS update_ChildCount;
-- CALL update_ChildCount(1)
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_ChildCount`(IN `depthId` INT(11))
BEGIN
    DECLARE _oldCount INT(11);
    DECLARE _newCount INT(11);
    DECLARE count INT(11);
    DECLARE _maxChild INT(11);

    SET _maxChild = (SELECT POW(2, ( depth + 1)) FROM _selectedhierarchy WHERE depth = depthId GROUP BY depth);
    
	SET _newCount = (SELECT SUM(get_DescendantCount(s.child, s.depth)) AS count
						FROM   _selectedhierarchy s
						WHERE EXISTS (SELECT 1 
										   FROM   _currentchild c
										   WHERE  s.depth = c.depth)
						AND s.depth = depthId
						GROUP BY s.depth);
	SET _oldCount = (SELECT old_count FROM _currentchild WHERE depth = depthId);
	SET count = (SELECT new_count FROM _currentchild WHERE depth = depthId);
    
    IF _newCount = _maxChild
		THEN
			UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE depth = depthId;
	ELSEIF _oldCount != _newCount
		THEN
			IF _newCount != count
				THEN
					IF _newCount <= _maxChild AND count != _newCount
						THEN
							UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE depth = depthId;
					ELSEIF _newCount = _maxChild
						THEN
							UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE depth = depthId;
					END IF;
			ELSE
				IF _newCount <= _maxChild AND count != _newCount
					THEN
						UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE depth = depthId;
				ELSEIF _newCount = _maxChild
					THEN
						UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE depth = depthId;
				END IF;
			END IF;
	END IF;
    
END$$
DELIMITER ;
