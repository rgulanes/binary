DROP TABLE IF EXISTS `luyabaya_tree`;
CREATE TABLE IF NOT EXISTS `luyabaya_tree` (
  `child` INT NOT NULL,
  `depth` INT NULL,
  `full_name` VARCHAR(150) NULL,
  `parent` INT NULL,
  `position` VARCHAR(100) NULL,
  PRIMARY KEY (`child`));

ALTER TABLE `luyabaya_tree` 
CHANGE COLUMN `child` `child` INT(11) NULL ,
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);
