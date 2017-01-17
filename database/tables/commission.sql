CREATE TABLE IF NOT EXISTS `commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_user_id` int(11) DEFAULT NULL,
  `c_amount` float DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `date_create` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
