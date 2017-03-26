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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('1', '2', '0', '6');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('2', '3', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('3', '4', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('4', '5', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('5', '6', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('6', '7', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('7', '8', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('8', '16', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('9', '15', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('10', '14', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('11', '13', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('12', '12', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('13', '11', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('14', '10', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('15', '9', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('16', '24', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('17', '23', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('18', '22', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('19', '21', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('20', '20', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('21', '19', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('22', '18', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('23', '17', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('24', '25', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('25', '26', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('26', '27', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('27', '28', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('39', '32', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('40', '31', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('41', '33', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('42', '35', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('43', '34', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('44', '30', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('45', '29', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('46', '36', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('47', '37', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('48', '38', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('54', '39', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('55', '40', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('56', '41', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('57', '42', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('58', '43', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('59', '44', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('60', '45', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('61', '58', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('62', '57', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('63', '56', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('64', '55', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('65', '54', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('66', '52', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('67', '46', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('68', '47', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('69', '48', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('70', '53', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('71', '50', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('72', '49', '0', '0');
INSERT INTO `_currentchild` (`id`, `parent`, `old_count`, `new_count`) VALUES ('73', '51', '0', '0');


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO `_selectedhierarchy` (`_id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`, `m_parent`, `f_position`) VALUES ('1', '58', '0', '50 50', '15', 'parent', NULL, '58', 'parent');


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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('1', '1', '2017-03-09 00:44:53', 'SystemCreate', '1', '9');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('2', '2', '2017-03-09 00:44:53', 'SystemCreate', '1', '10');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('3', '3', '2017-03-09 00:44:53', 'SystemCreate', '1', '11');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('4', '4', '2017-03-09 00:44:53', 'SystemCreate', '1', '12');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('5', '5', '2017-03-09 00:44:53', 'SystemCreate', '1', '13');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('6', '6', '2017-03-09 00:44:53', 'SystemCreate', '1', '14');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('7', '7', '2017-03-09 00:44:53', 'SystemCreate', '1', '15');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('8', '8', '2017-03-09 00:44:53', 'SystemCreate', '1', '16');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('9', '9', '2017-03-09 00:44:53', 'SystemCreate', '1', '17');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('10', '10', '2017-03-09 00:44:53', 'SystemCreate', '1', '18');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('11', '11', '2017-03-09 00:44:53', 'SystemCreate', '1', '19');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('12', '12', '2017-03-09 00:44:53', 'SystemCreate', '1', '20');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('13', '13', '2017-03-09 00:44:53', 'SystemCreate', '1', '21');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('14', '14', '2017-03-09 00:44:53', 'SystemCreate', '1', '22');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('15', '15', '2017-03-09 00:44:53', 'SystemCreate', '1', '23');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('16', '16', '2017-03-09 00:44:53', 'SystemCreate', '1', '24');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('17', '17', '2017-03-09 00:44:53', 'SystemCreate', '1', '25');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('18', '18', '2017-03-09 00:44:53', 'SystemCreate', '1', '26');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('19', '19', '2017-03-09 00:44:53', 'SystemCreate', '1', '27');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('20', '20', '2017-03-09 00:44:53', 'SystemCreate', '1', '28');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('21', '21', '2017-03-09 00:44:53', 'SystemCreate', '1', '29');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('22', '22', '2017-03-09 00:44:53', 'SystemCreate', '1', '30');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('23', '23', '2017-03-09 00:44:53', 'SystemCreate', '1', '31');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('24', '24', '2017-03-09 00:44:53', 'SystemCreate', '1', '32');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('25', '25', '2017-03-09 00:44:53', 'SystemCreate', '1', '33');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('26', '26', '2017-03-09 00:44:53', 'SystemCreate', '1', '34');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('27', '27', '2017-03-09 00:44:53', 'SystemCreate', '1', '35');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('28', '28', '2017-03-09 00:44:53', 'SystemCreate', '1', '36');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('29', '29', '2017-03-09 00:44:53', 'SystemCreate', '1', '37');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('30', '30', '2017-03-09 00:44:53', 'SystemCreate', '1', '38');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('31', '31', '2017-03-09 00:44:53', 'SystemCreate', '1', '39');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('32', '32', '2017-03-09 00:44:53', 'SystemCreate', '1', '40');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('33', '33', '2017-03-09 00:44:53', 'SystemCreate', '1', '41');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('34', '34', '2017-03-09 00:44:53', 'SystemCreate', '1', '42');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('35', '35', '2017-03-09 00:44:53', 'SystemCreate', '1', '43');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('36', '36', '2017-03-09 00:44:53', 'SystemCreate', '1', '44');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('37', '37', '2017-03-09 00:44:53', 'SystemCreate', '1', '45');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('38', '38', '2017-03-09 00:44:53', 'SystemCreate', '1', '46');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('39', '39', '2017-03-09 00:44:53', 'SystemCreate', '1', '47');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('40', '40', '2017-03-09 00:44:53', 'SystemCreate', '1', '48');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('41', '41', '2017-03-09 00:44:53', 'SystemCreate', '1', '49');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('42', '42', '2017-03-09 00:44:53', 'SystemCreate', '1', '50');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('43', '43', '2017-03-09 00:44:53', 'SystemCreate', '1', '51');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('44', '44', '2017-03-09 00:44:53', 'SystemCreate', '1', '52');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('45', '45', '2017-03-09 00:44:53', 'SystemCreate', '1', '53');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('46', '46', '2017-03-09 00:44:53', 'SystemCreate', '1', '54');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('47', '47', '2017-03-09 00:44:53', 'SystemCreate', '1', '55');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('48', '48', '2017-03-09 00:44:53', 'SystemCreate', '1', '56');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('49', '49', '2017-03-09 00:44:53', 'SystemCreate', '1', '57');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('50', '50', '2017-03-09 00:44:53', 'SystemCreate', '1', '58');
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('51', '51', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('52', '52', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('53', '53', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('54', '54', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('55', '55', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('56', '56', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('57', '57', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('58', '58', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('59', '59', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('60', '60', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('61', '61', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('62', '62', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('63', '63', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('64', '64', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('65', '65', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('66', '66', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('67', '67', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('68', '68', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('69', '69', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('70', '70', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('71', '71', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('72', '72', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('73', '73', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('74', '74', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('75', '75', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('76', '76', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('77', '77', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('78', '78', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('79', '79', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('80', '80', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('81', '81', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('82', '82', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('83', '83', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('84', '84', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('85', '85', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('86', '86', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('87', '87', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('88', '88', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('89', '89', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('90', '90', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('91', '91', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('92', '92', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('93', '93', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('94', '94', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('95', '95', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('96', '96', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('97', '97', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('98', '98', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('99', '99', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);
INSERT INTO `codes` (`code_id`, `description`, `generated_date`, `generated_by`, `status`, `used_by`) VALUES ('100', '100', '2017-03-09 00:44:53', 'SystemCreate', '0', NULL);


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
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('1', '2', '50', '3', NULL, 'referral', '2017-03-09 00:44:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('2', '2', '50', '4', NULL, 'referral', '2017-03-09 00:44:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('3', '2', '50', '5', NULL, 'referral', '2017-03-09 00:44:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('4', '2', '50', '6', NULL, 'referral', '2017-03-09 00:44:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('5', '2', '50', '7', NULL, 'referral', '2017-03-09 00:44:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('6', '2', '50', '8', NULL, 'referral', '2017-03-09 00:44:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('7', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 08:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('8', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 08:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('9', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 08:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('10', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 08:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('11', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 08:00:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('12', '2', '50', '9', NULL, 'referral', '2017-03-09 03:30:55');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('13', '2', '50', '10', NULL, 'referral', '2017-03-09 03:31:36');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('14', '2', '50', '11', NULL, 'referral', '2017-03-09 03:32:07');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('15', '2', '50', '12', NULL, 'referral', '2017-03-09 03:32:57');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('16', '2', '50', '13', NULL, 'referral', '2017-03-09 03:33:26');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('17', '2', '50', '14', NULL, 'referral', '2017-03-09 03:33:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('18', '2', '50', '15', NULL, 'referral', '2017-03-09 03:34:37');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('19', '2', '50', '16', NULL, 'referral', '2017-03-09 03:35:04');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('20', '10', '50', '17', NULL, 'referral', '2017-03-09 03:37:11');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('21', '11', '50', '18', NULL, 'referral', '2017-03-09 03:37:55');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('22', '12', '50', '19', NULL, 'referral', '2017-03-09 03:38:23');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('23', '14', '50', '20', NULL, 'referral', '2017-03-09 03:38:52');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('24', '14', '50', '21', NULL, 'referral', '2017-03-09 03:39:27');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('25', '15', '50', '22', NULL, 'referral', '2017-03-09 03:39:59');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('26', '16', '50', '23', NULL, 'referral', '2017-03-09 03:40:50');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('27', '16', '50', '24', NULL, 'referral', '2017-03-09 03:56:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('28', '22', '50', '25', NULL, 'referral', '2017-03-09 03:57:29');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('29', '22', '50', '26', NULL, 'referral', '2017-03-09 03:58:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('30', '26', '50', '27', NULL, 'referral', '2017-03-09 03:58:50');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('31', '26', '50', '28', NULL, 'referral', '2017-03-09 03:59:28');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('32', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('33', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('34', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('35', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('36', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('37', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('38', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('39', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('40', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('41', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('42', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('43', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('44', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('45', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('46', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('47', '6', '60', '6', 'pairing_6', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('48', '6', '60', '6', 'pairing_6', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('49', '7', '60', '7', 'pairing_7', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('50', '8', '60', '8', 'pairing_8', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('51', '8', '60', '8', 'pairing_8', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('52', '8', '60', '8', 'pairing_8', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('53', '14', '60', '14', 'pairing_14', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('54', '16', '60', '16', 'pairing_16', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('55', '22', '60', '22', 'pairing_22', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('56', '26', '60', '26', 'pairing_26', 'upline', '2017-03-09 11:00:05');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('57', '28', '50', '29', NULL, 'referral', '2017-03-09 04:00:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('58', '28', '50', '30', NULL, 'referral', '2017-03-09 04:00:33');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('59', '17', '50', '31', NULL, 'referral', '2017-03-09 04:01:08');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('60', '17', '50', '32', NULL, 'referral', '2017-03-09 04:01:37');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('61', '32', '50', '33', NULL, 'referral', '2017-03-09 04:02:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('62', '33', '50', '34', NULL, 'referral', '2017-03-09 04:02:54');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('63', '33', '50', '35', NULL, 'referral', '2017-03-09 04:03:25');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('64', '30', '50', '36', NULL, 'referral', '2017-03-09 04:03:58');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('65', '36', '50', '37', NULL, 'referral', '2017-03-09 04:04:32');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('66', '36', '50', '38', NULL, 'referral', '2017-03-09 04:05:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('67', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('68', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('69', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('70', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('71', '2', '60', '2', 'pairing_2', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('72', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('73', '17', '60', '17', 'pairing_17', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('74', '28', '60', '28', 'pairing_28', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('75', '33', '60', '33', 'pairing_33', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('76', '36', '60', '36', 'pairing_36', 'upline', '2017-03-09 11:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('77', '9', '50', '39', NULL, 'referral', '2017-03-09 12:59:45');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('78', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 20:00:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('79', '9', '50', '40', NULL, 'referral', '2017-03-09 13:00:20');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('80', '10', '50', '41', NULL, 'referral', '2017-03-09 13:01:02');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('81', '11', '50', '42', NULL, 'referral', '2017-03-09 13:01:42');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('82', '12', '50', '43', NULL, 'referral', '2017-03-09 13:02:15');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('83', '13', '50', '44', NULL, 'referral', '2017-03-09 13:13:46');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('84', '13', '50', '45', NULL, 'referral', '2017-03-09 13:14:24');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('85', '39', '50', '46', NULL, 'referral', '2017-03-09 13:15:03');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('86', '39', '50', '47', NULL, 'referral', '2017-03-09 13:15:41');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('87', '40', '50', '48', NULL, 'referral', '2017-03-09 13:16:20');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('88', '40', '50', '49', NULL, 'referral', '2017-03-09 13:16:53');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('89', '41', '50', '50', NULL, 'referral', '2017-03-09 13:17:29');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('90', '41', '50', '51', NULL, 'referral', '2017-03-09 13:17:57');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('91', '42', '50', '52', NULL, 'referral', '2017-03-09 13:18:33');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('92', '42', '50', '53', NULL, 'referral', '2017-03-09 13:19:01');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('93', '43', '50', '54', NULL, 'referral', '2017-03-09 13:19:34');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('94', '43', '50', '55', NULL, 'referral', '2017-03-09 13:20:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('95', '20', '50', '56', NULL, 'referral', '2017-03-09 13:20:54');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('96', '20', '50', '57', NULL, 'referral', '2017-03-09 13:21:30');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('97', '15', '50', '58', NULL, 'referral', '2017-03-09 13:22:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('98', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('99', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('100', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('101', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('102', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('103', '3', '60', '3', 'pairing_3', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('104', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('105', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('106', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('107', '4', '60', '4', 'pairing_4', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('108', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('109', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('110', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('111', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('112', '5', '60', '5', 'pairing_5', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('113', '6', '60', '6', 'pairing_6', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('114', '6', '60', '6', 'pairing_6', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('115', '6', '60', '6', 'pairing_6', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('116', '7', '60', '7', 'pairing_7', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('117', '7', '60', '7', 'pairing_7', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('118', '9', '60', '9', 'pairing_9', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('119', '9', '60', '9', 'pairing_9', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('120', '9', '60', '9', 'pairing_9', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('121', '10', '60', '10', 'pairing_10', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('122', '10', '60', '10', 'pairing_10', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('123', '10', '60', '10', 'pairing_10', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('124', '11', '60', '11', 'pairing_11', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('125', '12', '60', '12', 'pairing_12', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('126', '13', '60', '13', 'pairing_13', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('127', '15', '60', '15', 'pairing_15', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('128', '20', '60', '20', 'pairing_20', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('129', '39', '60', '39', 'pairing_39', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('130', '40', '60', '40', 'pairing_40', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('131', '41', '60', '41', 'pairing_41', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('132', '42', '60', '42', 'pairing_42', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('133', '43', '60', '43', 'pairing_43', 'upline', '2017-03-09 20:30:06');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('134', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('135', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('136', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('137', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('138', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('139', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('140', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('141', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('142', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('143', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');
INSERT INTO `commission` (`commission_id`, `c_user_id`, `c_amount`, `r_user_id`, `depth`, `remarks`, `date_create`) VALUES ('144', '2', '60', '2', 'pairing_2', 'upline', '2017-03-10 00:00:09');


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
) ENGINE=InnoDB AUTO_INCREMENT=1428 DEFAULT CHARSET=latin1;

INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1', '2', '2', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('2', '2', '2', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('3', '3', '3', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('4', '4', '4', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('5', '5', '5', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('6', '6', '6', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('7', '7', '7', '0', 'parent', NULL, 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('8', '2', '3', '1', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('9', '2', '3', '1', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('10', '2', '3', '1', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('11', '3', '3', '0', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('15', '2', '4', '1', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('16', '2', '4', '1', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('17', '2', '4', '1', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('18', '4', '4', '0', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('22', '3', '5', '1', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('23', '3', '5', '1', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('24', '2', '5', '2', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('25', '2', '5', '2', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('26', '2', '5', '2', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('27', '3', '5', '1', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('28', '5', '5', '0', 'left', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('29', '3', '6', '1', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('30', '3', '6', '1', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('31', '2', '6', '2', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('32', '2', '6', '2', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('33', '2', '6', '2', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('34', '3', '6', '1', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('35', '6', '6', '0', 'right', 'left', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('36', '4', '7', '1', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('37', '4', '7', '1', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('38', '2', '7', '2', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('39', '2', '7', '2', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('40', '2', '7', '2', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('41', '4', '7', '1', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('42', '7', '7', '0', 'left', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('43', '4', '8', '1', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('44', '4', '8', '1', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('45', '2', '8', '2', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('46', '2', '8', '2', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('47', '2', '8', '2', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('48', '4', '8', '1', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('49', '8', '8', '0', 'right', 'right', 'SystemCreate', '2017-03-09 00:44:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('50', '9', '9', '1', 'parent', '', '1', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('51', '9', '9', '0', 'parent', '', '1', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('53', '5', '9', '1', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('54', '5', '9', '1', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('55', '3', '9', '2', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('56', '3', '9', '2', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('57', '2', '9', '3', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('58', '2', '9', '3', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('59', '2', '9', '3', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('60', '3', '9', '2', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('61', '5', '9', '1', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('62', '9', '9', '0', 'left', 'left', 'luyabaya4', '2017-03-09 03:30:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('68', '10', '10', '1', 'parent', '', '2', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('69', '10', '10', '0', 'parent', '', '2', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('71', '5', '10', '1', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('72', '5', '10', '1', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('73', '3', '10', '2', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('74', '3', '10', '2', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('75', '2', '10', '3', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('76', '2', '10', '3', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('77', '2', '10', '3', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('78', '3', '10', '2', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('79', '5', '10', '1', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('80', '10', '10', '0', 'right', 'left', 'luyabaya4', '2017-03-09 03:31:36');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('86', '11', '11', '1', 'parent', '', '3', '2017-03-09 03:32:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('87', '11', '11', '0', 'parent', '', '3', '2017-03-09 03:32:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('89', '6', '11', '1', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('90', '6', '11', '1', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('91', '3', '11', '2', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('92', '3', '11', '2', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('93', '2', '11', '3', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('94', '2', '11', '3', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('95', '2', '11', '3', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('96', '3', '11', '2', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('97', '6', '11', '1', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('98', '11', '11', '0', 'left', 'left', 'luyabaya5', '2017-03-09 03:32:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('104', '12', '12', '1', 'parent', '', '4', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('105', '12', '12', '0', 'parent', '', '4', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('107', '6', '12', '1', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('108', '6', '12', '1', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('109', '3', '12', '2', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('110', '3', '12', '2', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('111', '2', '12', '3', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('112', '2', '12', '3', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('113', '2', '12', '3', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('114', '3', '12', '2', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('115', '6', '12', '1', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('116', '12', '12', '0', 'right', 'left', 'luyabaya5', '2017-03-09 03:32:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('122', '13', '13', '1', 'parent', '', '5', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('123', '13', '13', '0', 'parent', '', '5', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('125', '7', '13', '1', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('126', '7', '13', '1', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('127', '4', '13', '2', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('128', '4', '13', '2', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('129', '2', '13', '3', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('130', '2', '13', '3', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('131', '2', '13', '3', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('132', '4', '13', '2', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('133', '7', '13', '1', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('134', '13', '13', '0', 'left', 'right', 'luyabaya6', '2017-03-09 03:33:26');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('140', '14', '14', '1', 'parent', '', '6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('141', '14', '14', '0', 'parent', '', '6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('143', '7', '14', '1', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('144', '7', '14', '1', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('145', '4', '14', '2', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('146', '4', '14', '2', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('147', '2', '14', '3', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('148', '2', '14', '3', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('149', '2', '14', '3', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('150', '4', '14', '2', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('151', '7', '14', '1', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('152', '14', '14', '0', 'right', 'right', 'luyabaya6', '2017-03-09 03:33:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('158', '15', '15', '1', 'parent', '', '7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('159', '15', '15', '0', 'parent', '', '7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('161', '8', '15', '1', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('162', '4', '15', '2', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('163', '4', '15', '2', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('164', '2', '15', '3', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('165', '2', '15', '3', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('166', '2', '15', '3', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('167', '4', '15', '2', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('168', '8', '15', '1', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('169', '15', '15', '0', 'left', 'right', 'luyabaya7', '2017-03-09 03:34:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('176', '16', '16', '1', 'parent', '', '8', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('177', '16', '16', '0', 'parent', '', '8', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('179', '8', '16', '1', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('180', '4', '16', '2', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('181', '4', '16', '2', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('182', '2', '16', '3', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('183', '2', '16', '3', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('184', '2', '16', '3', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('185', '4', '16', '2', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('186', '8', '16', '1', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('187', '16', '16', '0', 'right', 'right', 'luyabaya7', '2017-03-09 03:35:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('194', '17', '17', '1', 'parent', '', '9', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('195', '17', '17', '0', 'parent', '', '9', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('197', '10', '17', '1', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('198', '10', '17', '2', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('199', '10', '17', '1', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('200', '5', '17', '2', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('201', '5', '17', '2', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('202', '3', '17', '3', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('203', '3', '17', '3', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('204', '2', '17', '4', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('205', '2', '17', '4', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('206', '2', '17', '4', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('207', '3', '17', '3', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('208', '5', '17', '2', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('209', '10', '17', '1', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('210', '17', '17', '0', 'right', 'right', '2', '2017-03-09 03:37:11');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('212', '18', '18', '1', 'parent', '', '10', '2017-03-09 03:37:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('213', '18', '18', '0', 'parent', '', '10', '2017-03-09 03:37:55');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('215', '11', '18', '1', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('216', '11', '18', '2', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('217', '11', '18', '1', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('218', '6', '18', '2', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('219', '6', '18', '2', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('220', '3', '18', '3', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('221', '3', '18', '3', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('222', '2', '18', '4', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('223', '2', '18', '4', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('224', '2', '18', '4', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('225', '3', '18', '3', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('226', '6', '18', '2', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('227', '11', '18', '1', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('228', '18', '18', '0', 'right', 'right', '3', '2017-03-09 03:37:56');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('230', '19', '19', '1', 'parent', '', '11', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('231', '19', '19', '0', 'parent', '', '11', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('233', '12', '19', '1', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('234', '12', '19', '2', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('235', '12', '19', '1', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('236', '6', '19', '2', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('237', '6', '19', '2', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('238', '3', '19', '3', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('239', '3', '19', '3', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('240', '2', '19', '4', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('241', '2', '19', '4', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('242', '2', '19', '4', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('243', '3', '19', '3', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('244', '6', '19', '2', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('245', '12', '19', '1', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('246', '19', '19', '0', 'left', 'left', '4', '2017-03-09 03:38:23');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('248', '20', '20', '1', 'parent', '', '12', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('249', '20', '20', '0', 'parent', '', '12', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('251', '14', '20', '1', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('252', '14', '20', '2', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('253', '14', '20', '1', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('254', '7', '20', '2', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('255', '7', '20', '2', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('256', '4', '20', '3', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('257', '4', '20', '3', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('258', '2', '20', '4', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('259', '2', '20', '4', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('260', '2', '20', '4', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('261', '4', '20', '3', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('262', '7', '20', '2', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('263', '14', '20', '1', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('264', '20', '20', '0', 'left', 'left', '6', '2017-03-09 03:38:52');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('266', '21', '21', '1', 'parent', '', '13', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('267', '21', '21', '0', 'parent', '', '13', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('269', '14', '21', '1', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('270', '14', '21', '2', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('271', '14', '21', '1', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('272', '7', '21', '2', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('273', '7', '21', '2', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('274', '4', '21', '3', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('275', '4', '21', '3', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('276', '2', '21', '4', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('277', '2', '21', '4', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('278', '2', '21', '4', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('279', '4', '21', '3', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('280', '7', '21', '2', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('281', '14', '21', '1', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('282', '21', '21', '0', 'right', 'right', '6', '2017-03-09 03:39:27');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('284', '22', '22', '1', 'parent', '', '14', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('285', '22', '22', '0', 'parent', '', '14', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('287', '15', '22', '1', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('288', '15', '22', '2', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('289', '15', '22', '1', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('290', '8', '22', '2', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('291', '4', '22', '3', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('292', '4', '22', '3', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('293', '2', '22', '4', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('294', '2', '22', '4', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('295', '2', '22', '4', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('296', '4', '22', '3', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('297', '8', '22', '2', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('298', '15', '22', '1', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('299', '22', '22', '0', 'left', 'left', '7', '2017-03-09 03:39:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('302', '23', '23', '1', 'parent', '', '15', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('303', '23', '23', '0', 'parent', '', '15', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('305', '16', '23', '1', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('306', '16', '23', '2', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('307', '16', '23', '1', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('308', '8', '23', '2', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('309', '4', '23', '3', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('310', '4', '23', '3', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('311', '2', '23', '4', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('312', '2', '23', '4', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('313', '2', '23', '4', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('314', '4', '23', '3', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('315', '8', '23', '2', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('316', '16', '23', '1', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('317', '23', '23', '0', 'left', 'left', '8', '2017-03-09 03:40:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('320', '24', '24', '1', 'parent', '', '16', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('321', '24', '24', '0', 'parent', '', '16', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('323', '16', '24', '1', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('324', '16', '24', '2', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('325', '16', '24', '1', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('326', '8', '24', '2', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('327', '4', '24', '3', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('328', '4', '24', '3', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('329', '2', '24', '4', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('330', '2', '24', '4', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('331', '2', '24', '4', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('332', '4', '24', '3', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('333', '8', '24', '2', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('334', '16', '24', '1', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('335', '24', '24', '0', 'right', 'right', '8', '2017-03-09 03:56:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('338', '25', '25', '1', 'parent', '', '17', '2017-03-09 03:57:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('339', '25', '25', '0', 'parent', '', '17', '2017-03-09 03:57:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('341', '22', '25', '1', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('342', '22', '25', '2', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('343', '22', '25', '1', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('344', '15', '25', '2', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('345', '15', '25', '3', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('346', '15', '25', '2', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('347', '8', '25', '3', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('348', '4', '25', '4', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('349', '4', '25', '4', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('350', '2', '25', '5', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('351', '2', '25', '5', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('352', '2', '25', '5', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('353', '4', '25', '4', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('354', '8', '25', '3', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('355', '15', '25', '2', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('356', '22', '25', '1', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('357', '25', '25', '0', 'left', 'left', '14', '2017-03-09 03:57:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('372', '26', '26', '1', 'parent', '', '18', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('373', '26', '26', '0', 'parent', '', '18', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('375', '22', '26', '1', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('376', '22', '26', '2', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('377', '22', '26', '1', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('378', '15', '26', '2', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('379', '15', '26', '3', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('380', '15', '26', '2', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('381', '8', '26', '3', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('382', '4', '26', '4', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('383', '4', '26', '4', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('384', '2', '26', '5', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('385', '2', '26', '5', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('386', '2', '26', '5', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('387', '4', '26', '4', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('388', '8', '26', '3', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('389', '15', '26', '2', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('390', '22', '26', '1', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('391', '26', '26', '0', 'right', 'right', '14', '2017-03-09 03:58:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('406', '27', '27', '1', 'parent', '', '19', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('407', '27', '27', '0', 'parent', '', '19', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('409', '26', '27', '1', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('410', '26', '27', '2', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('411', '26', '27', '1', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('412', '22', '27', '2', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('413', '22', '27', '3', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('414', '22', '27', '2', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('415', '15', '27', '3', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('416', '15', '27', '4', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('417', '15', '27', '3', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('418', '8', '27', '4', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('419', '4', '27', '5', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('420', '4', '27', '5', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('421', '2', '27', '6', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('422', '2', '27', '6', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('423', '2', '27', '6', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('424', '4', '27', '5', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('425', '8', '27', '4', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('426', '15', '27', '3', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('427', '22', '27', '2', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('428', '26', '27', '1', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('429', '27', '27', '0', 'left', 'left', '18', '2017-03-09 03:58:50');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('440', '28', '28', '1', 'parent', '', '20', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('441', '28', '28', '0', 'parent', '', '20', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('443', '26', '28', '1', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('444', '26', '28', '2', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('445', '26', '28', '1', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('446', '22', '28', '2', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('447', '22', '28', '3', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('448', '22', '28', '2', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('449', '15', '28', '3', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('450', '15', '28', '4', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('451', '15', '28', '3', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('452', '8', '28', '4', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('453', '4', '28', '5', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('454', '4', '28', '5', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('455', '2', '28', '6', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('456', '2', '28', '6', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('457', '2', '28', '6', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('458', '4', '28', '5', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('459', '8', '28', '4', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('460', '15', '28', '3', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('461', '22', '28', '2', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('462', '26', '28', '1', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('463', '28', '28', '0', 'right', 'right', '18', '2017-03-09 03:59:28');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('474', '29', '29', '1', 'parent', '', '21', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('475', '29', '29', '0', 'parent', '', '21', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('477', '28', '29', '1', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('478', '28', '29', '2', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('479', '28', '29', '1', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('480', '26', '29', '2', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('481', '26', '29', '3', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('482', '26', '29', '2', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('483', '22', '29', '3', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('484', '22', '29', '4', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('485', '22', '29', '3', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('486', '15', '29', '4', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('487', '15', '29', '5', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('488', '15', '29', '4', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('489', '8', '29', '5', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('490', '4', '29', '6', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('491', '4', '29', '6', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('492', '2', '29', '7', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('493', '2', '29', '7', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('494', '2', '29', '7', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('495', '4', '29', '6', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('496', '8', '29', '5', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('497', '15', '29', '4', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('498', '22', '29', '3', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('499', '26', '29', '2', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('500', '28', '29', '1', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('501', '29', '29', '0', 'left', 'left', '20', '2017-03-09 04:00:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('508', '30', '30', '1', 'parent', '', '22', '2017-03-09 04:00:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('509', '30', '30', '0', 'parent', '', '22', '2017-03-09 04:00:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('511', '28', '30', '1', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('512', '28', '30', '2', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('513', '28', '30', '1', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('514', '26', '30', '2', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('515', '26', '30', '3', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('516', '26', '30', '2', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('517', '22', '30', '3', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('518', '22', '30', '4', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('519', '22', '30', '3', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('520', '15', '30', '4', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('521', '15', '30', '5', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('522', '15', '30', '4', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('523', '8', '30', '5', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('524', '4', '30', '6', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('525', '4', '30', '6', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('526', '2', '30', '7', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('527', '2', '30', '7', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('528', '2', '30', '7', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('529', '4', '30', '6', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('530', '8', '30', '5', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('531', '15', '30', '4', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('532', '22', '30', '3', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('533', '26', '30', '2', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('534', '28', '30', '1', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('535', '30', '30', '0', 'right', 'right', '20', '2017-03-09 04:00:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('542', '31', '31', '1', 'parent', '', '23', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('543', '31', '31', '0', 'parent', '', '23', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('545', '17', '31', '1', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('546', '17', '31', '2', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('547', '17', '31', '1', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('548', '10', '31', '2', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('549', '10', '31', '3', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('550', '10', '31', '2', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('551', '5', '31', '3', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('552', '5', '31', '3', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('553', '3', '31', '4', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('554', '3', '31', '4', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('555', '2', '31', '5', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('556', '2', '31', '5', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('557', '2', '31', '5', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('558', '3', '31', '4', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('559', '5', '31', '3', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('560', '10', '31', '2', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('561', '17', '31', '1', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('562', '31', '31', '0', 'left', 'left', '9', '2017-03-09 04:01:08');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('576', '32', '32', '1', 'parent', '', '24', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('577', '32', '32', '0', 'parent', '', '24', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('579', '17', '32', '1', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('580', '17', '32', '2', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('581', '17', '32', '1', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('582', '10', '32', '2', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('583', '10', '32', '3', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('584', '10', '32', '2', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('585', '5', '32', '3', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('586', '5', '32', '3', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('587', '3', '32', '4', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('588', '3', '32', '4', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('589', '2', '32', '5', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('590', '2', '32', '5', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('591', '2', '32', '5', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('592', '3', '32', '4', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('593', '5', '32', '3', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('594', '10', '32', '2', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('595', '17', '32', '1', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('596', '32', '32', '0', 'right', 'right', '9', '2017-03-09 04:01:37');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('610', '33', '33', '1', 'parent', '', '25', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('611', '33', '33', '0', 'parent', '', '25', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('613', '32', '33', '1', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('614', '32', '33', '2', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('615', '32', '33', '1', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('616', '17', '33', '2', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('617', '17', '33', '3', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('618', '17', '33', '2', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('619', '10', '33', '3', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('620', '10', '33', '4', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('621', '10', '33', '3', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('622', '5', '33', '4', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('623', '5', '33', '4', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('624', '3', '33', '5', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('625', '3', '33', '5', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('626', '2', '33', '6', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('627', '2', '33', '6', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('628', '2', '33', '6', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('629', '3', '33', '5', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('630', '5', '33', '4', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('631', '10', '33', '3', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('632', '17', '33', '2', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('633', '32', '33', '1', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('634', '33', '33', '0', 'left', 'left', '24', '2017-03-09 04:02:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('644', '34', '34', '1', 'parent', '', '26', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('645', '34', '34', '0', 'parent', '', '26', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('647', '33', '34', '1', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('648', '33', '34', '2', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('649', '33', '34', '1', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('650', '32', '34', '2', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('651', '32', '34', '3', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('652', '32', '34', '2', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('653', '17', '34', '3', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('654', '17', '34', '4', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('655', '17', '34', '3', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('656', '10', '34', '4', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('657', '10', '34', '5', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('658', '10', '34', '4', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('659', '5', '34', '5', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('660', '5', '34', '5', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('661', '3', '34', '6', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('662', '3', '34', '6', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('663', '2', '34', '7', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('664', '2', '34', '7', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('665', '2', '34', '7', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('666', '3', '34', '6', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('667', '5', '34', '5', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('668', '10', '34', '4', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('669', '17', '34', '3', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('670', '32', '34', '2', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('671', '33', '34', '1', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('672', '34', '34', '0', 'left', 'left', '25', '2017-03-09 04:02:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('678', '35', '35', '1', 'parent', '', '27', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('679', '35', '35', '0', 'parent', '', '27', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('681', '33', '35', '1', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('682', '33', '35', '2', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('683', '33', '35', '1', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('684', '32', '35', '2', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('685', '32', '35', '3', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('686', '32', '35', '2', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('687', '17', '35', '3', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('688', '17', '35', '4', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('689', '17', '35', '3', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('690', '10', '35', '4', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('691', '10', '35', '5', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('692', '10', '35', '4', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('693', '5', '35', '5', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('694', '5', '35', '5', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('695', '3', '35', '6', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('696', '3', '35', '6', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('697', '2', '35', '7', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('698', '2', '35', '7', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('699', '2', '35', '7', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('700', '3', '35', '6', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('701', '5', '35', '5', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('702', '10', '35', '4', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('703', '17', '35', '3', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('704', '32', '35', '2', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('705', '33', '35', '1', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('706', '35', '35', '0', 'right', 'right', '25', '2017-03-09 04:03:25');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('712', '36', '36', '1', 'parent', '', '28', '2017-03-09 04:03:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('713', '36', '36', '0', 'parent', '', '28', '2017-03-09 04:03:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('715', '30', '36', '1', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('716', '30', '36', '2', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('717', '30', '36', '1', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('718', '28', '36', '2', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('719', '28', '36', '3', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('720', '28', '36', '2', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('721', '26', '36', '3', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('722', '26', '36', '4', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('723', '26', '36', '3', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('724', '22', '36', '4', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('725', '22', '36', '5', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('726', '22', '36', '4', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('727', '15', '36', '5', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('728', '15', '36', '6', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('729', '15', '36', '5', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('730', '8', '36', '6', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('731', '4', '36', '7', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('732', '4', '36', '7', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('733', '2', '36', '8', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('734', '2', '36', '8', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('735', '2', '36', '8', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('736', '4', '36', '7', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('737', '8', '36', '6', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('738', '15', '36', '5', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('739', '22', '36', '4', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('740', '26', '36', '3', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('741', '28', '36', '2', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('742', '30', '36', '1', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('743', '36', '36', '0', 'left', 'left', '22', '2017-03-09 04:03:59');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('746', '37', '37', '1', 'parent', '', '29', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('747', '37', '37', '0', 'parent', '', '29', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('749', '36', '37', '1', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('750', '36', '37', '2', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('751', '36', '37', '1', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('752', '30', '37', '2', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('753', '30', '37', '3', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('754', '30', '37', '2', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('755', '28', '37', '3', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('756', '28', '37', '4', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('757', '28', '37', '3', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('758', '26', '37', '4', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('759', '26', '37', '5', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('760', '26', '37', '4', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('761', '22', '37', '5', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('762', '22', '37', '6', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('763', '22', '37', '5', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('764', '15', '37', '6', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('765', '15', '37', '7', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('766', '15', '37', '6', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('767', '8', '37', '7', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('768', '4', '37', '8', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('769', '4', '37', '8', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('770', '2', '37', '9', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('771', '2', '37', '9', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('772', '2', '37', '9', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('773', '4', '37', '8', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('774', '8', '37', '7', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('775', '15', '37', '6', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('776', '22', '37', '5', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('777', '26', '37', '4', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('778', '28', '37', '3', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('779', '30', '37', '2', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('780', '36', '37', '1', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('781', '37', '37', '0', 'left', 'left', '28', '2017-03-09 04:04:32');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('812', '38', '38', '1', 'parent', '', '30', '2017-03-09 04:05:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('813', '38', '38', '0', 'parent', '', '30', '2017-03-09 04:05:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('815', '36', '38', '1', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('816', '36', '38', '2', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('817', '36', '38', '1', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('818', '30', '38', '2', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('819', '30', '38', '3', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('820', '30', '38', '2', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('821', '28', '38', '3', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('822', '28', '38', '4', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('823', '28', '38', '3', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('824', '26', '38', '4', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('825', '26', '38', '5', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('826', '26', '38', '4', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('827', '22', '38', '5', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('828', '22', '38', '6', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('829', '22', '38', '5', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('830', '15', '38', '6', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('831', '15', '38', '7', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('832', '15', '38', '6', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('833', '8', '38', '7', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('834', '4', '38', '8', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('835', '4', '38', '8', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('836', '2', '38', '9', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('837', '2', '38', '9', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('838', '2', '38', '9', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('839', '4', '38', '8', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('840', '8', '38', '7', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('841', '15', '38', '6', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('842', '22', '38', '5', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('843', '26', '38', '4', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('844', '28', '38', '3', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('845', '30', '38', '2', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('846', '36', '38', '1', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('847', '38', '38', '0', 'right', 'right', '28', '2017-03-09 04:05:04');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('878', '39', '39', '1', 'parent', '', '31', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('879', '39', '39', '0', 'parent', '', '31', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('881', '9', '39', '1', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('882', '9', '39', '2', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('883', '9', '39', '1', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('884', '5', '39', '2', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('885', '5', '39', '2', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('886', '3', '39', '3', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('887', '3', '39', '3', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('888', '2', '39', '4', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('889', '2', '39', '4', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('890', '2', '39', '4', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('891', '3', '39', '3', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('892', '5', '39', '2', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('893', '9', '39', '1', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('894', '39', '39', '0', 'left', 'left', '1', '2017-03-09 12:59:45');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('896', '40', '40', '1', 'parent', '', '32', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('897', '40', '40', '0', 'parent', '', '32', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('899', '9', '40', '1', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('900', '9', '40', '2', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('901', '9', '40', '1', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('902', '5', '40', '2', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('903', '5', '40', '2', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('904', '3', '40', '3', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('905', '3', '40', '3', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('906', '2', '40', '4', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('907', '2', '40', '4', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('908', '2', '40', '4', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('909', '3', '40', '3', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('910', '5', '40', '2', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('911', '9', '40', '1', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('912', '40', '40', '0', 'right', 'right', '1', '2017-03-09 13:00:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('914', '41', '41', '1', 'parent', '', '33', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('915', '41', '41', '0', 'parent', '', '33', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('917', '10', '41', '1', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('918', '10', '41', '2', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('919', '10', '41', '1', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('920', '5', '41', '2', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('921', '5', '41', '2', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('922', '3', '41', '3', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('923', '3', '41', '3', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('924', '2', '41', '4', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('925', '2', '41', '4', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('926', '2', '41', '4', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('927', '3', '41', '3', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('928', '5', '41', '2', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('929', '10', '41', '1', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('930', '41', '41', '0', 'left', 'left', '2', '2017-03-09 13:01:02');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('932', '42', '42', '1', 'parent', '', '34', '2017-03-09 13:01:42');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('933', '42', '42', '0', 'parent', '', '34', '2017-03-09 13:01:42');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('935', '11', '42', '1', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('936', '11', '42', '2', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('937', '11', '42', '1', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('938', '6', '42', '2', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('939', '6', '42', '2', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('940', '3', '42', '3', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('941', '3', '42', '3', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('942', '2', '42', '4', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('943', '2', '42', '4', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('944', '2', '42', '4', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('945', '3', '42', '3', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('946', '6', '42', '2', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('947', '11', '42', '1', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('948', '42', '42', '0', 'left', 'left', '3', '2017-03-09 13:01:43');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('950', '43', '43', '1', 'parent', '', '35', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('951', '43', '43', '0', 'parent', '', '35', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('953', '12', '43', '1', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('954', '12', '43', '2', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('955', '12', '43', '1', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('956', '6', '43', '2', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('957', '6', '43', '2', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('958', '3', '43', '3', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('959', '3', '43', '3', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('960', '2', '43', '4', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('961', '2', '43', '4', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('962', '2', '43', '4', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('963', '3', '43', '3', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('964', '6', '43', '2', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('965', '12', '43', '1', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('966', '43', '43', '0', 'right', 'right', '4', '2017-03-09 13:02:15');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('968', '44', '44', '1', 'parent', '', '36', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('969', '44', '44', '0', 'parent', '', '36', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('971', '13', '44', '1', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('972', '13', '44', '2', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('973', '13', '44', '1', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('974', '7', '44', '2', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('975', '7', '44', '2', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('976', '4', '44', '3', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('977', '4', '44', '3', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('978', '2', '44', '4', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('979', '2', '44', '4', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('980', '2', '44', '4', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('981', '4', '44', '3', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('982', '7', '44', '2', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('983', '13', '44', '1', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('984', '44', '44', '0', 'left', 'left', '5', '2017-03-09 13:13:46');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('986', '45', '45', '1', 'parent', '', '37', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('987', '45', '45', '0', 'parent', '', '37', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('989', '13', '45', '1', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('990', '13', '45', '2', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('991', '13', '45', '1', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('992', '7', '45', '2', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('993', '7', '45', '2', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('994', '4', '45', '3', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('995', '4', '45', '3', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('996', '2', '45', '4', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('997', '2', '45', '4', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('998', '2', '45', '4', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('999', '4', '45', '3', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1000', '7', '45', '2', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1001', '13', '45', '1', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1002', '45', '45', '0', 'right', 'right', '5', '2017-03-09 13:14:24');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1004', '46', '46', '1', 'parent', '', '38', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1005', '46', '46', '0', 'parent', '', '38', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1007', '39', '46', '1', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1008', '39', '46', '2', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1009', '39', '46', '1', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1010', '9', '46', '2', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1011', '9', '46', '3', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1012', '9', '46', '2', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1013', '5', '46', '3', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1014', '5', '46', '3', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1015', '3', '46', '4', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1016', '3', '46', '4', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1017', '2', '46', '5', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1018', '2', '46', '5', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1019', '2', '46', '5', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1020', '3', '46', '4', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1021', '5', '46', '3', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1022', '9', '46', '2', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1023', '39', '46', '1', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1024', '46', '46', '0', 'left', 'left', '31', '2017-03-09 13:15:03');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1038', '47', '47', '1', 'parent', '', '39', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1039', '47', '47', '0', 'parent', '', '39', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1041', '39', '47', '1', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1042', '39', '47', '2', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1043', '39', '47', '1', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1044', '9', '47', '2', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1045', '9', '47', '3', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1046', '9', '47', '2', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1047', '5', '47', '3', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1048', '5', '47', '3', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1049', '3', '47', '4', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1050', '3', '47', '4', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1051', '2', '47', '5', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1052', '2', '47', '5', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1053', '2', '47', '5', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1054', '3', '47', '4', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1055', '5', '47', '3', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1056', '9', '47', '2', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1057', '39', '47', '1', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1058', '47', '47', '0', 'right', 'right', '31', '2017-03-09 13:15:41');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1072', '48', '48', '1', 'parent', '', '40', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1073', '48', '48', '0', 'parent', '', '40', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1075', '40', '48', '1', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1076', '40', '48', '2', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1077', '40', '48', '1', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1078', '9', '48', '2', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1079', '9', '48', '3', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1080', '9', '48', '2', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1081', '5', '48', '3', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1082', '5', '48', '3', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1083', '3', '48', '4', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1084', '3', '48', '4', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1085', '2', '48', '5', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1086', '2', '48', '5', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1087', '2', '48', '5', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1088', '3', '48', '4', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1089', '5', '48', '3', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1090', '9', '48', '2', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1091', '40', '48', '1', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1092', '48', '48', '0', 'left', 'left', '32', '2017-03-09 13:16:20');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1106', '49', '49', '1', 'parent', '', '41', '2017-03-09 13:16:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1107', '49', '49', '0', 'parent', '', '41', '2017-03-09 13:16:53');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1109', '40', '49', '1', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1110', '40', '49', '2', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1111', '40', '49', '1', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1112', '9', '49', '2', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1113', '9', '49', '3', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1114', '9', '49', '2', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1115', '5', '49', '3', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1116', '5', '49', '3', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1117', '3', '49', '4', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1118', '3', '49', '4', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1119', '2', '49', '5', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1120', '2', '49', '5', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1121', '2', '49', '5', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1122', '3', '49', '4', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1123', '5', '49', '3', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1124', '9', '49', '2', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1125', '40', '49', '1', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1126', '49', '49', '0', 'right', 'right', '32', '2017-03-09 13:16:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1140', '50', '50', '1', 'parent', '', '42', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1141', '50', '50', '0', 'parent', '', '42', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1143', '41', '50', '1', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1144', '41', '50', '2', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1145', '41', '50', '1', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1146', '10', '50', '2', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1147', '10', '50', '3', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1148', '10', '50', '2', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1149', '5', '50', '3', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1150', '5', '50', '3', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1151', '3', '50', '4', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1152', '3', '50', '4', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1153', '2', '50', '5', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1154', '2', '50', '5', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1155', '2', '50', '5', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1156', '3', '50', '4', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1157', '5', '50', '3', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1158', '10', '50', '2', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1159', '41', '50', '1', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1160', '50', '50', '0', 'left', 'left', '33', '2017-03-09 13:17:29');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1174', '51', '51', '1', 'parent', '', '43', '2017-03-09 13:17:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1175', '51', '51', '0', 'parent', '', '43', '2017-03-09 13:17:57');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1177', '41', '51', '1', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1178', '41', '51', '2', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1179', '41', '51', '1', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1180', '10', '51', '2', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1181', '10', '51', '3', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1182', '10', '51', '2', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1183', '5', '51', '3', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1184', '5', '51', '3', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1185', '3', '51', '4', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1186', '3', '51', '4', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1187', '2', '51', '5', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1188', '2', '51', '5', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1189', '2', '51', '5', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1190', '3', '51', '4', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1191', '5', '51', '3', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1192', '10', '51', '2', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1193', '41', '51', '1', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1194', '51', '51', '0', 'right', 'right', '33', '2017-03-09 13:17:58');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1208', '52', '52', '1', 'parent', '', '44', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1209', '52', '52', '0', 'parent', '', '44', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1211', '42', '52', '1', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1212', '42', '52', '2', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1213', '42', '52', '1', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1214', '11', '52', '2', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1215', '11', '52', '3', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1216', '11', '52', '2', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1217', '6', '52', '3', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1218', '6', '52', '3', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1219', '3', '52', '4', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1220', '3', '52', '4', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1221', '2', '52', '5', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1222', '2', '52', '5', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1223', '2', '52', '5', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1224', '3', '52', '4', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1225', '6', '52', '3', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1226', '11', '52', '2', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1227', '42', '52', '1', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1228', '52', '52', '0', 'left', 'left', '34', '2017-03-09 13:18:33');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1242', '53', '53', '1', 'parent', '', '45', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1243', '53', '53', '0', 'parent', '', '45', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1245', '42', '53', '1', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1246', '42', '53', '2', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1247', '42', '53', '1', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1248', '11', '53', '2', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1249', '11', '53', '3', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1250', '11', '53', '2', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1251', '6', '53', '3', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1252', '6', '53', '3', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1253', '3', '53', '4', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1254', '3', '53', '4', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1255', '2', '53', '5', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1256', '2', '53', '5', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1257', '2', '53', '5', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1258', '3', '53', '4', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1259', '6', '53', '3', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1260', '11', '53', '2', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1261', '42', '53', '1', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1262', '53', '53', '0', 'right', 'right', '34', '2017-03-09 13:19:01');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1276', '54', '54', '1', 'parent', '', '46', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1277', '54', '54', '0', 'parent', '', '46', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1279', '43', '54', '1', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1280', '43', '54', '2', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1281', '43', '54', '1', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1282', '12', '54', '2', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1283', '12', '54', '3', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1284', '12', '54', '2', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1285', '6', '54', '3', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1286', '6', '54', '3', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1287', '3', '54', '4', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1288', '3', '54', '4', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1289', '2', '54', '5', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1290', '2', '54', '5', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1291', '2', '54', '5', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1292', '3', '54', '4', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1293', '6', '54', '3', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1294', '12', '54', '2', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1295', '43', '54', '1', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1296', '54', '54', '0', 'left', 'left', '35', '2017-03-09 13:19:34');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1310', '55', '55', '1', 'parent', '', '47', '2017-03-09 13:20:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1311', '55', '55', '0', 'parent', '', '47', '2017-03-09 13:20:06');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1313', '43', '55', '1', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1314', '43', '55', '2', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1315', '43', '55', '1', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1316', '12', '55', '2', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1317', '12', '55', '3', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1318', '12', '55', '2', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1319', '6', '55', '3', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1320', '6', '55', '3', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1321', '3', '55', '4', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1322', '3', '55', '4', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1323', '2', '55', '5', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1324', '2', '55', '5', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1325', '2', '55', '5', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1326', '3', '55', '4', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1327', '6', '55', '3', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1328', '12', '55', '2', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1329', '43', '55', '1', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1330', '55', '55', '0', 'right', 'right', '35', '2017-03-09 13:20:07');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1344', '56', '56', '1', 'parent', '', '48', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1345', '56', '56', '0', 'parent', '', '48', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1347', '20', '56', '1', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1348', '20', '56', '2', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1349', '20', '56', '1', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1350', '14', '56', '2', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1351', '14', '56', '3', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1352', '14', '56', '2', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1353', '7', '56', '3', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1354', '7', '56', '3', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1355', '4', '56', '4', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1356', '4', '56', '4', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1357', '2', '56', '5', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1358', '2', '56', '5', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1359', '2', '56', '5', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1360', '4', '56', '4', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1361', '7', '56', '3', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1362', '14', '56', '2', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1363', '20', '56', '1', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1364', '56', '56', '0', 'left', 'left', '12', '2017-03-09 13:20:54');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1378', '57', '57', '1', 'parent', '', '49', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1379', '57', '57', '0', 'parent', '', '49', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1381', '20', '57', '1', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1382', '20', '57', '2', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1383', '20', '57', '1', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1384', '14', '57', '2', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1385', '14', '57', '3', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1386', '14', '57', '2', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1387', '7', '57', '3', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1388', '7', '57', '3', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1389', '4', '57', '4', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1390', '4', '57', '4', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1391', '2', '57', '5', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1392', '2', '57', '5', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1393', '2', '57', '5', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1394', '4', '57', '4', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1395', '7', '57', '3', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1396', '14', '57', '2', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1397', '20', '57', '1', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1398', '57', '57', '0', 'right', 'right', '12', '2017-03-09 13:21:30');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1412', '58', '58', '1', 'parent', '', '50', '2017-03-09 13:22:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1413', '58', '58', '0', 'parent', '', '50', '2017-03-09 13:22:09');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1415', '15', '58', '1', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1416', '15', '58', '2', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1417', '15', '58', '1', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1418', '8', '58', '2', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1419', '4', '58', '3', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1420', '4', '58', '3', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1421', '2', '58', '4', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1422', '2', '58', '4', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1423', '2', '58', '4', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1424', '4', '58', '3', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1425', '8', '58', '2', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1426', '15', '58', '1', 'right', 'right', '7', '2017-03-09 13:22:10');
INSERT INTO `hierarchy` (`p_id`, `parent`, `child`, `depth`, `position`, `m_position`, `created_by`, `datetime`) VALUES ('1427', '58', '58', '0', 'right', 'right', '7', '2017-03-09 13:22:10');


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
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('1', '2', '0', 'Luyabaya 1', '2', 'parent', 'parent');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('2', '3', '1', 'Luyabaya 2', '2', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('3', '4', '1', 'Luyabaya 3', '2', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('4', '8', '2', 'Luyabaya 7', '4', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('5', '7', '2', 'Luyabaya 6', '4', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('6', '6', '2', 'Luyabaya 5', '3', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('7', '5', '2', 'Luyabaya 4', '3', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('8', '16', '3', '8 8', '8', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('9', '15', '3', '7 7', '8', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('10', '14', '3', '6 6', '7', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('11', '13', '3', '5 5', '7', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('12', '12', '3', '4 4', '6', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('13', '11', '3', '3 3', '6', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('14', '10', '3', '2 2', '5', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('15', '9', '3', '1 1', '5', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('16', '39', '4', '31 31', '9', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('17', '40', '4', '32 32', '9', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('18', '41', '4', '33 33', '10', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('19', '42', '4', '34 34', '11', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('20', '43', '4', '35 35', '12', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('21', '44', '4', '36 36', '13', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('22', '45', '4', '37 37', '13', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('23', '58', '4', '50 50', '15', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('24', '20', '4', '12 12', '14', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('25', '18', '4', '10 10', '11', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('26', '21', '4', '13 13', '14', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('27', '22', '4', '14 14', '15', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('28', '23', '4', '15 15', '16', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('29', '17', '4', '9 9', '10', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('30', '19', '4', '11 11', '12', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('31', '24', '4', '16 16', '16', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('32', '57', '5', '49 49', '20', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('33', '56', '5', '48 48', '20', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('34', '55', '5', '47 47', '43', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('35', '54', '5', '46 46', '43', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('36', '52', '5', '44 44', '42', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('37', '46', '5', '38 38', '39', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('38', '47', '5', '39 39', '39', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('39', '48', '5', '40 40', '40', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('40', '53', '5', '45 45', '42', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('41', '50', '5', '42 42', '41', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('42', '49', '5', '41 41', '40', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('43', '25', '5', '17 17', '22', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('44', '26', '5', '18 18', '22', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('45', '31', '5', '23 23', '17', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('46', '32', '5', '24 24', '17', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('47', '51', '5', '43 43', '41', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('48', '33', '6', '25 25', '32', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('49', '27', '6', '19 19', '26', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('50', '28', '6', '20 20', '26', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('51', '34', '7', '26 26', '33', 'left', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('52', '29', '7', '21 21', '28', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('53', '35', '7', '27 27', '33', 'right', 'left');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('54', '30', '7', '22 22', '28', 'right', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('55', '36', '8', '28 28', '30', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('56', '37', '9', '29 29', '36', 'left', 'right');
INSERT INTO `luyabaya_tree` (`id`, `child`, `depth`, `full_name`, `parent`, `position`, `m_position`) VALUES ('57', '38', '9', '30 30', '36', 'right', 'right');


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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('1', '2', '3', '4', '2', '2');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('2', '3', '5', '6', '2', '3');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('3', '4', '7', '8', '2', '4');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('4', '5', '9', '10', '2', '5');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('5', '6', '11', '12', '2', '6');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('6', '7', '13', '14', '2', '7');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('7', '8', '15', '16', '2', '8');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('8', '9', '39', '40', '2', '9');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('9', '10', '41', '17', '2', '10');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('10', '11', '42', '18', '2', '11');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('11', '12', '19', '43', '2', '12');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('12', '13', '44', '45', '2', '13');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('13', '14', '20', '21', '2', '14');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('14', '15', '22', '58', '2', '15');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('15', '16', '23', '24', '2', '16');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('16', '17', '31', '32', '10', '17');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('17', '18', '', '', '11', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('18', '19', '', '', '12', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('19', '20', '56', '57', '14', '20');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('20', '21', '', '', '14', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('21', '22', '25', '26', '15', '22');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('22', '23', '', '', '16', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('23', '24', '', '', '16', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('24', '25', '', '', '22', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('25', '26', '27', '28', '22', '26');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('26', '27', '', '', '26', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('27', '28', '29', '30', '26', '28');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('28', '29', '', '', '28', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('29', '30', '36', '', '28', '30');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('30', '31', '', '', '17', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('31', '32', '33', '', '17', '32');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('32', '33', '34', '35', '32', '33');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('33', '34', '', '', '33', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('34', '35', '', '', '33', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('35', '36', '37', '38', '30', '36');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('36', '37', '', '', '36', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('37', '38', '', '', '36', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('38', '39', '46', '47', '9', '39');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('39', '40', '48', '49', '9', '40');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('40', '41', '50', '51', '10', '41');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('41', '42', '52', '53', '11', '42');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('42', '43', '54', '55', '12', '43');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('43', '44', '', '', '13', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('44', '45', '', '', '13', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('45', '46', '', '', '39', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('46', '47', '', '', '39', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('47', '48', '', '', '40', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('48', '49', '', '', '40', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('49', '50', '', '', '41', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('50', '51', '', '', '41', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('51', '52', '', '', '42', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('52', '53', '', '', '42', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('53', '54', '', '', '43', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('54', '55', '', '', '43', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('55', '56', '', '', '20', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('56', '57', '', '', '20', '');
INSERT INTO `position` (`position_id`, `user_id`, `position_left`, `position_right`, `sponsor_by`, `upline`) VALUES ('57', '58', '', '', '15', '');


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
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('1', 'admin', '12345', 'Luyabaya', 'Admin', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '', '1', 'luyabaya@gmail.com', '');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('2', 'luyabaya1', '12345', 'Luyabaya', '1', '', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('3', 'luyabaya2', '12345', 'Luyabaya', '2', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya2@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('4', 'luyabaya3', '12345', 'Luyabaya', '3', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya3@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('5', 'luyabaya4', '12345', 'Luyabaya', '4', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya4@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('6', 'luyabaya5', '12345', 'Luyabaya', '5', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya5@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('7', 'luyabaya6', '12345', 'Luyabaya', '6', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya6@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('8', 'luyabaya7', '12345', 'Luyabaya', '7', 'M', '(082) 282 8849', 'Jacinto Extension (Infront of Blueberry Hotel), Davao City, Philippines', '2017-03-09 00:44:53', '1', '0', 'luyabaya7@gmail.com', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('9', '1', '1', '1', '1', '1', '1', '1', '2017-03-09 10:30:55', NULL, '0', '', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('10', '2', '2', '2', '2', '2', '2', '2', '2017-03-09 10:31:36', NULL, '0', '2', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('11', '3', '3', '3', '3', '3', '3', '3', '2017-03-09 10:32:07', NULL, '0', '3', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('12', '4', '4', '4', '4', '4', '4', '4', '2017-03-09 10:32:57', NULL, '0', '4', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('13', '5', '5', '5', '5', '5', '5', '5', '2017-03-09 10:33:26', NULL, '0', '5', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('14', '6', '6', '6', '6', '6', '6', '6', '2017-03-09 10:33:53', NULL, '0', '6', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('15', '7', '7', '7', '7', '7', '7', '7', '2017-03-09 10:34:37', NULL, '0', '7', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('16', '8', '8', '8', '8', '8', '8', '8', '2017-03-09 10:35:04', NULL, '0', '8', '2');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('17', '9', '9', '9', '9', '9', '9', '9', '2017-03-09 10:37:11', NULL, '0', '9', '10');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('18', '10', '10', '10', '10', '10', '10', '10', '2017-03-09 10:37:55', NULL, '0', '10', '11');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('19', '11', '11', '11', '11', '11', '11', '11', '2017-03-09 10:38:23', NULL, '0', '11', '12');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('20', '12', '12', '12', '12', '12', '12', '12', '2017-03-09 10:38:52', NULL, '0', '12', '14');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('21', '13', '13', '13', '13', '13', '13', '13', '2017-03-09 10:39:27', NULL, '0', '13', '14');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('22', '14', '14', '14', '14', '14', '14', '14', '2017-03-09 10:39:59', NULL, '0', '14', '15');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('23', '15', '15', '15', '15', '15', '15', '15', '2017-03-09 10:40:50', NULL, '0', '15', '16');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('24', '16', '16', '16', '16', '16', '16', '16', '2017-03-09 10:56:53', NULL, '0', '16', '16');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('25', '17', '17', '17', '17', '17', '17', '17', '2017-03-09 10:57:29', NULL, '0', '17', '22');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('26', '18', '18', '18', '18', '18', '18', '18', '2017-03-09 10:58:03', NULL, '0', '18', '22');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('27', '19', '19', '19', '19', '19', '19', '19', '2017-03-09 10:58:50', NULL, '0', '19', '26');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('28', '20', '20', '20', '20', '20', '20', '20', '2017-03-09 10:59:28', NULL, '0', '20', '26');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('29', '21', '21', '21', '21', '21', '21', '21', '2017-03-09 11:00:06', NULL, '0', '21', '28');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('30', '22', '22', '22', '22', '22', '22', '22', '2017-03-09 11:00:33', NULL, '0', '22', '28');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('31', '23', '23', '23', '23', '23', '23', '23', '2017-03-09 11:01:08', NULL, '0', '23', '17');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('32', '24', '24', '24', '24', '24', '24', '24', '2017-03-09 11:01:37', NULL, '0', '24', '17');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('33', '25', '25', '25', '25', '25', '25', '25', '2017-03-09 11:02:09', NULL, '0', '25', '32');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('34', '26', '26', '26', '26', '26', '26', '26', '2017-03-09 11:02:54', NULL, '0', '26', '33');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('35', '27', '27', '27', '27', '27', '27', '27', '2017-03-09 11:03:25', NULL, '0', '27', '33');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('36', '28', '28', '28', '28', '28', '28', '28', '2017-03-09 11:03:58', NULL, '0', '28', '30');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('37', '29', '29', '29', '29', '29', '29', '29', '2017-03-09 11:04:32', NULL, '0', '29', '36');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('38', '30', '30', '30', '30', '30', '30', '30', '2017-03-09 11:05:03', NULL, '0', '30', '36');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('39', '31', '31', '31', '31', '31', '31', '31', '2017-03-09 19:59:45', NULL, '0', '31', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('40', '32', '32', '32', '32', '32', '32', '32', '2017-03-09 20:00:20', NULL, '0', '32', '9');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('41', '33', '33', '33', '33', '33', '33', '33', '2017-03-09 20:01:02', NULL, '0', '33', '10');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('42', '34', '34', '34', '34', '34', '34', '34', '2017-03-09 20:01:42', NULL, '0', '34', '11');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('43', '35', '35', '35', '35', '35', '35', '35', '2017-03-09 20:02:15', NULL, '0', '35', '12');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('44', '36', '36', '36', '36', '36', '36', '36', '2017-03-09 20:13:46', NULL, '0', '36', '13');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('45', '37', '37', '37', '37', '37', '37', '37', '2017-03-09 20:14:24', NULL, '0', '37', '13');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('46', '38', '38', '38', '38', '38', '38', '38', '2017-03-09 20:15:03', NULL, '0', '38', '39');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('47', '39', '39', '39', '39', '39', '39', '39', '2017-03-09 20:15:41', NULL, '0', '39', '39');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('48', '40', '40', '40', '40', '40', '40', '40', '2017-03-09 20:16:20', NULL, '0', '40', '40');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('49', '41', '41', '41', '41', '41', '41', '41', '2017-03-09 20:16:53', NULL, '0', '41', '40');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('50', '42', '42', '42', '42', '42', '42', '42', '2017-03-09 20:17:29', NULL, '0', '42', '41');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('51', '43', '43', '43', '43', '43', '43', '43', '2017-03-09 20:17:57', NULL, '0', '43', '41');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('52', '44', '44', '44', '44', '44', '44', '44', '2017-03-09 20:18:33', NULL, '0', '44', '42');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('53', '45', '45', '45', '45', '45', '45', '45', '2017-03-09 20:19:01', NULL, '0', '45', '42');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('54', '46', '46', '46', '46', '46', '46', '46', '2017-03-09 20:19:34', NULL, '0', '46', '43');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('55', '47', '47', '47', '47', '47', '47', '47', '2017-03-09 20:20:06', NULL, '0', '47', '43');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('56', '48', '48', '48', '48', '48', '48', '48', '2017-03-09 20:20:54', NULL, '0', '48', '20');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('57', '49', '49', '49', '49', '49', '49', '49', '2017-03-09 20:21:30', NULL, '0', '49', '20');
INSERT INTO `users` (`user_id`, `user_name`, `password`, `first_name`, `last_name`, `gender`, `contact`, `address`, `entered_on`, `status`, `position`, `email`, `sponsor_by`) VALUES ('58', '50', '50', '50', '50', '50', '50', '50', '2017-03-09 20:22:09', NULL, '0', '50', '15');


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

