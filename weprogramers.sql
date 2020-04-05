-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-04-2020 a las 20:23:22
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `weprogramers`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL COMMENT 'identificador unico del usuario',
  `nombre` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `mail` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `telefono` char(13) COLLATE utf16_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `permisos` int(11) NOT NULL DEFAULT 0 COMMENT '0 : Usuario normal. 1 : Administrador'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `mail`, `telefono`, `password`, `fecha_nacimiento`, `permisos`) VALUES
(1, 'Gonzalo', 'Horton', 'gonzaalo_2013@hotmail.com', 'gonzalo120', 'gonzalo120', '2020-03-18 00:00:00', 0),
(2, 'Damian', 'Horton', 'gonzaalo_2020@hotmail.com', '1134567', '123ASD', '2020-03-10 00:00:00', 0),
(48, '1', '1', 'asd1', '1', '1', '0000-00-00 00:00:00', 0),
(49, '1', '1', '1', '1', '1', '2020-04-23 00:00:00', 0),
(50, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(51, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(52, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(53, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(54, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(55, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(56, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(57, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(58, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0),
(59, '1', '1', '1', '12', '1', '2020-04-15 00:00:00', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT COMMENT 'identificador unico del usuario', AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
