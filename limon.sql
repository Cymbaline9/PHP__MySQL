-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-10-2017 a las 02:29:36
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `limon`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cod_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cod_categoria`, `nombre_categoria`) VALUES
(1, 'Televisores'),
(2, 'Computadoras'),
(3, 'Impresoras'),
(4, 'Notebooks'),
(5, 'Heladeras'),
(6, 'Telefonos'),
(7, 'Lavarropas'),
(8, 'Camaras digitales'),
(9, 'Video camaras'),
(10, 'Estufas'),
(11, 'Aire acondicionado'),
(12, 'Radio'),
(13, 'Home Theater');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `cod_marca` int(11) NOT NULL,
  `nombre_marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`cod_marca`, `nombre_marca`) VALUES
(1, 'SANYO'),
(2, 'SONY'),
(3, 'LG'),
(4, 'AOC'),
(5, 'SAMSUNG'),
(6, 'TOSHIBA'),
(7, 'HEWLETT PACKARD'),
(8, 'EPSON'),
(9, 'KODAK'),
(10, 'PHILCO'),
(11, 'HITACHI'),
(12, 'ADMIRAL'),
(13, 'NOBLEX'),
(14, 'PHILIPS'),
(15, 'COMPAQ PRESARIO'),
(16, 'X-VIEW'),
(17, 'KEN BROWN'),
(18, 'RANSER'),
(19, 'PATRICK'),
(20, 'SIGMA'),
(21, 'GAFA'),
(22, 'WESTINGHOUSE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `cod_categoria` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `precio` double NOT NULL,
  `stock` int(11) NOT NULL,
  `cod_marca` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `cod_categoria`, `nombre`, `precio`, `stock`, `cod_marca`, `foto`) VALUES
