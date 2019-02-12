CREATE TABLE `c1200155_Auth`.`AuthorizedLog` (
 `id` INT NOT NULL AUTO_INCREMENT , `Method` VARCHAR(20) NOT NULL ,
 `FunctionCode` VARCHAR(150) NOT NULL ,
 `UserToken` VARCHAR(255) NOT NULL ,
 `IPv4` VARCHAR(20) NOT NULL ,
 `Params` TEXT NOT NULL ,
 PRIMARY KEY (`id`)) ENGINE = InnoDB;
 ALTER TABLE `AuthorizedLog` ADD `DateTime` DATETIME NOT NULL AFTER `Params`;

CREATE TABLE `c1200155_Auth`.`UsersTokenLog` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `IdUser` INT(11) NOT NULL ,
  `Token` VARCHAR(256) NOT NULL ,
  `DateTime` DATETIME NOT NULL ,
  PRIMARY KEY (`id`)) ENGINE = InnoDB;

ALTER TABLE `AuthorizedLog` CHANGE `Method` `Method` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL, CHANGE `FunctionCode` `FunctionCode` VARCHAR(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL, CHANGE `UserToken` `UserToken` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL, CHANGE `IPv4` `IPv4` VARCHAR(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL, CHANGE `Params` `Params` TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL;
