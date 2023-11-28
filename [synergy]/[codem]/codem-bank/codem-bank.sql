CREATE TABLE IF NOT EXISTS `codem_bank_data` (
  `identifier` varchar(50) DEFAULT NULL,
  `loans` longtext DEFAULT NULL,
  `spendData` longtext DEFAULT NULL,
  `transaction` longtext DEFAULT NULL,
  `notify` longtext DEFAULT NULL,
  `blockAccount` tinyint(4) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DELETE FROM `codem_bank_data`;

CREATE TABLE IF NOT EXISTS `codem_bank_society_log` (
  `accountname` varchar(50) DEFAULT NULL,
  `identifiers` longtext DEFAULT NULL,
  `spendData` longtext DEFAULT NULL,
  `notify` longtext DEFAULT NULL,
  `transaction` longtext DEFAULT NULL,
  UNIQUE KEY `accountname` (`accountname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DELETE FROM `codem_bank_society_log`;