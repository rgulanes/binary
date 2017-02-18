DROP TABLE IF EXISTS `request_withdrawal`;
CREATE TABLE IF NOT EXISTS `request_withdrawal` (
  `request_withdrawal_id` INT NOT NULL AUTO_INCREMENT,
  `amount` varchar(100) NOT NULL,
  `date_requested` varchar(100) NOT NULL,
  `user_id` INT NOT NULL,
  `status` INT NOT NULL,
  PRIMARY KEY (`request_withdrawal_id`)
);