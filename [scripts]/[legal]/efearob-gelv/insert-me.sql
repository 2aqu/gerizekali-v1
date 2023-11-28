DROP TABLE IF EXISTS `mdt_charges`;
CREATE TABLE IF NOT EXISTS `mdt_charges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` longtext CHARACTER SET utf8 DEFAULT NULL,
  `data` longtext DEFAULT '[]',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `mdt_evidences`;
CREATE TABLE IF NOT EXISTS `mdt_evidences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `desc` longtext DEFAULT NULL,
  `involved_people` longtext CHARACTER SET utf8 DEFAULT NULL,
  `images` longtext CHARACTER SET utf8 DEFAULT NULL,
  `time` longtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `mdt_incidents`;
CREATE TABLE IF NOT EXISTS `mdt_incidents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` mediumtext DEFAULT NULL,
  `description` mediumtext DEFAULT NULL,
  `involved` mediumtext DEFAULT NULL,
  `cops` mediumtext DEFAULT NULL,
  `vehicles` mediumtext DEFAULT NULL,
  `evidences` mediumtext DEFAULT NULL,
  `fines` mediumtext DEFAULT NULL,
  `time` mediumtext DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `mdt_profiles`;
CREATE TABLE IF NOT EXISTS `mdt_profiles` (
  `identifier` mediumtext DEFAULT NULL,
  `gallery` mediumtext DEFAULT NULL,
  `licenses` mediumtext DEFAULT NULL,
  `photo` mediumtext DEFAULT NULL,
  `information` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `mdt_warrants`;
CREATE TABLE IF NOT EXISTS `mdt_warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext DEFAULT NULL,
  `reason` longtext DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `involved_people` longtext DEFAULT NULL,
  `involved_cops` longtext DEFAULT NULL,
  `involved_vehicles` longtext DEFAULT NULL,
  `adress` varchar(50) DEFAULT NULL,
  `time` varchar(100) DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;