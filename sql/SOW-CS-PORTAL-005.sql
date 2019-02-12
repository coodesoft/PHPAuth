ALTER TABLE `c1200155_Auth`.`Users` ADD COLUMN `profile_code` INT NULL AFTER `UserTypeCode`;

CREATE TABLE `c1200155_Auth`.`Profiles` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ProfileName` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `c1200155_Auth`.`DocumentTypes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `DocumentCode` VARCHAR(5) NOT NULL,
  `DocumentName` VARCHAR(45) NOT NULL,
  `DocumentDescription` VARCHAR(255) NULL,
  `ObjectType` INT NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `c1200155_Auth`.`ObjectType` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `FileExtension` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE `c1200155_Auth`.`DocumentsPerProfile` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `IdDocument` INT NOT NULL,
  `IdProfile` INT NOT NULL,
  PRIMARY KEY (`Id`));


-- Actualizacion de datos
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='1' WHERE `id`='1';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='2' WHERE `id`='2';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='3' WHERE `id`='7';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='4' WHERE `id`='9';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='5' WHERE `id`='10';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='6' WHERE `id`='11';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='7' WHERE `id`='12';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='8' WHERE `id`='14';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='9' WHERE `id`='15';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='10' WHERE `id`='16';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='11' WHERE `id`='17';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='12' WHERE `id`='18';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='13' WHERE `id`='20';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='14' WHERE `id`='21';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='15' WHERE `id`='22';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='16' WHERE `id`='28';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='17' WHERE `id`='29';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='18' WHERE `id`='30';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='19' WHERE `id`='31';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='20' WHERE `id`='32';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='21' WHERE `id`='33';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='22' WHERE `id`='34';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='23' WHERE `id`='35';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='24' WHERE `id`='36';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='25' WHERE `id`='37';
UPDATE `c1200155_Auth`.`Users` SET `profile_code`='26' WHERE `id`='38';

INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');
INSERT INTO `c1200155_Auth`.`Profiles` (`ProfileName`) VALUES ('-');

INSERT INTO `c1200155_Auth`.`ObjectType` (`Name`, `FileExtension`) VALUES ('PDF', '.pdf');

INSERT INTO `c1200155_Auth`.`DocumentTypes` (`DocumentCode`, `DocumentName`, `DocumentDescription`, `ObjectType`) VALUES ('POL', 'Poliza', 'Impresión de póliza completa', '1');
INSERT INTO `c1200155_Auth`.`DocumentTypes` (`DocumentCode`, `DocumentName`, `ObjectType`) VALUES ('END', 'Endoso', '1');

INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '1');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '2');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '3');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '4');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '5');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '6');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '7');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '8');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '9');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '10');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '11');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '12');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '13');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '14');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '15');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '16');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '17');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '18');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '19');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '20');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '21');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '22');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '23');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '24');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '25');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('1', '26');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '1');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '2');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '3');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '4');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '5');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '6');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '7');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '8');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '9');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '10');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '11');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '12');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '13');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '14');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '15');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '16');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '17');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '18');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '19');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '20');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '21');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '22');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '23');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '24');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '25');
INSERT INTO `c1200155_Auth`.`DocumentsPerProfile` (`IdDocument`, `IdProfile`) VALUES ('2', '26');

-- Se agrega nuevo campo para especificar visibilida de documentos en caso de poliza expirada
ALTER TABLE `c1200155_Auth`.`DocumentTypes` ADD COLUMN `VisiblePolizaExpired` TINYINT(1) NULL AFTER `ObjectType`;
UPDATE `c1200155_Auth`.`DocumentTypes` SET `VisiblePolizaExpired`='0' WHERE `id`='1';
UPDATE `c1200155_Auth`.`DocumentTypes` SET `VisiblePolizaExpired`='1' WHERE `id`='2';

-- Se agrega campo para especificar el tipo de documento
ALTER TABLE `c1200155_Auth`.`DocumentTypes` ADD COLUMN `IDTipo` VARCHAR(45) NULL AFTER `VisiblePolizaExpired`;
UPDATE `c1200155_Auth`.`DocumentTypes` SET `IDTipo`='X' WHERE `id`='1';
UPDATE `c1200155_Auth`.`DocumentTypes` SET `IDTipo`='C' WHERE `id`='2';
