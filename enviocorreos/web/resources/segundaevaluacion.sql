-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2017 a las 17:56:45
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `segundaevaluacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `correos`
--

CREATE TABLE IF NOT EXISTS `correos` (
`idCorreo` int(11) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `correos`
--

INSERT INTO `correos` (`idCorreo`, `correo`, `idUsuario`) VALUES
(1, 'ma412@misena.edu.co', 1),
(13, 'jefersontoro21@gmail.com', 18),
(14, 'jefersontoro21@gmail.com', 19),
(15, 'jefersontoro21@gmail.com', 20),
(16, 'jefersontoro21@gmail.com', 21),
(17, 'jefersontoro21@gmail.com', 22),
(18, 'jefersontoro21@gmail.com', 23),
(19, 'jefersontoro21@gmail.com', 24),
(20, 'jefersontoro21@gmail.com', 25),
(21, 'jefersontoro21@gmail.com', 26),
(22, 'jefersontoro21@gmail.com', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`idRol` int(11) NOT NULL,
  `nombreRol` varchar(45) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `nombreRol`) VALUES
(1, 'Administrador'),
(2, 'Cliente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefonos`
--

CREATE TABLE IF NOT EXISTS `telefonos` (
`idTelefono` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=23 ;

--
-- Volcado de datos para la tabla `telefonos`
--

INSERT INTO `telefonos` (`idTelefono`, `numero`, `idUsuario`) VALUES
(1, 301778629, 1),
(13, 11110, 18),
(14, 11110, 19),
(15, 11110, 20),
(16, 11110, 21),
(17, 11110, 22),
(18, 11110, 23),
(19, 11110, 24),
(20, 11110, 25),
(21, 11110, 26),
(22, 11110, 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`idUsuario` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `cedula` int(11) NOT NULL,
  `clave` varchar(45) NOT NULL,
  `idRol` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=28 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `cedula`, `clave`, `idRol`) VALUES
(1, 'Mariana', 'Martinez', 990306, '123', 1),
(8, 'Jeferson', 'Toro', 1092909, 'ICE7R4', 2),
(18, 'jeferson', 'toro', 12345688, 'S2C7K3', 2),
(19, 'jeferson', 'toro', 12345688, 'P904O4', 2),
(20, 'jeferson', 'toro', 12345688, '7USD81', 2),
(21, 'jeferson', 'toro', 12345688, 'DOKGEM', 2),
(22, 'jeferson', 'toro', 12345688, 'T93PZ6', 2),
(23, 'jeferson', 'toro', 12345688, 'S4ENIL', 2),
(24, 'jeferson', 'toro', 12345688, 'W723KA', 2),
(25, 'jeferson', 'toro', 12345688, '1TLT4V', 2),
(26, 'jeferson', 'toro', 12345688, 'REMKC0', 2),
(27, 'jeferson', 'toro', 12345688, '9CDALC', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `correos`
--
ALTER TABLE `correos`
 ADD PRIMARY KEY (`idCorreo`), ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `telefonos`
--
ALTER TABLE `telefonos`
 ADD PRIMARY KEY (`idTelefono`), ADD KEY `idUsuario` (`idUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`idUsuario`), ADD KEY `idRol` (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `correos`
--
ALTER TABLE `correos`
MODIFY `idCorreo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `telefonos`
--
ALTER TABLE `telefonos`
MODIFY `idTelefono` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `correos`
--
ALTER TABLE `correos`
ADD CONSTRAINT `correos_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `telefonos`
--
ALTER TABLE `telefonos`
ADD CONSTRAINT `telefonos_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
