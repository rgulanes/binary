DROP PROCEDURE IF EXISTS update_ChildCount;
-- CALL update_ChildCount(2)
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_ChildCount`(IN `parentId` INT(11))
BEGIN
    DECLARE _oldCount INT(11);
    DECLARE _newCount INT(11);
    DECLARE count INT(11);

	SET _newCount = (SELECT COUNT(*) AS descendant_count
				FROM _selectedhierarchy AS c
					INNER JOIN users AS u ON (u.user_id = c.child)
				WHERE c.m_parent = parentId AND depth != 0);
                
	SET _oldCount = (SELECT old_count FROM _currentchild WHERE parent = parentId);
	SET count = (SELECT new_count FROM _currentchild WHERE parent = parentId);
    
    IF _oldCount != _newCount
		THEN
			IF _newCount != count
				THEN
					UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE parent = parentId;
			ELSEIF _oldCount < _newCount
				THEN
					UPDATE _currentchild SET old_count = count, new_count = _newCount WHERE parent = parentId;
            END IF;
	END IF;
    
END$$
DELIMITER ;
