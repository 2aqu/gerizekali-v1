CREATE TABLE IF NOT EXISTS `vehicle_shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(50) NOT NULL,
  `money` int(11) NOT NULL DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `vehicles` longtext NOT NULL,
  `categories` longtext NOT NULL DEFAULT '{}',
  `employees` longtext NOT NULL DEFAULT '{}',
  `logs` longtext NOT NULL DEFAULT '{}',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shop_id` (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;