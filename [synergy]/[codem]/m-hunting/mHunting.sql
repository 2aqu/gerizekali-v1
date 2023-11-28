CREATE TABLE `m_hunting` (
	`identifier` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`level` INT(11) NULL DEFAULT NULL,
	`xp` INT(11) NULL DEFAULT NULL,
	`huntedanimals` INT(11) NULL DEFAULT NULL,
	`hunts` INT(11) NULL DEFAULT NULL,
	`recenthunts` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb3_general_ci',
	`name` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci',
	`image` LONGTEXT NULL DEFAULT NULL COLLATE 'utf8mb4_unicode_ci'
)
COLLATE='utf8mb3_general_ci'
ENGINE=InnoDB
;