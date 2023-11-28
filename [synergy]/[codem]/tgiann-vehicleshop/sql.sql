CREATE TABLE IF NOT EXISTS `tgiann_vehicleshop` (
  `data` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `tgiann_vehicleshop_cardealer_vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb3;

CREATE TABLE IF NOT EXISTS `tgiann_vehicleshop_vehicle_sold` (
  `client` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `plate` varchar(50) NOT NULL,
  `soldby` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  PRIMARY KEY (`plate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;