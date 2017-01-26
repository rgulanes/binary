DROP TABLE IF EXISTS `hierarchy`;
CREATE TABLE IF NOT EXISTS `hierarchy` (
  `p_id` INT NOT NULL AUTO_INCREMENT,
  `parent` INT NULL,
  `child` INT NULL,
  `depth` INT NULL,
  `position` VARCHAR(45) NULL,
  `created_by` VARCHAR(45) NULL,
  `datetime` DATETIME NULL DEFAULT NOW(),
  PRIMARY KEY (`p_id`));
