-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 03-04-2018 a las 15:26:15
-- Versión del servidor: 10.1.29-MariaDB-6
-- Versión de PHP: 7.1.15-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eBrokerAuth`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `functions`
--

CREATE TABLE `functions` (
  `id` int(11) NOT NULL,
  `Code` char(5) NOT NULL,
  `Name` char(30) NOT NULL,
  `Descripcion` char(100) NOT NULL,
  `Created` datetime NOT NULL,
  `Updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `functionsinrole`
--

CREATE TABLE `functionsinrole` (
  `id` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `FunctionId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `organizations`
--

CREATE TABLE `organizations` (
  `id` int(11) NOT NULL,
  `Code` char(10) NOT NULL,
  `Name` char(40) NOT NULL,
  `Primary_user` int(11) DEFAULT NULL,
  `Type` char(1) NOT NULL COMMENT 'Tiene el tipo de la organización que podrá ser alguno de los siguientes valores:\nC: Compania de Seguros\nP: Productor\nO: Organizador',
  `Enrollment_code` char(5) DEFAULT NULL COMMENT 'Representa la matricula asignada por la Superintendencia de Seguros.\nEn el caso de la propia compania de Seguros, podra usarse un valor dummy o dejarlo libre',
  `Created` datetime NOT NULL,
  `Updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productororganizador`
--

CREATE TABLE `productororganizador` (
  `id` int(11) NOT NULL,
  `ProductoId` int(11) NOT NULL,
  `OrganizadorId` int(11) NOT NULL,
  `FechaInicioVigencia` datetime DEFAULT NULL,
  `FechaFinVigencia` datetime DEFAULT NULL,
  `MaxComisionProductor` decimal(6,3) DEFAULT NULL,
  `ComisionOrganizador` decimal(6,3) DEFAULT NULL,
  `MaxSumaAseguradoMuerte` decimal(16,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `code` char(10) NOT NULL,
  `Name` char(20) NOT NULL,
  `Description` char(200) NOT NULL,
  `Created` datetime NOT NULL,
  `Updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `FirstName` char(50) NOT NULL,
  `LastName` char(50) NOT NULL,
  `email` char(60) NOT NULL,
  `password` char(255) NOT NULL,
  `matricula` varchar(16) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `disabled_on` datetime DEFAULT NULL,
  `reset_token` varchar(128) NOT NULL,
  `reset_date` datetime NOT NULL,
  `token` varchar(256) NOT NULL,
  `token_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usersinorganization`
--

CREATE TABLE `usersinorganization` (
  `id` int(11) NOT NULL,
  `OrganizationId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usersinrole`
--

CREATE TABLE `usersinrole` (
  `id` int(11) NOT NULL,
  `RoleId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `functions`
--
ALTER TABLE `functions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Code` (`Code`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indices de la tabla `functionsinrole`
--
ALTER TABLE `functionsinrole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FunctionsInRole_fk0` (`RoleId`),
  ADD KEY `FunctionsInRole_fk1` (`FunctionId`);

--
-- Indices de la tabla `organizations`
--
ALTER TABLE `organizations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Organizations_fk0` (`Primary_user`);

--
-- Indices de la tabla `productororganizador`
--
ALTER TABLE `productororganizador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx-productororganizador-ProductoId` (`ProductoId`),
  ADD KEY `idx-productororganizador-OrganizadorId` (`OrganizadorId`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `usersinorganization`
--
ALTER TABLE `usersinorganization`
  ADD PRIMARY KEY (`id`),
  ADD KEY `OrganizationUsers_fk0` (`OrganizationId`),
  ADD KEY `OrganizationUsers_fk1` (`UserId`);

--
-- Indices de la tabla `usersinrole`
--
ALTER TABLE `usersinrole`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UsersInRole_fk0` (`RoleId`),
  ADD KEY `UsersInRole_fk1` (`UserId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `functions`
--
ALTER TABLE `functions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `functionsinrole`
--
ALTER TABLE `functionsinrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT de la tabla `organizations`
--
ALTER TABLE `organizations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `productororganizador`
--
ALTER TABLE `productororganizador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usersinorganization`
--
ALTER TABLE `usersinorganization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `usersinrole`
--
ALTER TABLE `usersinrole`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `functionsinrole`
--
ALTER TABLE `functionsinrole`
  ADD CONSTRAINT `FunctionsInRole_fk0` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `FunctionsInRole_fk1` FOREIGN KEY (`FunctionId`) REFERENCES `functions` (`id`);

--
-- Filtros para la tabla `organizations`
--
ALTER TABLE `organizations`
  ADD CONSTRAINT `Organizations_fk0` FOREIGN KEY (`Primary_user`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `productororganizador`
--
ALTER TABLE `productororganizador`
  ADD CONSTRAINT `fk-productororganizador-OrganizadorId` FOREIGN KEY (`OrganizadorId`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk-productororganizador-ProductoId` FOREIGN KEY (`ProductoId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usersinorganization`
--
ALTER TABLE `usersinorganization`
  ADD CONSTRAINT `OrganizationUsers_fk0` FOREIGN KEY (`OrganizationId`) REFERENCES `organizations` (`id`),
  ADD CONSTRAINT `OrganizationUsers_fk1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `usersinrole`
--
ALTER TABLE `usersinrole`
  ADD CONSTRAINT `UsersInRole_fk0` FOREIGN KEY (`RoleId`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `UsersInRole_fk1` FOREIGN KEY (`UserId`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
