ALTER TABLE `users` ADD `reset_token` VARCHAR(128) NOT NULL AFTER `disabled_on`, ADD `reset_date` DATETIME NOT NULL AFTER `reset_token`;

ALTER TABLE `users` DROP `Organization_code`;
ALTER TABLE `users` ADD `matricula` VARCHAR(16) NOT NULL AFTER `password`;

ALTER TABLE `users` ADD `token` VARCHAR(256) NOT NULL AFTER `reset_date`;
ALTER TABLE `users` ADD `token_datetime` DATETIME NOT NULL AFTER `token`;
ALTER TABLE `users` CHANGE `password` `password` CHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;