CREATE TABLE IF NOT EXISTS `tgiann_job` (
  `citizenid` varchar(50) DEFAULT NULL,
  `farmer` int(11) DEFAULT 0,
  `construction` int(11) DEFAULT 0,
  `diver` int(11) DEFAULT 0,
  `truck` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;