CREATE TABLE IF NOT EXISTS `withdrawal` (
  `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_user_id` int(11) DEFAULT NULL,
  `w_amount` float DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `date_create` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`withdrawal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
