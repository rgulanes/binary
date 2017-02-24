DROP TABLE IF EXISTS `product_purchase`;
CREATE TABLE IF NOT EXISTS `product_purchase` (
  `product_purchase_id` INT NOT NULL AUTO_INCREMENT,
  `amount` varchar(100) NOT NULL,
  `date_purchase` date NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`product_purchase_id`)
);
