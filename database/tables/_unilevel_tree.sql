DROP TABLE IF EXISTS `_unilevel_tree`;
CREATE TABLE IF NOT EXISTS `_unilevel_tree` (
  `child` INT NOT NULL,
  `depth` INT NULL,
  `full_name` VARCHAR(150) NULL,
  `entered_on` DATE NULL,
  `amount` INT(11) NULL,
  `rebate_count` INT(11) NULL,
  `rebate` INT(11) NULL,
  PRIMARY KEY (`child`));

ALTER TABLE `_unilevel_tree` 
CHANGE COLUMN `child` `child` INT(11) NULL ,
ADD COLUMN `id` INT NOT NULL AUTO_INCREMENT FIRST,
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`);
