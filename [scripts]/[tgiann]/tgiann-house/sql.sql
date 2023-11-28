CREATE TABLE IF NOT EXISTS `tgiann_house` (
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `owner` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `houseKeys` longtext CHARACTER SET utf8 DEFAULT NULL,
  `garage` longtext DEFAULT NULL,
  `interior` longtext DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `tgiann_player_last_house` (
  `citizenid` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `house` varchar(255) CHARACTER SET utf8 DEFAULT NULL
);