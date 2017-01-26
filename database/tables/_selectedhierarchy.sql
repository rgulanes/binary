DROP TABLE IF EXISTS `_selectedhierarchy`;
CREATE TABLE IF NOT EXISTS `_selectedhierarchy` (
  `child` INT NOT NULL,
  `depth` INT NULL,
  `full_name` VARCHAR(150) NULL,
  `parent` INT NULL,
  `position` VARCHAR(100) NULL,
  PRIMARY KEY (`child`));

ALTER TABLE `_selectedhierarchy` 
CHANGE COLUMN `child` `child` INT(11) NULL ,
ADD COLUMN `_id` INT NOT NULL AUTO_INCREMENT FIRST,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`_id`);
