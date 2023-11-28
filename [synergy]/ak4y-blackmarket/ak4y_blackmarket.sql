CREATE TABLE IF NOT EXISTS `ak4y_blackmarket` (
  `#` int(11) NOT NULL AUTO_INCREMENT,
  `citizenid` varchar(50) DEFAULT NULL,
  `currentXP` int(11) DEFAULT NULL,
  `tasks` longtext DEFAULT NULL,
  `taskResetTime` datetime DEFAULT NULL,
  PRIMARY KEY (`#`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;