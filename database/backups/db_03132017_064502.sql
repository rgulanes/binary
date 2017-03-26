#
# TABLE STRUCTURE FOR: _currentchild
#

DROP TABLE IF EXISTS `_currentchild`;

CREATE TABLE `_currentchild` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) NOT NULL,
  `old_count` int(11) DEFAULT '0',
  `new_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: _selectedhierarchy
#

DROP TABLE IF EXISTS `_selectedhierarchy`;

CREATE TABLE `_selectedhierarchy` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `child` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `m_position` varchar(50) DEFAULT NULL,
  `m_parent` int(10) DEFAULT NULL,
  `f_position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('1', '2', '0', 'Luyabaya 1', '2', 'parent', NULL, '2', 'parent');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('2', '3', '1', 'Luyabaya 2', '2', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('3', '4', '1', 'Luyabaya 3', '2', 'right', 'right', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('4', '5', '2', 'Luyabaya 4', '3', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('5', '6', '2', 'Luyabaya 5', '3', 'right', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('6', '7', '2', 'Luyabaya 6', '4', 'left', 'right', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('7', '8', '2', 'Luyabaya 7', '4', 'right', 'right', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('8', '16', '3', 'ARTHUR LAYNO', '5', 'right', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('9', '20', '3', 'HILARIO LLIDO', '8', 'left', 'left', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('10', '9', '3', 'John Jusi', '5', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('11', '21', '4', 'HILARIO LLIDO', '20', 'left', 'left', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('12', '18', '4', 'ARTHUR LAYNO', '16', 'right', 'right', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('13', '17', '4', 'Arthur Layno', '16', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('14', '10', '4', 'John Jusi', '9', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('15', '22', '4', 'HILARIO LLIDO', '20', 'right', 'right', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('16', '11', '4', 'John Jusi', '9', 'right', 'right', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('17', '23', '5', 'Arthur Layno', '18', 'right', 'right', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('18', '24', '5', 'HILARIO LLIDO', '21', 'left', 'left', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('19', '25', '5', 'HILARIO LLIDO', '21', 'right', 'right', '2', 'right');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('20', '19', '5', 'Arthur Layno', '17', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('21', '15', '5', 'John Jusi', '11', 'right', 'right', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('22', '14', '5', 'John Jusi', '11', 'left', 'right', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('23', '13', '5', 'John Jusi', '10', 'right', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('24', '12', '5', 'John Jusi', '10', 'left', 'left', '2', 'left');
INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('25', '26', '5', 'Arthur Laymo', '17', 'right', 'right', '2', 'left');


#
# TABLE STRUCTURE FOR: codes
#

DROP TABLE IF EXISTS `codes`;

CREATE TABLE `codes` (
  `code_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `generated_date` varchar(100) DEFAULT NULL,
  `generated_by` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `used_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('1', 'BuYxMTtzt1', '2017-03-10 12:02:50', '1', '1', '9');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('2', 'qZzczbJRH9', '2017-03-10 12:02:50', '1', '1', '10');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('3', 'nZnR5eEkZP', '2017-03-10 12:02:50', '1', '1', '11');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('4', 'MBkK86ECG8', '2017-03-10 12:02:50', '1', '1', '12');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('5', 'D68djHo2y6', '2017-03-10 12:02:50', '1', '1', '13');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('6', 'cV6zNcOswN', '2017-03-10 12:02:50', '1', '1', '14');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('7', 'iioC3xII9p', '2017-03-10 12:02:50', '1', '1', '15');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('8', 'o0xnqckG62', '2017-03-11 05:17:02', '1', '1', '16');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('9', 'ZsbLnMlLW6', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('10', '7c2yREq7xB', '2017-03-11 05:17:02', '1', '1', '17');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('11', 'XVCvj2HDIO', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('12', 'GIgRtEEPqA', '2017-03-11 05:17:02', '1', '1', '18');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('13', 'VxMY6DCwLa', '2017-03-11 05:17:02', '1', '1', '19');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('14', '8I6KdqMV3v', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('15', 'KJe0BIFfx5', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('16', 'QsCCrJf4f1', '2017-03-11 05:17:02', '1', '1', '25');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('17', 'eoJl8XLVTP', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('18', 'rDyFEanjqU', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('19', 'ogn1SOL8T0', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('20', '97pTtxRetK', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('21', '3UoCA2NXmd', '2017-03-11 05:17:02', '1', '1', '26');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('22', 'SLtgNm5yvY', '2017-03-11 05:17:02', '1', '1', '20');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('23', 'yE6XyzvpOZ', '2017-03-11 05:17:02', '1', '1', '21');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('24', '9RUyuuAhsX', '2017-03-11 05:17:02', '1', '1', '22');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('25', 'ulIYBvkG3P', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('26', 'FCuMA2l6sa', '2017-03-11 05:17:02', '1', '1', '24');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('27', '5C2ZawuLOW', '2017-03-11 05:17:02', '1', '1', '23');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('28', 'IjhqhTWCAZ', '2017-03-11 05:17:02', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('29', 'vIJEBBqQpz', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('30', '5gVsAeSu9Z', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('31', '2wwRRXCxCy', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('32', '27gMMRndHM', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('33', 'MN2IgDX877', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('34', '7aDE2uCF2e', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('35', 'd5luR8mel4', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('36', '18R4Q7HNgO', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('37', 'UoZx222FH5', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('38', 'TVafp2nMhI', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('39', 'QiQImGQ3u6', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('40', 'SovRWyUZdB', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('41', '47wfmWiJIz', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('42', 'rzRiidZ8gt', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('43', 'f8SK0PjUOw', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('44', 'wTE290ZrJI', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('45', '0bhRtA5sIm', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('46', 'WXvOIvE1qt', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('47', 'yXnc0wcZYW', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('48', 'HZ7ZRBzW4i', '2017-03-11 07:10:58', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('49', 'i0gNPYjt0K', '2017-03-11 07:10:58', '1', '0', NULL);


#
# TABLE STRUCTURE FOR: commission
#

DROP TABLE IF EXISTS `commission`;

CREATE TABLE `commission` (
  `commission_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_user_id` int(11) DEFAULT NULL,
  `c_amount` float DEFAULT NULL,
  `r_user_id` int(11) DEFAULT NULL,
  `depth` varchar(11) DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`commission_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('1', '2', '50', '3', NULL, 'referral', '2017-03-10 04:26:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('2', '2', '50', '4', NULL, 'referral', '2017-03-10 04:26:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('3', '2', '50', '5', NULL, 'referral', '2017-03-10 04:26:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('4', '2', '50', '6', NULL, 'referral', '2017-03-10 04:26:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('5', '2', '50', '7', NULL, 'referral', '2017-03-10 04:26:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('6', '2', '50', '8', NULL, 'referral', '2017-03-10 04:26:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('7', '2', '50', '9', NULL, 'referral', '2017-03-10 05:04:39');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('8', '9', '50', '10', NULL, 'referral', '2017-03-10 05:05:34');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('9', '9', '50', '11', NULL, 'referral', '2017-03-10 05:06:32');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('10', '9', '50', '12', NULL, 'referral', '2017-03-10 05:07:58');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('11', '9', '50', '13', NULL, 'referral', '2017-03-10 05:09:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('12', '9', '50', '14', NULL, 'referral', '2017-03-10 05:10:31');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('13', '9', '50', '15', NULL, 'referral', '2017-03-10 05:11:29');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('14', '2', '50', '16', NULL, 'referral', '2017-03-10 22:32:08');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('15', '16', '50', '17', NULL, 'referral', '2017-03-10 22:42:34');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('16', '16', '50', '18', NULL, 'referral', '2017-03-10 22:50:13');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('17', '16', '50', '19', NULL, 'referral', '2017-03-10 22:56:34');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('18', '8', '50', '20', NULL, 'referral', '2017-03-10 23:20:42');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('19', '20', '50', '21', NULL, 'referral', '2017-03-10 23:28:20');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('20', '20', '50', '22', NULL, 'referral', '2017-03-10 23:31:54');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('21', '16', '50', '23', NULL, 'referral', '2017-03-10 23:40:20');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('22', '21', '50', '24', NULL, 'referral', '2017-03-10 23:41:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('23', '21', '50', '25', NULL, 'referral', '2017-03-10 23:51:54');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('24', '17', '50', '26', NULL, 'referral', '2017-03-10 23:56:15');


#
# TABLE STRUCTURE FOR: hierarchy
#

DROP TABLE IF EXISTS `hierarchy`;

CREATE TABLE `hierarchy` (
  `p_id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` int(11) DEFAULT NULL,
  `child` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `position` varchar(45) DEFAULT NULL,
  `m_position` varchar(45) DEFAULT NULL,
  `created_by` varchar(45) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=518 DEFAULT CHARSET=latin1;

INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1', '2', '2', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('2', '2', '2', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('3', '3', '3', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('4', '4', '4', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('5', '5', '5', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('6', '6', '6', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('7', '7', '7', '0', 'parent', NULL, 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('8', '2', '3', '1', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('9', '2', '3', '1', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('10', '2', '3', '1', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('11', '3', '3', '0', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('15', '2', '4', '1', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('16', '2', '4', '1', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('17', '2', '4', '1', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('18', '4', '4', '0', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('22', '3', '5', '1', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('23', '3', '5', '1', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('24', '2', '5', '2', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('25', '2', '5', '2', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('26', '2', '5', '2', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('27', '3', '5', '1', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('28', '5', '5', '0', 'left', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('29', '3', '6', '1', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('30', '3', '6', '1', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('31', '2', '6', '2', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('32', '2', '6', '2', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('33', '2', '6', '2', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('34', '3', '6', '1', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('35', '6', '6', '0', 'right', 'left', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('36', '4', '7', '1', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('37', '4', '7', '1', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('38', '2', '7', '2', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('39', '2', '7', '2', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('40', '2', '7', '2', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('41', '4', '7', '1', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('42', '7', '7', '0', 'left', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('43', '4', '8', '1', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('44', '4', '8', '1', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('45', '2', '8', '2', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('46', '2', '8', '2', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('47', '2', '8', '2', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('48', '4', '8', '1', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('49', '8', '8', '0', 'right', 'right', 'SystemCreate', '2017-03-10 04:26:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('50', '9', '9', '1', 'parent', '', 'john1', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('51', '9', '9', '0', 'parent', '', 'john1', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('53', '5', '9', '1', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('54', '5', '9', '1', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('55', '3', '9', '2', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('56', '3', '9', '2', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('57', '2', '9', '3', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('58', '2', '9', '3', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('59', '2', '9', '3', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('60', '3', '9', '2', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('61', '5', '9', '1', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('62', '9', '9', '0', 'left', 'left', 'luyabaya4', '2017-03-10 05:04:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('68', '10', '10', '1', 'parent', '', 'john2', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('69', '10', '10', '0', 'parent', '', 'john2', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('71', '9', '10', '1', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('72', '9', '10', '2', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('73', '9', '10', '1', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('74', '5', '10', '2', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('75', '5', '10', '2', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('76', '3', '10', '3', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('77', '3', '10', '3', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('78', '2', '10', '4', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('79', '2', '10', '4', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('80', '2', '10', '4', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('81', '3', '10', '3', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('82', '5', '10', '2', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('83', '9', '10', '1', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('84', '10', '10', '0', 'left', 'left', 'john1', '2017-03-10 05:05:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('86', '11', '11', '1', 'parent', '', 'john3', '2017-03-10 05:06:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('87', '11', '11', '0', 'parent', '', 'john3', '2017-03-10 05:06:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('89', '9', '11', '1', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('90', '9', '11', '2', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('91', '9', '11', '1', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('92', '5', '11', '2', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('93', '5', '11', '2', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('94', '3', '11', '3', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('95', '3', '11', '3', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('96', '2', '11', '4', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('97', '2', '11', '4', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('98', '2', '11', '4', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('99', '3', '11', '3', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('100', '5', '11', '2', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('101', '9', '11', '1', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('102', '11', '11', '0', 'right', 'right', 'john1', '2017-03-10 05:06:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('104', '12', '12', '1', 'parent', '', 'john4', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('105', '12', '12', '0', 'parent', '', 'john4', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('107', '10', '12', '1', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('108', '10', '12', '2', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('109', '10', '12', '1', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('110', '9', '12', '2', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('111', '9', '12', '3', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('112', '9', '12', '2', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('113', '5', '12', '3', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('114', '5', '12', '3', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('115', '3', '12', '4', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('116', '3', '12', '4', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('117', '2', '12', '5', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('118', '2', '12', '5', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('119', '2', '12', '5', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('120', '3', '12', '4', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('121', '5', '12', '3', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('122', '9', '12', '2', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('123', '10', '12', '1', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('124', '12', '12', '0', 'left', 'left', 'john2', '2017-03-10 05:07:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('138', '13', '13', '1', 'parent', '', 'john5', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('139', '13', '13', '0', 'parent', '', 'john5', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('141', '10', '13', '1', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('142', '10', '13', '2', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('143', '10', '13', '1', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('144', '9', '13', '2', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('145', '9', '13', '3', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('146', '9', '13', '2', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('147', '5', '13', '3', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('148', '5', '13', '3', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('149', '3', '13', '4', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('150', '3', '13', '4', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('151', '2', '13', '5', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('152', '2', '13', '5', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('153', '2', '13', '5', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('154', '3', '13', '4', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('155', '5', '13', '3', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('156', '9', '13', '2', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('157', '10', '13', '1', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('158', '13', '13', '0', 'right', 'left', 'john2', '2017-03-10 05:09:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('172', '14', '14', '1', 'parent', '', 'john6', '2017-03-10 05:10:31');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('173', '14', '14', '0', 'parent', '', 'john6', '2017-03-10 05:10:31');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('175', '11', '14', '1', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('176', '11', '14', '2', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('177', '11', '14', '1', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('178', '9', '14', '2', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('179', '9', '14', '3', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('180', '9', '14', '2', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('181', '5', '14', '3', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('182', '5', '14', '3', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('183', '3', '14', '4', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('184', '3', '14', '4', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('185', '2', '14', '5', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('186', '2', '14', '5', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('187', '2', '14', '5', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('188', '3', '14', '4', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('189', '5', '14', '3', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('190', '9', '14', '2', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('191', '11', '14', '1', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('192', '14', '14', '0', 'left', 'right', 'john3', '2017-03-10 05:10:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('206', '15', '15', '1', 'parent', '', 'john7', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('207', '15', '15', '0', 'parent', '', 'john7', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('209', '11', '15', '1', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('210', '11', '15', '2', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('211', '11', '15', '1', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('212', '9', '15', '2', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('213', '9', '15', '3', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('214', '9', '15', '2', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('215', '5', '15', '3', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('216', '5', '15', '3', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('217', '3', '15', '4', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('218', '3', '15', '4', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('219', '2', '15', '5', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('220', '2', '15', '5', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('221', '2', '15', '5', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('222', '3', '15', '4', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('223', '5', '15', '3', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('224', '9', '15', '2', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('225', '11', '15', '1', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('226', '15', '15', '0', 'right', 'right', 'john3', '2017-03-10 05:11:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('240', '16', '16', '1', 'parent', '', 'ART01', '2017-03-10 22:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('241', '16', '16', '0', 'parent', '', 'ART01', '2017-03-10 22:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('243', '5', '16', '1', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('244', '5', '16', '1', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('245', '3', '16', '2', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('246', '3', '16', '2', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('247', '2', '16', '3', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('248', '2', '16', '3', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('249', '2', '16', '3', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('250', '3', '16', '2', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('251', '5', '16', '1', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('252', '16', '16', '0', 'right', 'left', 'luyabaya4', '2017-03-10 22:32:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('258', '17', '17', '1', 'parent', '', 'art02', '2017-03-10 22:42:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('259', '17', '17', '0', 'parent', '', 'art02', '2017-03-10 22:42:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('261', '16', '17', '1', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('262', '16', '17', '2', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('263', '16', '17', '1', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('264', '5', '17', '2', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('265', '5', '17', '2', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('266', '3', '17', '3', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('267', '3', '17', '3', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('268', '2', '17', '4', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('269', '2', '17', '4', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('270', '2', '17', '4', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('271', '3', '17', '3', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('272', '5', '17', '2', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('273', '16', '17', '1', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('274', '17', '17', '0', 'left', 'left', 'ART01', '2017-03-10 22:42:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('276', '18', '18', '1', 'parent', '', 'art03', '2017-03-10 22:50:13');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('277', '18', '18', '0', 'parent', '', 'art03', '2017-03-10 22:50:13');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('279', '16', '18', '1', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('280', '16', '18', '2', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('281', '16', '18', '1', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('282', '5', '18', '2', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('283', '5', '18', '2', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('284', '3', '18', '3', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('285', '3', '18', '3', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('286', '2', '18', '4', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('287', '2', '18', '4', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('288', '2', '18', '4', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('289', '3', '18', '3', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('290', '5', '18', '2', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('291', '16', '18', '1', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('292', '18', '18', '0', 'right', 'right', 'ART01', '2017-03-10 22:50:14');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('294', '19', '19', '1', 'parent', '', 'art04', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('295', '19', '19', '0', 'parent', '', 'art04', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('297', '17', '19', '1', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('298', '17', '19', '2', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('299', '17', '19', '1', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('300', '16', '19', '2', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('301', '16', '19', '3', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('302', '16', '19', '2', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('303', '5', '19', '3', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('304', '5', '19', '3', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('305', '3', '19', '4', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('306', '3', '19', '4', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('307', '2', '19', '5', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('308', '2', '19', '5', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('309', '2', '19', '5', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('310', '3', '19', '4', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('311', '5', '19', '3', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('312', '16', '19', '2', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('313', '17', '19', '1', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('314', '19', '19', '0', 'left', 'left', 'art02', '2017-03-10 22:56:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('328', '20', '20', '1', 'parent', '', 'bestlarry1', '2017-03-10 23:20:42');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('329', '20', '20', '0', 'parent', '', 'bestlarry1', '2017-03-10 23:20:42');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('331', '8', '20', '1', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('332', '4', '20', '2', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('333', '4', '20', '2', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('334', '2', '20', '3', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('335', '2', '20', '3', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('336', '2', '20', '3', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('337', '4', '20', '2', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('338', '8', '20', '1', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('339', '20', '20', '0', 'left', 'left', 'luyabaya7', '2017-03-10 23:20:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('346', '21', '21', '1', 'parent', '', 'bestlarry2', '2017-03-10 23:28:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('347', '21', '21', '0', 'parent', '', 'bestlarry2', '2017-03-10 23:28:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('349', '20', '21', '1', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('350', '20', '21', '2', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('351', '20', '21', '1', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('352', '8', '21', '2', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('353', '4', '21', '3', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('354', '4', '21', '3', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('355', '2', '21', '4', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('356', '2', '21', '4', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('357', '2', '21', '4', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('358', '4', '21', '3', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('359', '8', '21', '2', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('360', '20', '21', '1', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('361', '21', '21', '0', 'left', 'left', 'bestlarry1', '2017-03-10 23:28:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('364', '22', '22', '1', 'parent', '', 'bestlarry3', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('365', '22', '22', '0', 'parent', '', 'bestlarry3', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('367', '20', '22', '1', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('368', '20', '22', '2', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('369', '20', '22', '1', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('370', '8', '22', '2', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('371', '4', '22', '3', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('372', '4', '22', '3', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('373', '2', '22', '4', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('374', '2', '22', '4', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('375', '2', '22', '4', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('376', '4', '22', '3', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('377', '8', '22', '2', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('378', '20', '22', '1', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('379', '22', '22', '0', 'right', 'right', 'bestlarry1', '2017-03-10 23:31:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('382', '23', '23', '1', 'parent', '', 'art05', '2017-03-10 23:40:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('383', '23', '23', '0', 'parent', '', 'art05', '2017-03-10 23:40:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('385', '18', '23', '1', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('386', '18', '23', '2', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('387', '18', '23', '1', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('388', '16', '23', '2', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('389', '16', '23', '3', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('390', '16', '23', '2', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('391', '5', '23', '3', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('392', '5', '23', '3', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('393', '3', '23', '4', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('394', '3', '23', '4', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('395', '2', '23', '5', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('396', '2', '23', '5', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('397', '2', '23', '5', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('398', '3', '23', '4', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('399', '5', '23', '3', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('400', '16', '23', '2', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('401', '18', '23', '1', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('402', '23', '23', '0', 'right', 'right', 'art03', '2017-03-10 23:40:21');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('416', '24', '24', '1', 'parent', '', 'bestlarry4', '2017-03-10 23:41:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('417', '24', '24', '0', 'parent', '', 'bestlarry4', '2017-03-10 23:41:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('419', '21', '24', '1', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('420', '21', '24', '2', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('421', '21', '24', '1', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('422', '20', '24', '2', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('423', '20', '24', '3', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('424', '20', '24', '2', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('425', '8', '24', '3', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('426', '4', '24', '4', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('427', '4', '24', '4', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('428', '2', '24', '5', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('429', '2', '24', '5', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('430', '2', '24', '5', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('431', '4', '24', '4', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('432', '8', '24', '3', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('433', '20', '24', '2', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('434', '21', '24', '1', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('435', '24', '24', '0', 'left', 'left', 'bestlarry2', '2017-03-10 23:41:05');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('450', '25', '25', '1', 'parent', '', 'bestlarry5', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('451', '25', '25', '0', 'parent', '', 'bestlarry5', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('453', '21', '25', '1', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('454', '21', '25', '2', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('455', '21', '25', '1', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('456', '20', '25', '2', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('457', '20', '25', '3', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('458', '20', '25', '2', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('459', '8', '25', '3', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('460', '4', '25', '4', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('461', '4', '25', '4', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('462', '2', '25', '5', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('463', '2', '25', '5', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('464', '2', '25', '5', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('465', '4', '25', '4', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('466', '8', '25', '3', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('467', '20', '25', '2', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('468', '21', '25', '1', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('469', '25', '25', '0', 'right', 'right', 'bestlarry2', '2017-03-10 23:51:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('484', '26', '26', '1', 'parent', '', 'art06', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('485', '26', '26', '0', 'parent', '', 'art06', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('487', '17', '26', '1', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('488', '17', '26', '2', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('489', '17', '26', '1', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('490', '16', '26', '2', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('491', '16', '26', '3', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('492', '16', '26', '2', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('493', '5', '26', '3', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('494', '5', '26', '3', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('495', '3', '26', '4', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('496', '3', '26', '4', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('497', '2', '26', '5', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('498', '2', '26', '5', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('499', '2', '26', '5', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('500', '3', '26', '4', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('501', '5', '26', '3', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('502', '16', '26', '2', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('503', '17', '26', '1', 'right', 'right', 'art02', '2017-03-10 23:56:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('504', '26', '26', '0', 'right', 'right', 'art02', '2017-03-10 23:56:15');


#
# TABLE STRUCTURE FOR: luyabaya_tree
#

DROP TABLE IF EXISTS `luyabaya_tree`;

CREATE TABLE `luyabaya_tree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `child` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `full_name` varchar(150) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `m_position` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('1', '2', '0', 'Luyabaya 1', '2', 'parent', 'parent');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('2', '3', '1', 'Luyabaya 2', '2', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('3', '4', '1', 'Luyabaya 3', '2', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('4', '5', '2', 'Luyabaya 4', '3', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('5', '6', '2', 'Luyabaya 5', '3', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('6', '7', '2', 'Luyabaya 6', '4', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('7', '8', '2', 'Luyabaya 7', '4', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('8', '16', '3', 'ARTHUR LAYNO', '5', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('9', '20', '3', 'HILARIO LLIDO', '8', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('10', '9', '3', 'John Jusi', '5', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('11', '21', '4', 'HILARIO LLIDO', '20', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('12', '18', '4', 'ARTHUR LAYNO', '16', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('13', '17', '4', 'Arthur Layno', '16', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('14', '10', '4', 'John Jusi', '9', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('15', '22', '4', 'HILARIO LLIDO', '20', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('16', '11', '4', 'John Jusi', '9', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('17', '23', '5', 'Arthur Layno', '18', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('18', '24', '5', 'HILARIO LLIDO', '21', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('19', '25', '5', 'HILARIO LLIDO', '21', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('20', '19', '5', 'Arthur Layno', '17', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('21', '15', '5', 'John Jusi', '11', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('22', '14', '5', 'John Jusi', '11', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('23', '13', '5', 'John Jusi', '10', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('24', '12', '5', 'John Jusi', '10', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('25', '26', '5', 'Arthur Laymo', '17', 'right', 'left');


#
# TABLE STRUCTURE FOR: position
#

DROP TABLE IF EXISTS `position`;

CREATE TABLE `position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(100) DEFAULT NULL,
  `position_left` varchar(100) DEFAULT NULL,
  `position_right` varchar(100) NOT NULL,
  `sponsor_by` varchar(100) DEFAULT NULL,
  `upline` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`position_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('1', '2', '3', '4', '2', '2');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('2', '3', '5', '6', '2', '3');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('3', '4', '7', '8', '2', '4');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('4', '5', '9', '16', '2', '5');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('5', '6', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('6', '7', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('7', '8', '20', '', '2', '8');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('8', '9', '10', '11', '2', '9');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('9', '10', '12', '13', '9', '10');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('10', '11', '14', '15', '9', '11');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('11', '12', '', '', '9', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('12', '13', '', '', '9', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('13', '14', '', '', '9', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('14', '15', '', '', '9', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('15', '16', '17', '18', '2', '16');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('16', '17', '19', '26', '16', '17');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('17', '18', '', '23', '16', '18');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('18', '19', '', '', '16', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('19', '20', '21', '22', '8', '20');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('20', '21', '24', '25', '20', '21');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('21', '22', '', '', '20', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('22', '23', '', '', '16', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('23', '24', '', '', '21', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('24', '25', '', '', '21', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('25', '26', '', '', '17', '');


#
# TABLE STRUCTURE FOR: product_purchase
#

DROP TABLE IF EXISTS `product_purchase`;

CREATE TABLE `product_purchase` (
  `product_purchase_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(100) NOT NULL,
  `date_purchase` date NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`product_purchase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: request_withdrawal
#

DROP TABLE IF EXISTS `request_withdrawal`;

CREATE TABLE `request_withdrawal` (
  `request_withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(100) NOT NULL,
  `date_requested` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`request_withdrawal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `entered_on` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `sponsor_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('1', 'admin', '12345', 'Luyabaya', 'Admin', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '', '1', 'luyabaya@gmail.com', '');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('2', 'luyabaya1', '12345', 'Luyabaya', '1', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('3', 'luyabaya2', '12345', 'Luyabaya', '2', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya2@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('4', 'luyabaya3', '12345', 'Luyabaya', '3', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya3@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('5', 'luyabaya4', '12345', 'Luyabaya', '4', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya4@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('6', 'luyabaya5', '12345', 'Luyabaya', '5', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya5@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('7', 'luyabaya6', '12345', 'Luyabaya', '6', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya6@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('8', 'luyabaya7', '12345', 'Luyabaya', '7', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-10 04:26:25', '1', '0', 'luyabaya7@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('9', 'john1', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:04:39', NULL, '0', 'nhooj@yahoo.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('10', 'john2', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:05:34', NULL, '0', 'nhooj@yahoo.com', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('11', 'john3', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:06:32', NULL, '0', 'nhooj@yahoo.com', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('12', 'john4', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:07:58', NULL, '0', 'nhooj@yahoo.com', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('13', 'john5', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:09:28', NULL, '0', 'nhooj@yahoo.com', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('14', 'john6', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:10:31', NULL, '0', 'nhooj@yahoo.com', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('15', 'john7', '8879', 'John', 'Jusi', 'M', '09228918879', 'Davao City', '2017-03-10 12:11:29', NULL, '0', 'nhooj@yahoo.com', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('16', 'ART01', 'RAVEN01', 'ARTHUR', 'LAYNO', 'M', '09474071224', 'DAVAO CITY', '2017-03-11 05:32:08', NULL, '0', '', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('17', 'art02', 'raven01', 'Arthur', 'Layno', 'M', '09474071224', 'Davao City', '2017-03-11 05:42:34', NULL, '0', '', '16');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('18', 'art03', 'raven01', 'ARTHUR', 'LAYNO', 'M', '09474071224', 'DAVAO', '2017-03-11 05:50:13', NULL, '0', '', '16');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('19', 'art04', 'raven01', 'Arthur', 'Layno', 'M', '09474071224', 'Davao', '2017-03-11 05:56:34', NULL, '0', '', '16');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('20', 'bestlarry1', '12345', 'HILARIO', 'LLIDO', 'MALE', '09094878046', 'Davao City', '2017-03-11 06:20:42', NULL, '0', 'larryllido@gmail.com', '8');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('21', 'bestlarry2', '12345', 'HILARIO', 'LLIDO', 'MALE', '09094878046', 'Davao City', '2017-03-11 06:28:20', NULL, '0', 'larryllido@gmail.com', '20');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('22', 'bestlarry3', '12345', 'HILARIO', 'LLIDO', 'MALE', '09094878046', 'Davao City', '2017-03-11 06:31:54', NULL, '0', 'larryllido@gmail.com', '20');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('23', 'art05', 'raven01', 'Arthur', 'Layno', 'M', '09474071224', 'Davao', '2017-03-11 06:40:20', NULL, '0', '', '16');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('24', 'bestlarry4', '12345', 'HILARIO', 'LLIDO', 'Male', '09094878046', 'Davao City', '2017-03-11 06:41:04', NULL, '0', 'larryllido@gmail.com', '21');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('25', 'bestlarry5', '12345', 'HILARIO', 'LLIDO', 'MALE', '09094878046', 'Davao City', '2017-03-11 06:51:54', NULL, '0', 'larryllido@gmail.com', '21');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('26', 'art06', 'raven01', 'Arthur', 'Laymo', 'M', '09474071224', 'Davao', '2017-03-11 06:56:15', NULL, '0', '', '17');


#
# TABLE STRUCTURE FOR: withdrawal
#

DROP TABLE IF EXISTS `withdrawal`;

CREATE TABLE `withdrawal` (
  `withdrawal_id` int(11) NOT NULL AUTO_INCREMENT,
  `w_user_id` int(11) DEFAULT NULL,
  `w_amount` float DEFAULT NULL,
  `remarks` varchar(45) DEFAULT NULL,
  `date_create` datetime DEFAULT NULL,
  PRIMARY KEY (`withdrawal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

