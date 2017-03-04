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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('1', 'yrA45uEKDo', '2017-03-01 13:14:14', '1', '1', '32');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('2', 'ppSxP9Duck', '2017-03-01 13:14:14', '1', '1', '33');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('3', 'MtR1IerZ84', '2017-03-01 13:14:14', '1', '1', '34');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('4', 'aGvKKAfplS', '2017-03-01 13:14:14', '1', '1', '35');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('5', 'NLhGj7PWB1', '2017-03-01 13:14:14', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('6', 'hov8penRdv', '2017-03-01 13:14:14', '1', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('7', 'Wocs9X3omp', '2017-03-01 13:14:14', '1', '0', NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('1', '2', '50', '3', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('2', '2', '50', '4', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('3', '2', '50', '5', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('4', '2', '50', '6', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('5', '2', '50', '7', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('6', '2', '50', '8', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('7', '2', '50', '9', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('8', '2', '50', '10', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('9', '2', '50', '11', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('10', '2', '50', '12', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('11', '2', '50', '13', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('12', '2', '50', '14', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('13', '2', '50', '15', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('14', '2', '50', '16', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('15', '2', '50', '17', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('16', '2', '50', '18', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('17', '2', '50', '19', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('18', '2', '50', '20', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('19', '2', '50', '21', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('20', '2', '50', '22', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('21', '2', '50', '23', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('22', '2', '50', '24', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('23', '2', '50', '25', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('24', '2', '50', '26', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('25', '2', '50', '27', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('26', '2', '50', '28', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('27', '2', '50', '29', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('28', '2', '50', '30', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('29', '2', '50', '31', NULL, 'referral', '2017-03-01 05:46:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('30', '3', '60', '3', 'depth_3-0', 'upline', '2017-03-01 06:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('31', '3', '60', NULL, 'depth_3-1', 'upline', '2017-03-01 06:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('32', '3', '60', NULL, 'depth_3-1', 'upline', '2017-03-01 06:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('33', '4', '60', '4', 'depth_4-0', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('34', '4', '60', NULL, 'depth_4-1', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('35', '4', '60', NULL, 'depth_4-1', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('36', '5', '60', '5', 'depth_5-0', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('37', '5', '60', NULL, 'depth_5-1', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('38', '5', '60', NULL, 'depth_5-1', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('39', '6', '60', '6', 'depth_6-0', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('40', '7', '60', '7', 'depth_7-0', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('41', '8', '60', '8', 'depth_8-0', 'upline', '2017-03-01 06:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('42', '9', '60', '9', 'depth_9-0', 'upline', '2017-03-01 06:00:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('43', '10', '60', '10', 'depth_10-0', 'upline', '2017-03-01 06:00:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('44', '11', '60', '11', 'depth_11-0', 'upline', '2017-03-01 06:00:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('45', '12', '60', '12', 'depth_12-0', 'upline', '2017-03-01 06:00:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('46', '2', '50', '32', NULL, 'referral', '2017-03-01 06:15:56');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('47', '32', '50', '33', NULL, 'referral', '2017-03-01 06:16:37');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('48', '32', '50', '34', NULL, 'referral', '2017-03-01 06:17:58');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('49', '2', '60', '2', 'depth_2-0', 'upline', '2017-03-02 00:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('50', '2', '60', NULL, 'depth_2-1', 'upline', '2017-03-02 00:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('51', '2', '60', NULL, 'depth_2-2', 'upline', '2017-03-02 00:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('52', '2', '60', NULL, 'depth_2-5', 'upline', '2017-03-02 00:00:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('53', '2', '60', NULL, 'depth_2-1', 'upline', '2017-03-02 00:30:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('54', '2', '60', NULL, 'depth_2-2', 'upline', '2017-03-02 00:30:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('55', '2', '60', NULL, 'depth_2-5', 'upline', '2017-03-02 00:30:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('56', '2', '60', NULL, 'depth_2-2', 'upline', '2017-03-02 01:00:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('57', '2', '60', NULL, 'depth_2-5', 'upline', '2017-03-02 01:00:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('58', '2', '60', NULL, 'depth_2-2', 'upline', '2017-03-02 01:30:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('59', '2', '60', NULL, 'depth_2-5', 'upline', '2017-03-02 01:30:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('60', '5', '50', '35', NULL, 'referral', '2017-03-02 20:34:02');


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
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1', '2', '2', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('2', '2', '2', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('3', '3', '3', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('4', '4', '4', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('5', '5', '5', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('6', '6', '6', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('7', '7', '7', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('8', '8', '8', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('9', '9', '9', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('10', '10', '10', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('11', '11', '11', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('12', '12', '12', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('13', '13', '13', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('14', '14', '14', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('15', '15', '15', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('16', '16', '16', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('17', '17', '17', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('18', '18', '18', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('19', '19', '19', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('20', '20', '20', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('21', '21', '21', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('22', '22', '22', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('23', '23', '23', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('24', '24', '24', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('25', '25', '25', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('26', '26', '26', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('27', '27', '27', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('28', '28', '28', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('29', '29', '29', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('30', '30', '30', '0', 'parent', NULL, 'SystemCreate', '2017-03-01 05:46:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('31', '2', '3', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:51:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('32', '2', '3', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:51:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('34', '2', '4', '1', 'right', 'right', 'luyabaya1', '2017-03-01 05:51:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('35', '2', '4', '1', 'right', 'right', 'luyabaya1', '2017-03-01 05:51:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('37', '3', '5', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:51:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('38', '2', '5', '2', 'left', 'left', 'luyabaya1', '2017-03-01 05:51:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('39', '2', '5', '2', 'left', 'left', 'luyabaya1', '2017-03-01 05:51:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('40', '3', '6', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:51:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('41', '2', '6', '2', 'right', 'left', 'luyabaya1', '2017-03-01 05:51:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('42', '2', '6', '2', 'right', 'left', 'luyabaya1', '2017-03-01 05:51:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('43', '4', '7', '1', 'left', 'right', 'luyabaya1', '2017-03-01 05:52:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('44', '2', '7', '2', 'left', 'right', 'luyabaya1', '2017-03-01 05:52:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('45', '2', '7', '2', 'left', 'right', 'luyabaya1', '2017-03-01 05:52:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('46', '4', '8', '1', 'right', 'right', 'luyabaya1', '2017-03-01 05:52:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('47', '2', '8', '2', 'right', 'right', 'luyabaya1', '2017-03-01 05:52:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('48', '2', '8', '2', 'right', 'right', 'luyabaya1', '2017-03-01 05:52:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('49', '5', '9', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:53:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('50', '3', '9', '3', 'left', 'left', 'luyabaya1', '2017-03-01 05:53:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('51', '2', '9', '3', 'left', 'left', 'luyabaya1', '2017-03-01 05:53:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('52', '2', '9', '3', 'left', 'left', 'luyabaya1', '2017-03-01 05:53:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('56', '5', '10', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:53:48');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('57', '3', '10', '3', 'right', 'left', 'luyabaya1', '2017-03-01 05:53:48');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('58', '2', '10', '3', 'right', 'left', 'luyabaya1', '2017-03-01 05:53:48');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('59', '2', '10', '3', 'right', 'left', 'luyabaya1', '2017-03-01 05:53:48');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('63', '6', '11', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:54:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('64', '3', '11', '3', 'left', 'left', 'luyabaya1', '2017-03-01 05:54:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('65', '2', '11', '3', 'left', 'left', 'luyabaya1', '2017-03-01 05:54:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('66', '2', '11', '3', 'left', 'left', 'luyabaya1', '2017-03-01 05:54:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('70', '6', '12', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:54:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('71', '3', '12', '3', 'right', 'left', 'luyabaya1', '2017-03-01 05:54:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('72', '2', '12', '3', 'right', 'left', 'luyabaya1', '2017-03-01 05:54:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('73', '2', '12', '3', 'right', 'left', 'luyabaya1', '2017-03-01 05:54:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('77', '7', '13', '1', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('78', '4', '13', '3', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('79', '2', '13', '3', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('80', '2', '13', '3', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('84', '7', '14', '1', 'right', 'right', 'luyabaya1', '2017-03-01 05:54:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('85', '4', '14', '3', 'right', 'right', 'luyabaya1', '2017-03-01 05:54:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('86', '2', '14', '3', 'right', 'right', 'luyabaya1', '2017-03-01 05:54:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('87', '2', '14', '3', 'right', 'right', 'luyabaya1', '2017-03-01 05:54:39');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('91', '8', '15', '1', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('92', '4', '15', '3', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('93', '2', '15', '3', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('94', '2', '15', '3', 'left', 'right', 'luyabaya1', '2017-03-01 05:54:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('98', '8', '16', '1', 'right', 'right', 'luyabaya1', '2017-03-01 05:55:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('99', '4', '16', '3', 'right', 'right', 'luyabaya1', '2017-03-01 05:55:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('100', '2', '16', '3', 'right', 'right', 'luyabaya1', '2017-03-01 05:55:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('101', '2', '16', '3', 'right', 'right', 'luyabaya1', '2017-03-01 05:55:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('105', '9', '17', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:55:49');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('106', '5', '17', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:55:49');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('107', '3', '17', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:55:49');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('108', '2', '17', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:55:49');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('109', '2', '17', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:55:49');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('112', '9', '18', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('113', '5', '18', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('114', '3', '18', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('115', '2', '18', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('116', '2', '18', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('119', '10', '19', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:56:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('120', '5', '19', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:56:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('121', '3', '19', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:56:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('122', '2', '19', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:56:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('123', '2', '19', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:56:35');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('126', '10', '20', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('127', '5', '20', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('128', '3', '20', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('129', '2', '20', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('130', '2', '20', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:56:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('133', '11', '21', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:57:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('134', '6', '21', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:57:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('135', '3', '21', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:57:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('136', '2', '21', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:57:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('137', '2', '21', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:57:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('140', '11', '22', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:57:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('141', '6', '22', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:57:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('142', '3', '22', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:57:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('143', '2', '22', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:57:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('144', '2', '22', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:57:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('147', '12', '23', '1', 'left', 'left', 'luyabaya1', '2017-03-01 05:58:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('148', '6', '23', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:58:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('149', '3', '23', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:58:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('150', '2', '23', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:58:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('151', '2', '23', '4', 'left', 'left', 'luyabaya1', '2017-03-01 05:58:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('154', '12', '24', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:19');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('155', '6', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:19');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('156', '3', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:19');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('157', '2', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:19');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('158', '2', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:19');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('161', '12', '24', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('162', '6', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('163', '3', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('164', '2', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('165', '2', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:58:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('168', '13', '25', '1', 'left', 'right', 'luyabaya1', '2017-03-01 05:58:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('169', '7', '25', '4', 'left', 'right', 'luyabaya1', '2017-03-01 05:58:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('170', '4', '25', '4', 'left', 'right', 'luyabaya1', '2017-03-01 05:58:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('171', '2', '25', '4', 'left', 'right', 'luyabaya1', '2017-03-01 05:58:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('172', '2', '25', '4', 'left', 'right', 'luyabaya1', '2017-03-01 05:58:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('175', '12', '24', '1', 'right', 'left', 'luyabaya1', '2017-03-01 05:59:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('176', '6', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:59:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('177', '3', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:59:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('178', '2', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:59:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('179', '2', '24', '4', 'right', 'left', 'luyabaya1', '2017-03-01 05:59:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('182', '25', '26', '1', 'right', 'right', 'luyabaya1', '2017-03-01 05:59:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('183', '13', '26', '5', 'right', 'right', 'luyabaya1', '2017-03-01 05:59:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('184', '7', '26', '5', 'right', 'right', 'luyabaya1', '2017-03-01 05:59:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('185', '4', '26', '5', 'right', 'right', 'luyabaya1', '2017-03-01 05:59:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('186', '2', '26', '5', 'right', 'right', 'luyabaya1', '2017-03-01 05:59:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('187', '2', '26', '5', 'right', 'right', 'luyabaya1', '2017-03-01 05:59:47');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('189', '26', '27', '1', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('190', '25', '27', '6', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('191', '13', '27', '6', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('192', '7', '27', '6', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('193', '4', '27', '6', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('194', '2', '27', '6', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('195', '2', '27', '6', 'left', 'right', 'luyabaya1', '2017-03-01 06:00:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('196', '27', '28', '1', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('197', '26', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('198', '25', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('199', '13', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('200', '7', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('201', '4', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('202', '2', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('203', '2', '28', '7', 'right', 'right', 'luyabaya1', '2017-03-01 06:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('211', '19', '29', '1', 'right', 'left', 'luyabaya1', '2017-03-01 06:00:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('212', '10', '29', '5', 'right', 'left', 'luyabaya1', '2017-03-01 06:00:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('213', '5', '29', '5', 'right', 'left', 'luyabaya1', '2017-03-01 06:00:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('214', '3', '29', '5', 'right', 'left', 'luyabaya1', '2017-03-01 06:00:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('215', '2', '29', '5', 'right', 'left', 'luyabaya1', '2017-03-01 06:00:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('216', '2', '29', '5', 'right', 'left', 'luyabaya1', '2017-03-01 06:00:38');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('218', '22', '30', '1', 'left', 'left', 'luyabaya1', '2017-03-01 06:01:00');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('219', '11', '30', '5', 'left', 'left', 'luyabaya1', '2017-03-01 06:01:00');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('220', '6', '30', '5', 'left', 'left', 'luyabaya1', '2017-03-01 06:01:00');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('221', '3', '30', '5', 'left', 'left', 'luyabaya1', '2017-03-01 06:01:00');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('222', '2', '30', '5', 'left', 'left', 'luyabaya1', '2017-03-01 06:01:00');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('223', '2', '30', '5', 'left', 'left', 'luyabaya1', '2017-03-01 06:01:00');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('225', '30', '31', '1', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('226', '22', '31', '6', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('227', '11', '31', '6', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('228', '6', '31', '6', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('229', '3', '31', '6', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('230', '2', '31', '6', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('231', '2', '31', '6', 'right', 'left', 'luyabaya1', '2017-03-01 06:01:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('232', '32', '32', '0', 'parent', '', 'SystemCreate', '2017-03-01 06:15:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('233', '33', '33', '0', 'parent', '', 'SystemCreate', '2017-03-01 06:16:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('234', '34', '34', '0', 'parent', '', 'SystemCreate', '2017-03-01 06:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('235', '16', '32', '1', 'right', 'right', 'luyabaya1', '2017-03-01 06:19:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('236', '8', '32', '4', 'right', 'right', 'luyabaya1', '2017-03-01 06:19:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('237', '4', '32', '4', 'right', 'right', 'luyabaya1', '2017-03-01 06:19:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('238', '2', '32', '4', 'right', 'right', 'luyabaya1', '2017-03-01 06:19:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('239', '2', '32', '4', 'right', 'right', 'luyabaya1', '2017-03-01 06:19:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('242', '32', '33', '1', 'left', 'left', 'jj1', '2017-03-01 06:20:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('243', '16', '33', '5', 'left', 'left', 'jj1', '2017-03-01 06:20:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('244', '8', '33', '5', 'left', 'left', 'jj1', '2017-03-01 06:20:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('245', '4', '33', '5', 'left', 'left', 'jj1', '2017-03-01 06:20:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('246', '2', '33', '5', 'left', 'left', 'jj1', '2017-03-01 06:20:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('247', '2', '33', '5', 'left', 'left', 'jj1', '2017-03-01 06:20:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('249', '32', '34', '1', 'right', 'right', 'jj1', '2017-03-01 06:20:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('250', '16', '34', '5', 'right', 'right', 'jj1', '2017-03-01 06:20:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('251', '8', '34', '5', 'right', 'right', 'jj1', '2017-03-01 06:20:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('252', '4', '34', '5', 'right', 'right', 'jj1', '2017-03-01 06:20:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('253', '2', '34', '5', 'right', 'right', 'jj1', '2017-03-01 06:20:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('254', '2', '34', '5', 'right', 'right', 'jj1', '2017-03-01 06:20:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('255', '35', '35', '0', 'parent', '', 'SystemCreate', '2017-03-02 20:34:02');


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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('1', '2', '3', '4', '2', '2');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('2', '3', '5', '6', '2', '3');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('3', '4', '7', '8', '2', '4');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('4', '5', '9', '10', '2', '5');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('5', '6', '11', '12', '2', '6');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('6', '7', '13', '14', '2', '7');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('7', '8', '15', '16', '2', '8');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('8', '9', '17', '18', '2', '9');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('9', '10', '19', '20', '2', '10');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('10', '11', '21', '22', '2', '11');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('11', '12', '23', '24', '2', '12');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('12', '13', '25', '', '2', '13');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('13', '14', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('14', '15', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('15', '16', '', '32', '2', '16');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('16', '17', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('17', '18', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('18', '19', '', '29', '2', '19');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('19', '20', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('20', '21', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('21', '22', '30', '', '2', '22');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('22', '23', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('23', '24', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('24', '25', '', '26', '2', '25');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('25', '26', '27', '', '2', '26');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('26', '27', '', '28', '2', '27');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('27', '28', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('28', '29', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('29', '30', '', '31', '2', '30');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('30', '31', '', '', '2', NULL);
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('31', '32', '33', '34', '2', '32');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('32', '33', '', '', '32', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('33', '34', '', '', '32', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('34', '35', '', '', '5', '');


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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('1', 'admin', '12345', 'Luyabaya', 'Admin', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '', '1', 'luyabaya@gmail.com', '');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('2', 'luyabaya1', '12345', 'Luyabaya', '1', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('3', 'luyabaya2', '12345', 'Luyabaya', '2', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya2@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('4', 'luyabaya3', '12345', 'Luyabaya', '3', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya3@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('5', 'luyabaya4', '12345', 'Luyabaya', '4', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya4@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('6', 'luyabaya5', '12345', 'Luyabaya', '5', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya5@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('7', 'luyabaya6', '12345', 'Luyabaya', '6', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya6@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('8', 'luyabaya7', '12345', 'Luyabaya', '7', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya7@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('9', 'luyabaya8', '12345', 'Luyabaya', '8', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya8@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('10', 'luyabaya9', '12345', 'Luyabaya', '9', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya9@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('11', 'luyabaya10', '12345', 'Luyabaya', '10', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya10@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('12', 'luyabaya11', '12345', 'Luyabaya', '11', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya11@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('13', 'luyabaya12', '12345', 'Luyabaya', '12', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya12@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('14', 'luyabaya13', '12345', 'Luyabaya', '13', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya13@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('15', 'luyabaya14', '12345', 'Luyabaya', '14', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya14@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('16', 'luyabaya15', '12345', 'Luyabaya', '15', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya15@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('17', 'luyabaya16', '12345', 'Luyabaya', '16', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya16@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('18', 'luyabaya17', '12345', 'Luyabaya', '17', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya17@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('19', 'luyabaya18', '12345', 'Luyabaya', '18', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya18@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('20', 'luyabaya19', '12345', 'Luyabaya', '19', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya19@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('21', 'luyabaya20', '12345', 'Luyabaya', '20', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya20@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('22', 'luyabaya21', '12345', 'Luyabaya', '21', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya21@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('23', 'luyabaya22', '12345', 'Luyabaya', '22', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya22@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('24', 'luyabaya23', '12345', 'Luyabaya', '23', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya23@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('25', 'luyabaya24', '12345', 'Luyabaya', '24', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya24@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('26', 'luyabaya25', '12345', 'Luyabaya', '25', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya25@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('27', 'luyabaya26', '12345', 'Luyabaya', '26', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya26@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('28', 'luyabaya27', '12345', 'Luyabaya', '27', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya27@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('29', 'luyabaya28', '12345', 'Luyabaya', '28', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya28@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('30', 'luyabaya29', '12345', 'Luyabaya', '29', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya29@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('31', 'luyabaya30', '12345', 'Luyabaya', '30', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-01 05:46:28', '1', '0', 'luyabaya30@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('32', 'jj1', 'jj', 'Jj', 'Jj', 'M', '23', 'D', '2017-03-01 13:15:56', NULL, '0', '', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('33', 'jj2', 'jj', 'Jj', 'Jj', 'M', 'jj', 'Jj', '2017-03-01 13:16:37', NULL, '0', '', '32');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('34', 'jj3', 'jj', 'Jj', 'Jj', 'M', '8', 'D', '2017-03-01 13:17:58', NULL, '0', '', '32');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('35', 'Art01', 'raven01', 'Arthur', 'Layno', 'M', '09474071224', 'Davao City', '2017-03-03 03:34:02', NULL, '0', '', '5');


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

