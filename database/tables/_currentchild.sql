DROP TABLE IF EXISTS `_currentchild`;
CREATE TABLE IF NOT EXISTS `_currentchild` (
  `id` INT NOT NULL AUTO_INCREMENT,	
  `depth` INT NOT NULL,
  `parent` INT NOT NULL,
  `old_count` INT NULL DEFAULT 0,
  `new_count` INT NULL DEFAULT 0,
  PRIMARY KEY (`id`));