(1, 1, 'TV LCD 19" MODELO PFL3403', 2199, 40, 14, 'fotos/foto1.png'),
(2, 1, 'TV LCD22" MODELO LN22A450', 2399, 30, 5, ''),
(3, 1, 'TV LCD 32" MODELO LC813H ', 2999, 25, 13, ''),
(4, 1, 'TV LCD 26" MODELO 26LG30R', 2999, 25, 3, ''),
(5, 1, 'TV LCD 26" MODELO CDH-L26S02', 3099, 20, 11, ''),
(6, 1, 'TV LCD 32" MODELO PL3219 ', 3399, 20, 10, ''),
(7, 2, 'CPU LE1250DVD2GB160VS', 2199, 15, 12, ''),
(8, 2, 'CPU A64X246DV2G160VBOF ', 2499, 8, 12, ''),
(9, 2, 'CPU E5200DVDR2GB320VB ', 2699, 5, 12, ''),
(10, 2, 'CPU SG3308LA ', 3099, 5, 15, ''),
(11, 3, 'IMPRESORA T23 ', 219, 18, 8, ''),
(12, 3, 'IMPRESORA DJ-6940 ', 349, 20, 7, ''),
(13, 3, 'IMPRESORA T33', 399, 12, 8, ''),
(14, 3, 'IMPRESORA K5400  ', 499, 8, 7, ''),
(15, 13, 'HOME CINEMA SPH70 ', 319, 0, 10, ''),
(16, 13, 'HOME CINEMA AMX115 ', 419, 0, 13, ''),
(17, 13, 'HOME CINEMA HT E 860 ', 599, 0, 16, ''),
(18, 13, 'HOME CINEMA DC-T990 ', 759, 5, 1, ''),
(19, 13, 'HOME CINEMA HT-1105U', 829, 18, 13, ''),
(20, 13, 'HOME CINEMA HT304SL-A2 ', 949, 6, 3, ''),
(21, 13, 'HOME CINEMA HT-Z110 ', 999, 22, 5, ''),
(22, 13, 'HOME CINEMA HTS3011/55', 1099, 18, 14, ''),
(23, 13, 'HOME CINEMA HT503SH', 1299, 15, 3, ''),
(24, 13, 'HOME CINEMA HT503SH-AM', 1299, 12, 3, ''),
(25, 13, 'HOME CINEMA HT-IS10', 1499, 7, 2, ''),
(26, 13, 'HOME CINEMA HTS3365/55', 1599, 5, 14, ''),
(27, 12, 'RADIO PORT RP 299  ', 49, 5, 13, 'fotos/20171006021736_Chrysanthemum.jpg'),
(28, 12, 'RADIO DX-365', 79, 15, 17, ''),
(29, 12, 'RADIO ICF-S10MK2/SCE', 79, 15, 2, ''),
(30, 12, 'RADIO ICF-18  ', 99, 15, 2, ''),
(31, 12, 'RADIO ICF-303/304 AM-FM ', 129, 8, 2, ''),
(32, 12, 'RADIO SRF-59/SC E ', 129, 10, 2, ''),
(33, 4, 'NOTEBOOK C2D2VB250WC14', 3699, 12, 12, ''),
(34, 4, 'NOTEBOOK CQ40-300', 2999, 9, 15, ''),
(35, 4, 'NOTEBOOK DV2-1010', 3999, 7, 7, ''),
(36, 4, 'NOTEBOOK DV4-1212', 4199, 9, 7, ''),
(37, 4, 'NOTEBOOK DV4-1212', 4199, 10, 7, ''),
(38, 6, 'TELEFONO DECT1221S INALAMBRICO', 169, 15, 14, ''),
(39, 6, 'TELEFONO CD1401B INALAMBRICO', 169, 8, 14, ''),
(40, 6, 'TELEFONO CD2401S INALAMBRICO', 239, 8, 14, ''),
(41, 6, 'TELEFONO CD1302S INALAMBRICO', 249, 8, 14, ''),
(42, 6, 'TELEFONO SANYO HNS-3300 ', 69, 10, 1, ''),
(43, 7, 'LAVARROPA GAFA 7000 DIG PROGR 7KG', 1679, 7, 21, ''),
(44, 7, 'LAVARROPA GAFA 7500 T750 7,5K ', 1839, 4, 21, ''),
(45, 7, 'LAVARROPA GAFA ACQ7500 GRAFT750 7,5K ', 1939, 12, 21, ''),
(46, 7, 'LAVARROPA LG WF-T1202TP 12KG C/S', 2449, 10, 3, ''),
(47, 7, 'LAVARROPA LG WF-T1205TP 12K TITANIUM', 2499, 10, 3, ''),
(48, 8, 'CAMARA DIGITAL KODAK C813', 549, 10, 9, ''),
(49, 8, 'CAMARA DIGITAL VPCS-870EX ', 579, 15, 1, ''),
(50, 8, 'CAMARA DIGITAL C913', 599, 15, 9, ''),
(51, 8, 'CAMARA DIGITAL 760+KIT', 649, 15, 5, ''),
(52, 8, 'CAMARA DIGITAL ES10', 749, 20, 5, ''),
(53, 8, 'CAMARA DIGITAL ES15 ', 799, 40, 5, ''),
(54, 9, 'CAMARA VIDEO DCR-DVD650', 2749, 15, 2, ''),
(55, 9, 'CAMARA VIDEO DCR-DVD810 ', 2999, 10, 2, ''),
(56, 10, 'CALEFACTOR TB 2400 GN', 459, 12, 20, ''),
(57, 10, 'CALEFACTOR TB 3000 GN', 699, 12, 20, ''),
(58, 10, 'CALEFACTOR TB 5000 GN', 1999, 15, 20, ''),
(59, 11, 'AIRE ACONDICIONADOR SP TS-C096EMAO 2200FS', 1999, 15, 3, ''),
(60, 11, 'AIRE ACONDICIONADOR SP TS-C096EMAO 2200FS ', 1999, 10, 3, ''),
(61, 11, 'AIRE ACONDICIONADOR SP TS-C126EMAO 3000FS', 2249, 10, 3, ''),
(62, 11, 'AIRE ACONDICIONADOR SP TS-C1865DLO 4500FS', 3049, 20, 3, ''),
(63, 11, 'AIRE ACONDICIONADOR SP LS-C1863RMO 4500FS', 3349, 20, 3, ''),
(64, 11, 'AIRE ACONDICIONADOR SP WSX09CG5R 2500WFS', 1599, 15, 22, ''),
(65, 0, 'zzz', 2999, 12, 15, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `clave` varchar(2000) NOT NULL,
  `token` varchar(2000) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `id_perfil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `clave`, `token`, `activo`, `id_perfil`) VALUES
(9, 'admin', 'admin', '9bdb455fad11c2454245ff0c78470c8a', 'cfcd208495d565ef66e7dff9f98764da', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cod_categoria`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`cod_marca`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cod_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `cod_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1204;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;