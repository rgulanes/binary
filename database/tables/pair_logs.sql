DROP TABLE IF EXISTS `pair_logs`;
CREATE TABLE IF NOT EXISTS `pair_logs` (
  `user_id` INT NOT NULL,
  `log_count` INT NULL DEFAULT 0,
  `date_generated` DATE NULL DEFAULT 0);