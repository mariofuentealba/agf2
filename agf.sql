-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2013 at 08:17 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agf`
--
CREATE DATABASE IF NOT EXISTS `agf` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `agf`;

-- --------------------------------------------------------

--
-- Table structure for table `agenda_procesos`
--

CREATE TABLE IF NOT EXISTS `agenda_procesos` (
  `ID_AGENDA` int(18) NOT NULL,
  `DT_AGENDA` datetime DEFAULT NULL,
  `PROCESO` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PARAMETROS` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DT_COMIENZO` datetime DEFAULT NULL,
  `DT_FIN` datetime DEFAULT NULL,
  `ESTADO` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `configexport`
--

CREATE TABLE IF NOT EXISTS `configexport` (
  `id_indice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `configexport`
--

INSERT INTO `configexport` (`id_indice`) VALUES
(158),
(188),
(190);

-- --------------------------------------------------------

--
-- Table structure for table `dolar`
--

CREATE TABLE IF NOT EXISTS `dolar` (
  `ID_DOLAR` int(18) NOT NULL,
  `PERIODO` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHA_DOLAR` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALOR` float(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `empresas`
--

CREATE TABLE IF NOT EXISTS `empresas` (
  `ID_EMPRESA` int(18) NOT NULL AUTO_INCREMENT,
  `RUT` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RSO` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRE_FANTASIA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRE_BOLSA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALOR_ACCION` float(18,2) DEFAULT NULL,
  `TIPO_BALANCE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TIPO_IFRS` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `MONEDA` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ESTADOS` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ORIGEN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL,
  `color` int(11) DEFAULT '0',
  PRIMARY KEY (`ID_EMPRESA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=733 ;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`ID_EMPRESA`, `RUT`, `RSO`, `NOMBRE_FANTASIA`, `NOMBRE_BOLSA`, `VALOR_ACCION`, `TIPO_BALANCE`, `TIPO_IFRS`, `MONEDA`, `ESTADOS`, `ORIGEN`, `OA`, `color`) VALUES
(721, '19', 'EMPRESA A', 'EMPRESA A', 'EMPRESA A', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 13369344),
(724, 'EMPRESA B', 'EMPRESA B', 'EMPRESA B', 'EMPRESA B', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 13209),
(725, '1', 'Falabella (Chile+CMR) ', 'Falabella (Chile+CMR) ', 'Falabella (Chile+CMR) ', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 52326),
(726, 'Cencosud (', 'Cencosud (Paris+Mas) ', 'Cencosud (Paris+Mas) ', 'Cencosud (Paris+Mas) ', 0.00, 'C', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 65484),
(727, 'Ripley Chi', 'Ripley Chile', 'Ripley Chile', 'Ripley Chile', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 0),
(728, 'ABCDIN', 'ABCDIN', 'ABCDIN', 'ABCDIN', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 13369344),
(729, 'La Polar C', 'La Polar Chile', 'La Polar Chile', 'La Polar Chile', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 10066329),
(730, 'Hites', 'Hites', 'Hites', 'Hites', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 255),
(731, 'Falabella ', 'Falabella Chile', 'Falabella Chile', 'Falabella Chile', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 39219),
(732, 'Paris Chil', 'Paris Chile  ', 'Paris Chile  ', 'Paris Chile  ', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 52479);

-- --------------------------------------------------------

--
-- Table structure for table `formulario_item`
--

CREATE TABLE IF NOT EXISTS `formulario_item` (
  `id_empresa` int(11) NOT NULL,
  `id_tag_agf` int(11) NOT NULL,
  `fecha_insert` date NOT NULL,
  `nun_item` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `formulario_item`
--

INSERT INTO `formulario_item` (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`, `estado`) VALUES
(1, 225, '1900-01-01', 0, 'A'),
(1, 226, '1900-01-01', 1, 'A'),
(1, 220, '1900-01-01', 2, 'A'),
(1, 220, '1900-01-01', 3, 'A'),
(1, 3, '1900-01-01', 4, 'A'),
(1, 3, '1900-01-01', 5, 'A'),
(1, 7, '1900-01-01', 6, 'A'),
(1, 227, '1900-01-01', 7, 'A'),
(1, 228, '1900-01-01', 8, 'A'),
(1, 229, '1900-01-01', 9, 'A'),
(2, 229, '1900-01-01', 0, 'A'),
(208, 4, '1900-01-01', 0, 'E'),
(208, 230, '1900-01-01', 1, 'E'),
(14, 231, '1900-01-01', 0, 'A'),
(9, 232, '1900-01-01', 0, 'E'),
(9, 233, '1900-01-01', 1, 'E'),
(9, 234, '1900-01-01', 2, 'E'),
(208, 71, '1900-01-01', 2, 'A'),
(208, 81, '1900-01-01', 3, 'A'),
(208, 235, '1900-01-01', 4, 'E'),
(208, 82, '1900-01-01', 5, 'A'),
(208, 236, '1900-01-01', 6, 'A'),
(208, 237, '1900-01-01', 7, 'A'),
(208, 238, '1900-01-01', 8, 'A'),
(208, 239, '1900-01-01', 9, 'A'),
(208, 240, '1900-01-01', 10, 'A'),
(208, 241, '1900-01-01', 11, 'A'),
(208, 242, '1900-01-01', 12, 'A'),
(208, 243, '1900-01-01', 13, 'A'),
(208, 244, '1900-01-01', 14, 'A'),
(208, 245, '1900-01-01', 15, 'A'),
(208, 246, '1900-01-01', 16, 'A'),
(208, 247, '1900-01-01', 17, 'A'),
(208, 248, '1900-01-01', 18, 'A'),
(9, 55, '1900-01-01', 3, 'E'),
(21, 55, '1900-01-01', 0, 'A'),
(9, 55, '1900-01-01', 4, 'E'),
(9, 55, '1900-01-01', 5, 'E'),
(9, 55, '1900-01-01', 6, 'E'),
(9, 55, '1900-01-01', 7, 'E'),
(9, 55, '1900-01-01', 8, 'E'),
(9, 55, '1900-01-01', 9, 'E'),
(9, 55, '1900-01-01', 10, 'E'),
(9, 55, '1900-01-01', 11, 'E'),
(9, 55, '1900-01-01', 12, 'A'),
(208, 249, '1900-01-01', 19, 'A'),
(718, 261, '1900-01-01', 0, 'A'),
(718, 262, '1900-01-01', 1, 'A'),
(718, 263, '1900-01-01', 2, 'A'),
(713, 261, '1900-01-01', 0, 'A'),
(713, 262, '1900-01-01', 1, 'A'),
(713, 263, '1900-01-01', 2, 'A'),
(714, 261, '1900-01-01', 0, 'A'),
(714, 262, '1900-01-01', 1, 'A'),
(714, 263, '1900-01-01', 2, 'A'),
(715, 261, '1900-01-01', 0, 'A'),
(715, 262, '1900-01-01', 1, 'A'),
(715, 263, '1900-01-01', 2, 'A'),
(716, 261, '1900-01-01', 0, 'A'),
(716, 262, '1900-01-01', 1, 'A'),
(716, 263, '1900-01-01', 2, 'A'),
(717, 261, '1900-01-01', 0, 'A'),
(717, 262, '1900-01-01', 1, 'A'),
(717, 263, '1900-01-01', 2, 'A'),
(718, 264, '1900-01-01', 3, 'A'),
(1, 225, '1900-01-01', 0, 'A'),
(1, 226, '1900-01-01', 1, 'A'),
(1, 220, '1900-01-01', 2, 'A'),
(1, 220, '1900-01-01', 3, 'A'),
(1, 3, '1900-01-01', 4, 'A'),
(1, 3, '1900-01-01', 5, 'A'),
(1, 7, '1900-01-01', 6, 'A'),
(1, 227, '1900-01-01', 7, 'A'),
(1, 228, '1900-01-01', 8, 'A'),
(1, 229, '1900-01-01', 9, 'A'),
(2, 229, '1900-01-01', 0, 'A'),
(208, 4, '1900-01-01', 0, 'E'),
(208, 230, '1900-01-01', 1, 'E'),
(14, 231, '1900-01-01', 0, 'A'),
(9, 232, '1900-01-01', 0, 'E'),
(9, 233, '1900-01-01', 1, 'E'),
(9, 234, '1900-01-01', 2, 'E'),
(208, 71, '1900-01-01', 2, 'A'),
(208, 81, '1900-01-01', 3, 'A'),
(208, 235, '1900-01-01', 4, 'E'),
(208, 82, '1900-01-01', 5, 'A'),
(208, 236, '1900-01-01', 6, 'A'),
(208, 237, '1900-01-01', 7, 'A'),
(208, 238, '1900-01-01', 8, 'A'),
(208, 239, '1900-01-01', 9, 'A'),
(208, 240, '1900-01-01', 10, 'A'),
(208, 241, '1900-01-01', 11, 'A'),
(208, 242, '1900-01-01', 12, 'A'),
(208, 243, '1900-01-01', 13, 'A'),
(208, 244, '1900-01-01', 14, 'A'),
(208, 245, '1900-01-01', 15, 'A'),
(208, 246, '1900-01-01', 16, 'A'),
(208, 247, '1900-01-01', 17, 'A'),
(208, 248, '1900-01-01', 18, 'A'),
(9, 55, '1900-01-01', 3, 'E'),
(21, 55, '1900-01-01', 0, 'A'),
(9, 55, '1900-01-01', 4, 'E'),
(9, 55, '1900-01-01', 5, 'E'),
(9, 55, '1900-01-01', 6, 'E'),
(9, 55, '1900-01-01', 7, 'E'),
(9, 55, '1900-01-01', 8, 'E'),
(9, 55, '1900-01-01', 9, 'E'),
(9, 55, '1900-01-01', 10, 'E'),
(9, 55, '1900-01-01', 11, 'E'),
(9, 55, '1900-01-01', 12, 'A'),
(208, 249, '1900-01-01', 19, 'A'),
(718, 261, '1900-01-01', 0, 'A'),
(718, 262, '1900-01-01', 1, 'A'),
(718, 263, '1900-01-01', 2, 'A'),
(713, 261, '1900-01-01', 0, 'A'),
(713, 262, '1900-01-01', 1, 'A'),
(713, 263, '1900-01-01', 2, 'A'),
(714, 261, '1900-01-01', 0, 'A'),
(714, 262, '1900-01-01', 1, 'A'),
(714, 263, '1900-01-01', 2, 'A'),
(715, 261, '1900-01-01', 0, 'A'),
(715, 262, '1900-01-01', 1, 'A'),
(715, 263, '1900-01-01', 2, 'A'),
(716, 261, '1900-01-01', 0, 'A'),
(716, 262, '1900-01-01', 1, 'A'),
(716, 263, '1900-01-01', 2, 'A'),
(717, 261, '1900-01-01', 0, 'A'),
(717, 262, '1900-01-01', 1, 'A'),
(717, 263, '1900-01-01', 2, 'A'),
(718, 264, '1900-01-01', 3, 'A'),
(721, 267, '1900-01-01', 0, 'A'),
(721, 268, '1900-01-01', 1, 'A'),
(724, 267, '1900-01-01', 0, 'A'),
(724, 268, '1900-01-01', 1, 'A'),
(3, 183, '1900-01-01', 0, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `formulas`
--

CREATE TABLE IF NOT EXISTS `formulas` (
  `ID_FORMULA` int(11) NOT NULL AUTO_INCREMENT,
  `CAMPO1` int(11) DEFAULT NULL,
  `CAMPO2` int(11) DEFAULT NULL,
  `CAMPO3` int(11) DEFAULT NULL,
  `CAMPO4` int(11) DEFAULT NULL,
  `CAMPO5` int(11) DEFAULT NULL,
  `tipoc1` int(11) NOT NULL,
  `tipoc2` int(11) NOT NULL,
  `tipoc3` int(11) NOT NULL,
  `tipoc4` int(11) NOT NULL,
  `tipoc5` int(11) NOT NULL,
  `FORMULA` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `CANTIDAD_CAMPOS` int(11) DEFAULT NULL,
  `DECIMALES` int(11) DEFAULT NULL,
  `cod1` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod2` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod3` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod4` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod5` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_FORMULA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=34 ;

--
-- Dumping data for table `formulas`
--

INSERT INTO `formulas` (`ID_FORMULA`, `CAMPO1`, `CAMPO2`, `CAMPO3`, `CAMPO4`, `CAMPO5`, `tipoc1`, `tipoc2`, `tipoc3`, `tipoc4`, `tipoc5`, `FORMULA`, `CANTIDAD_CAMPOS`, `DECIMALES`, `cod1`, `cod2`, `cod3`, `cod4`, `cod5`) VALUES
(1, 269, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(2, 270, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(3, 271, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(4, 272, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(5, 267, 268, -1, -1, -1, 1, 1, 0, 0, 0, 'C1+C2', 2, 0, 'C.NN.1', 'C.NN.2', 'no', 'no', 'no'),
(6, 267, 268, 267, -1, -1, 1, 1, 1, 0, 0, 'C1+C2-C3', 3, 0, 'C.NN.1', 'C.NN.2', 'C.AN.3', 'no', 'no'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '\n', 5, 0, '', '', '', '', ''),
(8, 267, 268, 267, -1, -1, 1, 1, 1, 0, 0, 'C1+C2-C3', 3, 0, 'C.NN.1', 'C.NN.2', 'C.AN.3', 'no', 'no'),
(9, 267, 268, 267, -1, -1, 1, 1, 1, 0, 0, 'C1+C2-C3', 3, 0, 'C.NN.1', 'C.NN.2', 'C.AN.3', 'no', 'no'),
(10, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(11, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(12, 267, 268, 267, -1, -1, 1, 1, 1, 0, 0, 'C1+C2-C3', 3, 0, 'C.NN.1', 'C.NN.2', 'C.AN.3', 'no', 'no'),
(13, 162, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.NN.1', 'no', 'no', 'no', 'no'),
(14, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(15, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(16, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(17, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(18, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(19, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(20, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(21, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(22, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(23, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(24, 161, -1, -1, -1, -1, 1, 0, 0, 0, 0, 'C1', 1, 0, 'C.NN.1', 'no', 'no', 'no', 'no'),
(25, 161, -1, -1, -1, -1, 1, 0, 0, 0, 0, 'C1', 1, 0, 'C.NN.1', 'no', 'no', 'no', 'no'),
(26, 50, -1, -1, -1, -1, 1, 0, 0, 0, 0, 'C1', 1, 0, 'C.NN.1', 'no', 'no', 'no', 'no'),
(27, 0, 0, 0, 267, 268, 267, -1, -1, 1, 1, '0', 5, 0, '0', '0', '4', 'C.NN.1', 'C.NN.2'),
(28, 183, -1, -1, -1, -1, 1, 0, 0, 0, 0, 'C1', 1, 0, 'C.NN.1', 'no', 'no', 'no', 'no'),
(29, 273, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(30, 274, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(31, 275, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(32, 276, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no'),
(33, 277, -1, -1, -1, -1, 1, 1, 1, 1, 1, 'C1', 1, 2, 'C.NN.1', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `grupos_indices_financieros`
--

CREATE TABLE IF NOT EXISTS `grupos_indices_financieros` (
  `ID_GRUPO_INDICE_FINANCIERO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `DESCRIPCION` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID_GRUPO_INDICE_FINANCIERO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `grupos_indices_financieros`
--

INSERT INTO `grupos_indices_financieros` (`ID_GRUPO_INDICE_FINANCIERO`, `NOMBRE`, `DESCRIPCION`) VALUES
(2, 'Items', 'Cuentas importantes'),
(3, 'Indices financieros', 'Indices financieros'),
(4, 'Indices Demo', 'Indices Demo');

-- --------------------------------------------------------

--
-- Table structure for table `grupos_subgrupos`
--

CREATE TABLE IF NOT EXISTS `grupos_subgrupos` (
  `ID_TIPO_EMPRESA` int(18) NOT NULL,
  `ID_SUBGRUPO` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `grupos_subgrupos`
--

INSERT INTO `grupos_subgrupos` (`ID_TIPO_EMPRESA`, `ID_SUBGRUPO`) VALUES
(4, 101),
(4, 102),
(4, 103),
(4, 104),
(4, 105);

-- --------------------------------------------------------

--
-- Table structure for table `historico_acciones`
--

CREATE TABLE IF NOT EXISTS `historico_acciones` (
  `ID_PRECIO_ACCION` int(18) NOT NULL,
  `ID_EMPRESA` int(18) DEFAULT NULL,
  `FECHA` varchar(15) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APERTURA` float(18,5) DEFAULT NULL,
  `ALTO` decimal(18,5) DEFAULT NULL,
  `BAJO` float(18,5) DEFAULT NULL,
  `CIERRE` float(18,5) DEFAULT NULL,
  `VOLUMEN` bigint(20) DEFAULT NULL,
  `DT_REGISTRO` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indicadores`
--

CREATE TABLE IF NOT EXISTS `indicadores` (
  `ID_INDICADOR` int(18) NOT NULL,
  `TIPO_INDICADOR` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRE` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALOR` float(18,2) DEFAULT NULL,
  `VARIACION` float(18,2) DEFAULT NULL,
  `DT_ACTUALIZACION` datetime DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `indices_financieros`
--

CREATE TABLE IF NOT EXISTS `indices_financieros` (
  `ID_INDICE_FINANCIERO` int(18) NOT NULL AUTO_INCREMENT,
  `ID_GRUPO_INDICE_FINANCIERO` int(18) DEFAULT NULL,
  `ID_COMPONENTE` int(18) DEFAULT NULL,
  `NOMBRE` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ID_FORMULA` int(18) DEFAULT NULL,
  `FORMULA_DESC` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RANGO_SUPERIOR` decimal(10,2) NOT NULL,
  `RANGO_INFERIOR` float(10,2) NOT NULL,
  `RANGOS_DESC` text COLLATE utf8_spanish2_ci,
  `OA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_INDICE_FINANCIERO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=191 ;

--
-- Dumping data for table `indices_financieros`
--

INSERT INTO `indices_financieros` (`ID_INDICE_FINANCIERO`, `ID_GRUPO_INDICE_FINANCIERO`, `ID_COMPONENTE`, `NOMBRE`, `DESCRIPCION`, `ID_FORMULA`, `FORMULA_DESC`, `RANGO_SUPERIOR`, `RANGO_INFERIOR`, `RANGOS_DESC`, `OA`) VALUES
(158, 3, 4, 'Ingresos Totales', '..', 1, '..', '1000.00', 0.00, '..', b'1'),
(162, 4, 4, 'INDICE 1', 'Con valores del periodo actual', 5, '0', '0.00', 0.00, '0', b'1'),
(188, 3, 4, 'Ingresos Totales Anuales', '..', 31, '..', '1000.00', 0.00, '..', b'1'),
(189, 3, 4, 'Ingresos Retail', '..', 32, '..', '1000.00', 0.00, '..', b'1'),
(190, 3, 4, 'Ingresos Retail Anuales', '..', 33, '..', '1000.00', 0.00, '..', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `datos` varchar(10000) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`datos`) VALUES
('INSERT INTO configexport VALUES (''158'');INSERT INTO configexport VALUES (''189'');'),
('Array\n(\n    [0] => 158\n    [1] => 189\n)\n'),
('INSERT INTO configexport VALUES (''158'');INSERT INTO configexport VALUES (''188'');INSERT INTO configexport VALUES (''190'');'),
('Array\n(\n    [0] => 158\n    [1] => 188\n    [2] => 190\n)\n'),
('INSERT INTO configexport VALUES (''158'');INSERT INTO configexport VALUES (''189'');'),
('Array\n(\n    [0] => 158\n    [1] => 189\n)\n'),
('INSERT INTO configexport VALUES (''190'');'),
('Array\n(\n    [0] => 158\n    [1] => 188\n    [2] => 190\n)\n');

-- --------------------------------------------------------

--
-- Table structure for table `log_ingreso_tag`
--

CREATE TABLE IF NOT EXISTS `log_ingreso_tag` (
  `ID_LOG_INGRESO_TAG` int(18) NOT NULL,
  `ID_LOG_REGISTRO` int(18) DEFAULT NULL,
  `EMPRESA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PERIODO` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ID_TAG_AGF` int(18) DEFAULT NULL,
  `TAG_AGF` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ID_TAG_XBRL` int(18) DEFAULT NULL,
  `TAG_XBRL` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ORIGEN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALOR` float(18,4) DEFAULT NULL,
  `OUTPUT` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DT_OUTPUT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_proceso`
--

CREATE TABLE IF NOT EXISTS `log_proceso` (
  `ID_LOG_PROCESO` int(18) NOT NULL,
  `PROCESO` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DT_INICIO` datetime DEFAULT NULL,
  `DT_FIN` datetime DEFAULT NULL,
  `ESTADO` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `log_registro`
--

CREATE TABLE IF NOT EXISTS `log_registro` (
  `ID_LOG_REGISTRO` int(18) NOT NULL,
  `ID_LOG_PROCESO` int(18) NOT NULL,
  `DT_IN` datetime DEFAULT NULL,
  `DT_OUT` datetime DEFAULT NULL,
  `INPUT` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EMPRESA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PERIODO` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OUTPUT` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `monedas`
--

CREATE TABLE IF NOT EXISTS `monedas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(64) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `valor_defecto` float(18,2) DEFAULT NULL,
  `operacion` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `signo` varchar(5) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad_decimal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
  `ID_PERFIL` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `periodos`
--

CREATE TABLE IF NOT EXISTS `periodos` (
  `ID_PERIODO` int(18) NOT NULL AUTO_INCREMENT,
  `label` varchar(7) COLLATE utf8_spanish2_ci NOT NULL,
  `ANO` int(11) DEFAULT NULL,
  `MES` int(11) DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`ID_PERIODO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=30 ;

--
-- Dumping data for table `periodos`
--

INSERT INTO `periodos` (`ID_PERIODO`, `label`, `ANO`, `MES`, `OA`, `orden`) VALUES
(1, '3/2010', 2010, 3, b'1', 5),
(2, '6/2010', 2010, 6, b'1', 6),
(3, '9/2010', 2010, 9, b'1', 7),
(4, '12/2010', 2010, 12, b'1', 8),
(5, '3/2011', 2011, 3, b'1', 9),
(6, '6/2011', 2011, 6, b'1', 10),
(7, '9/2011', 2011, 9, b'1', 11),
(8, '12/2011', 2011, 12, b'1', 12),
(9, '3/2012', 2012, 3, b'1', 13),
(10, '6/2012', 2012, 6, b'1', 14),
(11, '9/2012', 2012, 9, b'1', 15),
(12, '12/2012', 2012, 12, b'1', 16),
(13, '3/2009', 2009, 3, b'1', 1),
(14, '6/2009', 2009, 6, b'1', 2),
(15, '9/2009', 2009, 9, b'1', 3),
(16, '12/2009', 2009, 12, b'1', 4),
(24, '2009', 2009, 0, b'0', 0),
(25, '2010', 2010, 0, b'0', 0),
(26, '2011', 2011, 0, b'0', 0),
(27, '2012', 2012, 0, b'0', 0),
(28, '3/2013', 2013, 3, b'1', 17),
(29, '6/2013', 2013, 6, b'1', 18);

-- --------------------------------------------------------

--
-- Table structure for table `subgrupos`
--

CREATE TABLE IF NOT EXISTS `subgrupos` (
  `ID_SUBGRUPO` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_SUBGRUPO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=106 ;

--
-- Dumping data for table `subgrupos`
--

INSERT INTO `subgrupos` (`ID_SUBGRUPO`, `NOMBRE`, `DESCRIPCION`) VALUES
(101, 'Ingresos Totales', '..'),
(102, 'DEMO', '...'),
(103, 'Ingresos Totales Anuales', '..'),
(104, 'Ingresos Retail', 'Ingresos Retail'),
(105, 'Ingresos Retail Anuales', 'Ingresos Retail Anuales');

-- --------------------------------------------------------

--
-- Table structure for table `subgrupos_empresas`
--

CREATE TABLE IF NOT EXISTS `subgrupos_empresas` (
  `ID_SUBGRUPO` int(18) NOT NULL,
  `ID_EMPRESA` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `subgrupos_empresas`
--

INSERT INTO `subgrupos_empresas` (`ID_SUBGRUPO`, `ID_EMPRESA`) VALUES
(102, 724),
(102, 721),
(101, 727),
(101, 730),
(101, 726),
(101, 728),
(101, 725),
(101, 729),
(103, 727),
(103, 730),
(103, 726),
(103, 728),
(103, 731),
(103, 729),
(104, 730),
(104, 728),
(104, 732),
(104, 731),
(104, 727),
(104, 729),
(105, 727),
(105, 729),
(105, 731),
(105, 728),
(105, 730),
(105, 732);

-- --------------------------------------------------------

--
-- Table structure for table `tag_agf`
--

CREATE TABLE IF NOT EXISTS `tag_agf` (
  `ID_TAG_AGF` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ETIQUETA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `COMPONENTE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ORIGEN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_TAG_AGF`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=278 ;

--
-- Dumping data for table `tag_agf`
--

INSERT INTO `tag_agf` (`ID_TAG_AGF`, `NOMBRE`, `ETIQUETA`, `COMPONENTE`, `ORIGEN`, `OA`) VALUES
(1, 'Efectivo y equivalentes al efectivo', 'Efectivo y equivalentes al efectivo', 'BALANCE', 'XBRL', b'1'),
(2, 'Otros activos financieros corrientes', 'Otros activos financieros corrientes', 'BALANCE', 'XBRL', b'1'),
(3, 'Otros activos no financieros corrientes', 'Otros activos no financieros corrientes', 'BALANCE', 'XBRL', b'1'),
(4, 'Deudores comerciales y otras cuentas por cobrar corrientes', 'Deudores comerciales y otras cuentas por cobrar corrientes', 'BALANCE', 'XBRL', b'1'),
(5, 'Cuentas por cobrar a entidades relacionadas, corrientes', 'Cuentas por cobrar a entidades relacionadas, corrientes', 'BALANCE', 'XBRL', b'1'),
(6, 'Inventarios corrientes', 'Inventarios corrientes', 'BALANCE', 'XBRL', b'1'),
(7, 'Activos biol', 'Activos biol', 'BALANCE', 'XBRL', b'1'),
(8, 'Activos por impuestos corrientes, corrientes', 'Activos por impuestos corrientes, corrientes', 'BALANCE', 'XBRL', b'1'),
(9, 'Total de activos corrientes distintos de los activo o grupos de activos para su disposici', 'Total de activos corrientes distintos de los activo o grupos de activos para su disposici', 'BALANCE', 'XBRL', b'1'),
(10, 'Activos no corrientes o grupos de activos para su disposici', 'Activos no corrientes o grupos de activos para su disposici', 'BALANCE', 'XBRL', b'1'),
(11, 'Activos corrientes totales', 'Activos corrientes totales', 'BALANCE', 'XBRL', b'1'),
(12, 'Otros activos financieros no corrientes', 'Otros activos financieros no corrientes', 'BALANCE', 'XBRL', b'1'),
(13, 'Otros activos no financieros no corrientes', 'Otros activos no financieros no corrientes', 'BALANCE', 'XBRL', b'1'),
(14, 'Cuentas por cobrar no corrientes', 'Cuentas por cobrar no corrientes', 'BALANCE', 'XBRL', b'1'),
(15, 'Inventarios, no corrientes', 'Inventarios, no corrientes', 'BALANCE', 'XBRL', b'1'),
(16, 'Cuentas por cobrar a entidades relacionadas, no corrientes', 'Cuentas por cobrar a entidades relacionadas, no corrientes', 'BALANCE', 'XBRL', b'1'),
(17, 'Inversiones contabilizadas utilizando el m', 'Inversiones contabilizadas utilizando el m', 'BALANCE', 'XBRL', b'1'),
(18, 'Activos intangibles distintos de la plusval', 'Activos intangibles distintos de la plusval', 'BALANCE', 'XBRL', b'1'),
(19, 'Plusval', 'Plusval', 'BALANCE', 'XBRL', b'1'),
(20, 'Propiedades, planta y equipo', 'Propiedades, planta y equipo', 'BALANCE', 'XBRL', b'1'),
(21, 'Activos biol', 'Activos biol', 'BALANCE', 'XBRL', b'1'),
(22, 'Propiedad de inversi', 'Propiedad de inversi', 'BALANCE', 'XBRL', b'1'),
(23, 'Activos por impuestos corrientes, no corrientes', 'Activos por impuestos corrientes, no corrientes', 'BALANCE', 'XBRL', b'1'),
(24, 'Activos por impuestos diferidos', 'Activos por impuestos diferidos', 'BALANCE', 'XBRL', b'1'),
(25, 'Total de activos no corrientes', 'Total de activos no corrientes', 'BALANCE', 'XBRL', b'1'),
(26, 'Total de activos', 'Total de activos', 'BALANCE', 'XBRL', b'1'),
(27, 'Otros pasivos financieros corrientes', 'Otros pasivos financieros corrientes', 'BALANCE', 'XBRL', b'1'),
(28, 'Cuentas por pagar comerciales y otras cuentas por pagar', 'Cuentas por pagar comerciales y otras cuentas por pagar', 'BALANCE', 'XBRL', b'1'),
(29, 'Cuentas por pagar a entidades relacionadas, corrientes', 'Cuentas por pagar a entidades relacionadas, corrientes', 'BALANCE', 'XBRL', b'1'),
(30, 'Otras provisiones a corto plazo', 'Otras provisiones a corto plazo', 'BALANCE', 'XBRL', b'1'),
(31, 'Pasivos por impuestos corrientes, corrientes', 'Pasivos por impuestos corrientes, corrientes', 'BALANCE', 'XBRL', b'1'),
(32, 'Provisiones corrientes por beneficios a los empleados', 'Provisiones corrientes por beneficios a los empleados', 'BALANCE', 'XBRL', b'1'),
(33, 'Otros pasivos no financieros corrientes', 'Otros pasivos no financieros corrientes', 'BALANCE', 'XBRL', b'1'),
(34, 'Total de pasivos corrientes distintos de los pasivos incluidos en grupos de activos para su disposici', 'Total de pasivos corrientes distintos de los pasivos incluidos en grupos de activos para su disposici', 'BALANCE', 'XBRL', b'1'),
(35, 'Pasivos incluidos en grupos de activos para su disposici', 'Pasivos incluidos en grupos de activos para su disposici', 'BALANCE', 'XBRL', b'1'),
(36, 'Pasivos corrientes totales', 'Pasivos corrientes totales', 'BALANCE', 'XBRL', b'1'),
(37, 'Otros pasivos financieros no corrientes', 'Otros pasivos financieros no corrientes', 'BALANCE', 'XBRL', b'1'),
(38, 'Cuentas por pagar no corrientes', 'Cuentas por pagar no corrientes', 'BALANCE', 'XBRL', b'1'),
(39, 'Cuentas por pagar a entidades relacionadas, no corrientes', 'Cuentas por pagar a entidades relacionadas, no corrientes', 'BALANCE', 'XBRL', b'1'),
(40, 'Otras provisiones a largo plazo', 'Otras provisiones a largo plazo', 'BALANCE', 'XBRL', b'1'),
(41, 'Pasivo por impuestos diferidos', 'Pasivo por impuestos diferidos', 'BALANCE', 'XBRL', b'1'),
(42, 'Pasivos por impuestos corrientes, no corrientes', 'Pasivos por impuestos corrientes, no corrientes', 'BALANCE', 'XBRL', b'1'),
(43, 'Provisiones no corrientes por beneficios a los empleados', 'Provisiones no corrientes por beneficios a los empleados', 'BALANCE', 'XBRL', b'1'),
(44, 'Otros pasivos no financieros no corrientes', 'Otros pasivos no financieros no corrientes', 'BALANCE', 'XBRL', b'1'),
(45, 'Total de pasivos no corrientes', 'Total de pasivos no corrientes', 'BALANCE', 'XBRL', b'1'),
(46, 'Total de pasivos', 'Total de pasivos', 'BALANCE', 'XBRL', b'1'),
(47, 'Capital emitido', 'Capital emitido', 'BALANCE', 'XBRL', b'1'),
(48, 'Ganancias (p', 'Ganancias (p', 'BALANCE', 'XBRL', b'1'),
(49, 'Prima de emisi', 'Prima de emisi', 'BALANCE', 'XBRL', b'1'),
(50, 'Acciones propias en cartera', 'Acciones propias en cartera', 'BALANCE', 'XBRL', b'1'),
(51, 'Otras participaciones en el patrimonio', 'Otras participaciones en el patrimonio', 'BALANCE', 'XBRL', b'1'),
(52, 'Otras reservas', 'Otras reservas', 'BALANCE', 'XBRL', b'1'),
(53, 'Patrimonio atribuible a los propietarios de la controladora', 'Patrimonio atribuible a los propietarios de la controladora', 'BALANCE', 'XBRL', b'1'),
(54, 'Participaciones no controladoras', 'Participaciones no controladoras', 'BALANCE', 'XBRL', b'1'),
(55, 'Patrimonio total', 'Patrimonio total', 'BALANCE', 'XBRL', b'1'),
(56, 'Total de patrimonio y pasivos', 'Total de patrimonio y pasivos', 'BALANCE', 'XBRL', b'1'),
(57, 'Activos por impuestos corrientes', 'Activos por impuestos corrientes', 'BALANCE', 'XBRL', b'1'),
(58, 'Inventarios', 'Inventarios', 'BALANCE', 'XBRL', b'1'),
(59, 'Cuentas por cobrar a entidades relacionadas', 'Cuentas por cobrar a entidades relacionadas', 'BALANCE', 'XBRL', b'1'),
(60, 'Otros activos no financieros', 'Otros activos no financieros', 'BALANCE', 'XBRL', b'1'),
(61, 'Deudores comerciales y otras cuentas por cobrar', 'Deudores comerciales y otras cuentas por cobrar', 'BALANCE', 'XBRL', b'1'),
(62, 'Otros activos financieros', 'Otros activos financieros', 'BALANCE', 'XBRL', b'1'),
(63, 'Activos biol', 'Activos biol', 'BALANCE', 'XBRL', b'1'),
(64, 'Activos intangibles distintos de la plusval', 'Activos intangibles distintos de la plusval', 'BALANCE', 'XBRL', b'1'),
(65, 'Cuentas por pagar a entidades relacionadas', 'Cuentas por pagar a entidades relacionadas', 'BALANCE', 'XBRL', b'1'),
(66, 'Pasivos por impuestos corrientes', 'Pasivos por impuestos corrientes', 'BALANCE', 'XBRL', b'1'),
(67, 'Otros pasivos no financieros', 'Otros pasivos no financieros', 'BALANCE', 'XBRL', b'1'),
(68, 'Otros pasivos financieros', 'Otros pasivos financieros', 'BALANCE', 'XBRL', b'1'),
(69, 'Provisiones por beneficios a los empleados', 'Provisiones por beneficios a los empleados', 'BALANCE', 'XBRL', b'1'),
(70, 'Otras provisiones', 'Otras provisiones', 'BALANCE', 'XBRL', b'1'),
(71, 'Ingresos de actividades ordinarias', 'Ingresos de actividades ordinarias', 'RESULTADO', 'XBRL', b'1'),
(72, 'Costo de ventas', 'Costo de ventas', 'RESULTADO', 'XBRL', b'1'),
(73, 'Ganancia bruta', 'Ganancia bruta', 'RESULTADO', 'XBRL', b'1'),
(74, 'Otros ingresos', 'Otros ingresos', 'RESULTADO', 'XBRL', b'1'),
(75, 'Costos de distribuci', 'Costos de distribuci', 'RESULTADO', 'XBRL', b'1'),
(76, 'Gastos de administraci', 'Gastos de administraci', 'RESULTADO', 'XBRL', b'1'),
(77, 'Otros gastos, por funci', 'Otros gastos, por funci', 'RESULTADO', 'XBRL', b'1'),
(78, 'Otras ganancias (p', 'Otras ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(79, 'Ganancias (p', 'Ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(80, 'Ganancias (p', 'Ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(81, 'Ingresos financieros', 'Ingresos financieros', 'RESULTADO', 'XBRL', b'1'),
(82, 'Costos financieros', 'Costos financieros', 'RESULTADO', 'XBRL', b'1'),
(83, 'Participaci', 'Participaci', 'RESULTADO', 'XBRL', b'1'),
(84, 'Diferencias de cambio', 'Diferencias de cambio', 'RESULTADO', 'XBRL', b'1'),
(85, 'Resultados por unidades de reajuste', 'Resultados por unidades de reajuste', 'RESULTADO', 'XBRL', b'1'),
(86, 'Ganancias (p', 'Ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(87, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(88, 'Gasto por impuestos a las ganancias', 'Gasto por impuestos a las ganancias', 'RESULTADO', 'XBRL', b'1'),
(89, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(90, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(91, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(92, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(93, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(94, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(95, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(96, 'Ganancia (p', 'Ganancia (p', 'RESULTADO', 'XBRL', b'1'),
(97, 'Ganancias (p', 'Ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(98, 'Ganancias (p', 'Ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(99, 'Ganancias (p', 'Ganancias (p', 'RESULTADO', 'XBRL', b'1'),
(100, 'Disminuci', 'Disminuci', 'RESULTADO', 'XBRL', b'1'),
(101, 'Otros trabajos realizados por la entidad y capitalizados', 'Otros trabajos realizados por la entidad y capitalizados', 'RESULTADO', 'XBRL', b'1'),
(102, 'Materias primas y consumibles utilizados', 'Materias primas y consumibles utilizados', 'RESULTADO', 'XBRL', b'1'),
(103, 'Gastos por beneficios a los empleados', 'Gastos por beneficios a los empleados', 'RESULTADO', 'XBRL', b'1'),
(104, 'Gasto por depreciaci', 'Gasto por depreciaci', 'RESULTADO', 'XBRL', b'1'),
(105, 'P', 'P', 'RESULTADO', 'XBRL', b'1'),
(106, 'Otros gastos, por naturaleza', 'Otros gastos, por naturaleza', 'RESULTADO', 'XBRL', b'1'),
(107, 'Reversi', 'Reversi', 'RESULTADO', 'XBRL', b'1'),
(108, 'Cambios en inventarios de productos terminados y en proceso', 'Cambios en inventarios de productos terminados y en proceso', 'RESULTADO', 'XBRL', b'1'),
(109, 'Ganancias que surgen de la baja en cuentas de activos financieros medidos al costo amortizado', 'Ganancias que surgen de la baja en cuentas de activos financieros medidos al costo amortizado', 'RESULTADO', 'XBRL', b'1'),
(110, 'P', 'P', 'RESULTADO', 'XBRL', b'1'),
(111, 'Activos no corrientes o grupos de activos para su disposici', 'Activos no corrientes o grupos de activos para su disposici', 'BALANCE', 'XBRL', b'1'),
(112, 'Activos no corrientes o grupos de activos para su disposici', 'Activos no corrientes o grupos de activos para su disposici', 'BALANCE', 'XBRL', b'1'),
(113, 'Otras cuentas no corrientes por pagar', 'Otras cuentas no corrientes por pagar', 'BALANCE', 'XBRL', b'1'),
(114, 'Revalorizaciones Propiedades Plantas Equipos', 'Revalorizaciones Propiedades Plantas Equipos', 'RESULTADO', 'XBRL', b'1'),
(115, 'ActivosFinancierosDisponiblesVenta', 'ActivosFinancierosDisponiblesVenta', 'RESULTADO', 'XBRL', b'1'),
(116, 'CoberturaFlujoCaja', 'CoberturaFlujoCaja', 'RESULTADO', 'XBRL', b'1'),
(117, 'VariacionesValorRazonableOtrosActivos', 'VariacionesValorRazonableOtrosActivos', 'RESULTADO', 'XBRL', b'1'),
(118, 'AjustesConversion', 'AjustesConversion', 'RESULTADO', 'XBRL', b'1'),
(119, 'AjustesAsociadas', 'AjustesAsociadas', 'RESULTADO', 'XBRL', b'1'),
(120, 'Ganancias (P', 'Ganancias (P', 'RESULTADO', 'XBRL', b'1'),
(121, 'Otros Ajustes al Patrimonio Neto', 'Otros Ajustes al Patrimonio Neto', 'RESULTADO', 'XBRL', b'1'),
(122, 'Impuesto a la Renta Relacionado a los Componentes de Otros Ingresos y Gastos con Cargo o Abono en el Patrimonio Neto', 'Impuesto a la Renta Relacionado a los Componentes de Otros Ingresos y Gastos con Cargo o Abono en el Patrimonio Neto', 'RESULTADO', 'XBRL', b'1'),
(123, 'Otros Ingresos y Gastos con Cargo o Abono en el Patrimonio Neto, Total', 'Otros Ingresos y Gastos con Cargo o Abono en el Patrimonio Neto, Total', 'RESULTADO', 'XBRL', b'1'),
(124, 'Resultado de Ingresos y Gastos Integrales, Total', 'Resultado de Ingresos y Gastos Integrales, Total', 'RESULTADO', 'XBRL', b'1'),
(125, 'Resultado de Ingresos y Gastos Integrales Atribuible a los Accionistas Mayoritarios', 'Resultado de Ingresos y Gastos Integrales Atribuible a los Accionistas Mayoritarios', 'RESULTADO', 'XBRL', b'1'),
(126, 'ResultadoIngresosGastosIntegralesAtribuibleParticipacionesMinoritarias', 'ResultadoIngresosGastosIntegralesAtribuibleParticipacionesMinoritarias', 'RESULTADO', 'XBRL', b'1'),
(127, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(128, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(129, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(130, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(131, 'Gasto (Ingreso) por Impuesto a las Ganancias', 'Gasto (Ingreso) por Impuesto a las Ganancias', 'RESULTADO', 'XBRL', b'1'),
(132, 'Otros Ingresos distintos de los de Operaci', 'Otros Ingresos distintos de los de Operaci', 'RESULTADO', 'XBRL', b'1'),
(133, 'Participaci', 'Participaci', 'RESULTADO', 'XBRL', b'1'),
(134, 'Participaci', 'Participaci', 'RESULTADO', 'XBRL', b'1'),
(135, 'Minusval', 'Minusval', 'RESULTADO', 'XBRL', b'1'),
(136, 'Ingreso (P', 'Ingreso (P', 'RESULTADO', 'XBRL', b'1'),
(137, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(138, 'Costos Financieros [de Actividades No Financieras]', 'Costos Financieros [de Actividades No Financieras]', 'RESULTADO', 'XBRL', b'1'),
(139, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(140, 'Ingresos Ordinarios, Total', 'Ingresos Ordinarios, Total', 'RESULTADO', 'XBRL', b'1'),
(141, 'Otros Ingresos de Operaci', 'Otros Ingresos de Operaci', 'RESULTADO', 'XBRL', b'1'),
(142, 'Cambios, Disminuciones (Incrementos), en Inventarios de Productos Terminados y en Curso', 'Cambios, Disminuciones (Incrementos), en Inventarios de Productos Terminados y en Curso', 'RESULTADO', 'XBRL', b'1'),
(143, 'Gastos de Personal', 'Gastos de Personal', 'RESULTADO', 'XBRL', b'1'),
(144, 'Depreciaci', 'Depreciaci', 'RESULTADO', 'XBRL', b'1'),
(145, 'P', 'P', 'RESULTADO', 'XBRL', b'1'),
(146, 'Investigaci', 'Investigaci', 'RESULTADO', 'XBRL', b'1'),
(147, 'Costos de Reestructuraci', 'Costos de Reestructuraci', 'RESULTADO', 'XBRL', b'1'),
(148, 'Otros Gastos Varios de Operaci', 'Otros Gastos Varios de Operaci', 'RESULTADO', 'XBRL', b'1'),
(149, 'Ganancia (P', 'Ganancia (P', 'RESULTADO', 'XBRL', b'1'),
(150, 'Costos de Mercadotecnia ', 'Costos de Mercadotecnia ', 'RESULTADO', 'XBRL', b'1'),
(151, 'Activos Pignorados como Garant', 'Activos Pignorados como Garant', 'BALANCE', 'XBRL', b'1'),
(152, 'Activos de Cobertura, no Corriente', 'Activos de Cobertura, no Corriente', 'BALANCE', 'XBRL', b'1'),
(153, 'Pagos Anticipados, No Corriente', 'Pagos Anticipados, No Corriente', 'BALANCE', 'XBRL', b'1'),
(154, 'Efectivo de Utilizaci', 'Efectivo de Utilizaci', 'BALANCE', 'XBRL', b'1'),
(155, 'Otros Activos, No Corriente', 'Otros Activos, No Corriente', 'BALANCE', 'XBRL', b'1'),
(156, 'Activos, No Corrientes, Total', 'Activos, No Corrientes, Total', 'BALANCE', 'XBRL', b'1'),
(157, 'Activos, Total', 'Activos, Total', 'BALANCE', 'XBRL', b'1'),
(158, 'Pr', 'Pr', 'BALANCE', 'XBRL', b'1'),
(159, 'Pr', 'Pr', 'BALANCE', 'XBRL', b'1'),
(160, 'Otros Pasivos Financieros, Corriente', 'Otros Pasivos Financieros, Corriente', 'BALANCE', 'XBRL', b'1'),
(161, 'Acreedores Comerciales y Otras Cuentas por Pagar, Corriente', 'Acreedores Comerciales y Otras Cuentas por Pagar, Corriente', 'BALANCE', 'XBRL', b'1'),
(162, 'Resultados Retenidos (P', 'Resultados Retenidos (P', 'BALANCE', 'XBRL', b'1'),
(163, 'Patrimonio Neto Atribuible a los Tenedores de Instrumentos de Patrimonio Neto de Controladora', 'Patrimonio Neto Atribuible a los Tenedores de Instrumentos de Patrimonio Neto de Controladora', 'BALANCE', 'XBRL', b'1'),
(164, 'Participaciones Minoritarias', 'Participaciones Minoritarias', 'BALANCE', 'XBRL', b'1'),
(165, 'Patrimonio Neto, Total', 'Patrimonio Neto, Total', 'BALANCE', 'XBRL', b'1'),
(166, 'Otros Pasivos, No Corrientes', 'Otros Pasivos, No Corrientes', 'BALANCE', 'XBRL', b'1'),
(167, 'Ingresos Diferidos, No Corriente', 'Ingresos Diferidos, No Corriente', 'BALANCE', 'XBRL', b'1'),
(168, 'Obligaci', 'Obligaci', 'BALANCE', 'XBRL', b'1'),
(169, 'Pasivos de Cobertura, no Corriente', 'Pasivos de Cobertura, no Corriente', 'BALANCE', 'XBRL', b'1'),
(170, 'Pasivos, No Corrientes, Total', 'Pasivos, No Corrientes, Total', 'BALANCE', 'XBRL', b'1'),
(171, 'Activos Financieros a Valor Razonable con Cambios en Resultados', 'Activos Financieros a Valor Razonable con Cambios en Resultados', 'BALANCE', 'XBRL', b'1'),
(172, 'Activos Financieros Disponibles para la Venta, Corrientes', 'Activos Financieros Disponibles para la Venta, Corrientes', 'BALANCE', 'XBRL', b'1'),
(173, 'Patrimonio Neto y Pasivos, Total', 'Patrimonio Neto y Pasivos, Total', 'BALANCE', 'XBRL', b'1'),
(174, 'Provisiones, no Corriente', 'Provisiones, no Corriente', 'BALANCE', 'XBRL', b'1'),
(175, 'Activos de Cobertura, Corriente', 'Activos de Cobertura, Corriente', 'BALANCE', 'XBRL', b'1'),
(176, 'Activos Pignorados como Garant', 'Activos Pignorados como Garant', 'BALANCE', 'XBRL', b'1'),
(177, 'Pagos Anticipados, Corriente', 'Pagos Anticipados, Corriente', 'BALANCE', 'XBRL', b'1'),
(178, 'Cuentas por cobrar por Impuestos Corrientes', 'Cuentas por cobrar por Impuestos Corrientes', 'BALANCE', 'XBRL', b'1'),
(179, 'Otros Activos, Corriente', 'Otros Activos, Corriente', 'BALANCE', 'XBRL', b'1'),
(180, 'Activos Corrientes en Operaci', 'Activos Corrientes en Operaci', 'BALANCE', 'XBRL', b'1'),
(181, 'Activos No Corrientes y Grupos en Desapropiaci', 'Activos No Corrientes y Grupos en Desapropiaci', 'BALANCE', 'XBRL', b'1'),
(182, 'AvailableForSaleFinancialAssetsNonCurrent', 'AvailableForSaleFinancialAssetsNonCurrent', 'BALANCE', 'XBRL', b'1'),
(183, 'ActivoFinancieroOtrosNoCorriente', 'ActivoFinancieroOtrosNoCorriente', 'BALANCE', 'XBRL', b'1'),
(184, 'TradeAndOtherReceivablesNetNonCurrent', 'TradeAndOtherReceivablesNetNonCurrent', 'BALANCE', 'XBRL', b'1'),
(185, 'Inversiones en Asociadas Contabilizadas por el M', 'Inversiones en Asociadas Contabilizadas por el M', 'BALANCE', 'XBRL', b'1'),
(186, 'Otras Inversiones Contabilizadas por el M', 'Otras Inversiones Contabilizadas por el M', 'BALANCE', 'XBRL', b'1'),
(187, 'Activos Intangibles, Neto', 'Activos Intangibles, Neto', 'BALANCE', 'XBRL', b'1'),
(188, 'Provisiones, Corriente', 'Provisiones, Corriente', 'BALANCE', 'XBRL', b'1'),
(189, 'Cuentas por Pagar por Impuestos Corrientes', 'Cuentas por Pagar por Impuestos Corrientes', 'BALANCE', 'XBRL', b'1'),
(190, 'Otros Pasivos, Corriente', 'Otros Pasivos, Corriente', 'BALANCE', 'XBRL', b'1'),
(191, 'Ingresos Diferidos, Corriente', 'Ingresos Diferidos, Corriente', 'BALANCE', 'XBRL', b'1'),
(192, 'Obligaci', 'Obligaci', 'BALANCE', 'XBRL', b'1'),
(193, 'Pasivos de Cobertura, Corriente', 'Pasivos de Cobertura, Corriente', 'BALANCE', 'XBRL', b'1'),
(194, 'Pasivos Acumulados (o Devengados), Total', 'Pasivos Acumulados (o Devengados), Total', 'BALANCE', 'XBRL', b'1'),
(195, 'Pasivos Corrientes en Operaci', 'Pasivos Corrientes en Operaci', 'BALANCE', 'XBRL', b'1'),
(196, 'Pasivos, Corrientes, Total', 'Pasivos, Corrientes, Total', 'BALANCE', 'XBRL', b'1'),
(197, 'InterestBearingBorrowingsNonCurrent', 'InterestBearingBorrowingsNonCurrent', 'BALANCE', 'XBRL', b'1'),
(198, 'NonInterestBearingBorrowingsNonCurrent', 'NonInterestBearingBorrowingsNonCurrent', 'BALANCE', 'XBRL', b'1'),
(199, 'OtherFinancialLiabilitiesNonCurrent', 'OtherFinancialLiabilitiesNonCurrent', 'BALANCE', 'XBRL', b'1'),
(200, 'TradeAndOtherPayablesNonCurrent', 'TradeAndOtherPayablesNonCurrent', 'BALANCE', 'XBRL', b'1'),
(201, 'OtherNonOperatingExpenses', 'Otros Gastos distintos de los de Operaci', 'RESULTADO', 'XBRL', b'1'),
(202, 'ShareOfProfitLossFromEquityAccountedJointVentures', 'Participaci', 'RESULTADO', 'XBRL', b'1'),
(236, 'Item SSS', 'Item SSS', 'NO ESPECIFICA', 'MANUAL', b'1'),
(237, 'Porcentaje Cartera Repactada al dÃ­a', 'Porcentaje Cartera Repactada al dÃ­a', 'NO ESPECIFICA', 'MANUAL', b'1'),
(238, 'Porcentaje Cartera Repactada entre 1 dÃ­a y 30 dÃ­as', 'Porcentaje Cartera Repactada entre 1 dÃ­a y 30 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(239, 'Porcentaje Cartera Repactada entre 31 dÃ­as y 60 dÃ­as', 'Porcentaje Cartera Repactada entre 31 dÃ­as y 60 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(240, 'Porcentaje Cartera Repactada entre 61 dÃ­as y 90 dÃ­as', 'Porcentaje Cartera Repactada entre 61 dÃ­as y 90 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(241, 'Porcentaje Cartera Repactada entre 91 dÃ­as y 120 dÃ­as', 'Porcentaje Cartera Repactada entre 91 dÃ­as y 120 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(242, 'Porcentaje Cartera Repactada entre 121 dÃ­as y 150 dÃ­as', 'Porcentaje Cartera Repactada entre 121 dÃ­as y 150 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(243, 'Porcentaje Cartera Repactada entre 151 dÃ­as y 180 dÃ­as', 'Porcentaje Cartera Repactada entre 151 dÃ­as y 180 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(244, 'Porcentaje Cartera Repactada de mÃ¡s de 180 dÃ­as', 'Porcentaje Cartera Repactada de mÃ¡s de 180 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(245, 'Cartera Bruta por Tramos entre 1 y 30 dÃ­as', 'Cartera Bruta por Tramos entre 1 y 30 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(246, 'Cartera Bruta por Tramos entre 31 dÃ­as y 90 dÃ­as', 'Cartera Bruta por Tramos entre 31 dÃ­as y 90 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(247, 'Cartera Bruta por Tramos entre 91 dÃ­as y 180 dÃ­as', 'Cartera Bruta por Tramos entre 91 dÃ­as y 180 dÃ­as', 'NO ESPECIFICA', 'MANUAL', b'1'),
(248, 'Cartera Bruta por Tramos de mÃ¡s de 180', 'Cartera Bruta por Tramos de mÃ¡s de 180', 'NO ESPECIFICA', 'MANUAL', b'1'),
(250, 'Ingresos Servicios Financieros', 'Ingresos Servicios Financieros', 'NO ESPECIFICA', 'MANUAL', b'1'),
(251, 'Inngreso Servicios Financieros Hites', 'Inngreso Servicios Financieros Hites', 'NO ESPECIFICA', 'MANUAL', b'1'),
(252, 'Ingresos Serv. Financieros Trimestre Anterior', 'Ingresos Serv. Financieros Trimestre Anterior', 'NO ESPECIFICA', 'MANUAL', b'1'),
(261, 'Ingresos Retail Chile', 'Ingresos Retail Chile', 'NO ESPECIFICA', 'MANUAL', b'1'),
(262, 'Ingresos Servicios Financieros Chile', 'Ingresos Servicios Financieros Chile', 'NO ESPECIFICA', 'MANUAL', b'1'),
(263, 'Multiplo', 'Multiplo', 'NO ESPECIFICA', 'MANUAL', b'1'),
(264, 'Ingresos Retail', 'Ingresos Retail', 'NO ESPECIFICA', 'MANUAL', b'1'),
(265, 'Costo Retail', 'Costo Retail', 'NO ESPECIFICA', 'MANUAL', b'1'),
(266, 'Margen Retail', 'Margen Retail', 'NO ESPECIFICA', 'MANUAL', b'1'),
(267, 'Item 1', 'Item 1', 'NO ESPECIFICA', 'MANUAL', b'1'),
(268, 'Item 2', 'Item 2', 'NO ESPECIFICA', 'MANUAL', b'1'),
(269, 'Ingresos Totales', 'Ingresos Totales', 'NO ESPECIFICA', 'MANUAL', b'1'),
(275, 'Ingresos Totales Anuales', 'Ingresos Totales Anuales', 'NO ESPECIFICA', 'MANUAL', b'1'),
(276, 'Ingresos Retail', 'Ingresos Retail', 'NO ESPECIFICA', 'MANUAL', b'1'),
(277, 'Ingresos Retail Anuales', 'Ingresos Retail Anuales', 'NO ESPECIFICA', 'MANUAL', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `tag_agf_xbrl`
--

CREATE TABLE IF NOT EXISTS `tag_agf_xbrl` (
  `ID_TAG_AGF` int(18) NOT NULL,
  `ID_TAG_XBRL` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tag_xbrl`
--

CREATE TABLE IF NOT EXISTS `tag_xbrl` (
  `ID_TAG_XBRL` int(18) NOT NULL,
  `NOMBRE` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ETIQUETA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PREFIX` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `COMPONENTE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `TAXONOMIA` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tipos_empresas`
--

CREATE TABLE IF NOT EXISTS `tipos_empresas` (
  `ID_TIPO_EMPRESA` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_EMPRESA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tipos_empresas`
--

INSERT INTO `tipos_empresas` (`ID_TIPO_EMPRESA`, `NOMBRE`, `DESCRIPCION`, `OA`) VALUES
(4, 'Grupo Comparativo Hites', 'Comparaciones', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `ID_USUARIO` int(11) NOT NULL,
  `LOGIN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PASWORD` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `NOMBRES` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `APELLIDOS` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `RUT` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `EMAIL` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FONO` varchar(10) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_perfiles`
--

CREATE TABLE IF NOT EXISTS `usuarios_perfiles` (
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_PERFIL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `valores`
--

CREATE TABLE IF NOT EXISTS `valores` (
  `ID_VALOR` int(18) NOT NULL AUTO_INCREMENT,
  `ID_TAG_AGF` int(18) DEFAULT NULL,
  `ID_EMPRESA` int(18) DEFAULT NULL,
  `ID_PERIODO` int(18) DEFAULT NULL,
  `tipo` varchar(10) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'TRIMESTRAL',
  `VALOR` double NOT NULL,
  `DT_MODIFICACION` datetime DEFAULT NULL,
  `origen` int(11) NOT NULL,
  PRIMARY KEY (`ID_VALOR`),
  KEY `ID_PERIODO` (`ID_PERIODO`),
  KEY `ID_TAG_AGF` (`ID_TAG_AGF`,`ID_EMPRESA`,`ID_PERIODO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1729 ;

--
-- Dumping data for table `valores`
--

INSERT INTO `valores` (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) VALUES
(1, 267, 721, 13, 'TRIMESTRAL', 50, '1900-01-01 00:00:00', 1),
(2, 268, 721, 13, 'TRIMESTRAL', 100, '1900-01-01 00:00:00', 1),
(3, 267, 721, 14, 'TRIMESTRAL', 80, '1900-01-01 00:00:00', 1),
(4, 268, 721, 14, 'TRIMESTRAL', 120, '1900-01-01 00:00:00', 1),
(5, 267, 721, 15, 'TRIMESTRAL', 70, '1900-01-01 00:00:00', 1),
(6, 268, 721, 15, 'TRIMESTRAL', 110, '1900-01-01 00:00:00', 1),
(7, 267, 721, 16, 'TRIMESTRAL', 40, '1900-01-01 00:00:00', 1),
(8, 268, 721, 16, 'TRIMESTRAL', 100, '1900-01-01 00:00:00', 1),
(9, 267, 721, 1, 'TRIMESTRAL', 80, '1900-01-01 00:00:00', 1),
(10, 268, 721, 1, 'TRIMESTRAL', 90, '1900-01-01 00:00:00', 1),
(11, 267, 721, 2, 'TRIMESTRAL', 120, '1900-01-01 00:00:00', 1),
(12, 268, 721, 2, 'TRIMESTRAL', 60, '1900-01-01 00:00:00', 1),
(13, 267, 721, 3, 'TRIMESTRAL', 40, '1900-01-01 00:00:00', 1),
(14, 268, 721, 3, 'TRIMESTRAL', 80, '1900-01-01 00:00:00', 1),
(15, 267, 721, 4, 'TRIMESTRAL', 60, '1900-01-01 00:00:00', 1),
(16, 268, 721, 4, 'TRIMESTRAL', 150, '1900-01-01 00:00:00', 1),
(17, 267, 724, 13, 'TRIMESTRAL', 100, '1900-01-01 00:00:00', 1),
(18, 268, 724, 13, 'TRIMESTRAL', 50, '1900-01-01 00:00:00', 1),
(19, 267, 724, 14, 'TRIMESTRAL', 120, '1900-01-01 00:00:00', 1),
(20, 268, 724, 14, 'TRIMESTRAL', 80, '1900-01-01 00:00:00', 1),
(21, 267, 724, 15, 'TRIMESTRAL', 110, '1900-01-01 00:00:00', 1),
(22, 268, 724, 15, 'TRIMESTRAL', 70, '1900-01-01 00:00:00', 1),
(23, 267, 724, 16, 'TRIMESTRAL', 100, '1900-01-01 00:00:00', 1),
(24, 268, 724, 16, 'TRIMESTRAL', 40, '1900-01-01 00:00:00', 1),
(25, 267, 724, 1, 'TRIMESTRAL', 90, '1900-01-01 00:00:00', 1),
(26, 268, 724, 1, 'TRIMESTRAL', 80, '1900-01-01 00:00:00', 1),
(27, 267, 724, 2, 'TRIMESTRAL', 60, '1900-01-01 00:00:00', 1),
(28, 268, 724, 2, 'TRIMESTRAL', 120, '1900-01-01 00:00:00', 1),
(29, 267, 724, 3, 'TRIMESTRAL', 80, '1900-01-01 00:00:00', 1),
(30, 268, 724, 3, 'TRIMESTRAL', 40, '1900-01-01 00:00:00', 1),
(31, 267, 724, 4, 'TRIMESTRAL', 150, '1900-01-01 00:00:00', 1),
(32, 268, 724, 4, 'TRIMESTRAL', 60, '1900-01-01 00:00:00', 1),
(481, 269, 725, 13, 'TRIMESTRAL', 233542, NULL, 1),
(482, 269, 725, 14, 'TRIMESTRAL', 254770, NULL, 1),
(483, 269, 725, 15, 'TRIMESTRAL', 246159, NULL, 1),
(484, 269, 725, 16, 'TRIMESTRAL', 313263, NULL, 1),
(485, 269, 725, 1, 'TRIMESTRAL', 239524, NULL, 1),
(486, 269, 725, 2, 'TRIMESTRAL', 298623, NULL, 1),
(487, 269, 725, 3, 'TRIMESTRAL', 275302, NULL, 1),
(488, 269, 725, 4, 'TRIMESTRAL', 374579, NULL, 1),
(489, 269, 725, 5, 'TRIMESTRAL', 282887, NULL, 1),
(490, 269, 725, 6, 'TRIMESTRAL', 323310, NULL, 1),
(491, 269, 725, 7, 'TRIMESTRAL', 302521, NULL, 1),
(492, 269, 725, 8, 'TRIMESTRAL', 395808, NULL, 1),
(493, 269, 725, 9, 'TRIMESTRAL', 320630, NULL, 1),
(494, 269, 725, 10, 'TRIMESTRAL', 333045, NULL, 1),
(495, 269, 725, 11, 'TRIMESTRAL', 321947, NULL, 1),
(496, 269, 725, 12, 'TRIMESTRAL', 419376, NULL, 1),
(497, 269, 725, 28, 'TRIMESTRAL', 340662, NULL, 1),
(498, 269, 726, 13, 'TRIMESTRAL', 167280, NULL, 1),
(499, 269, 726, 14, 'TRIMESTRAL', 177713, NULL, 1),
(500, 269, 726, 15, 'TRIMESTRAL', 168046, NULL, 1),
(501, 269, 726, 16, 'TRIMESTRAL', 232725, NULL, 1),
(502, 269, 726, 1, 'TRIMESTRAL', 162751, NULL, 1),
(503, 269, 726, 2, 'TRIMESTRAL', 206590, NULL, 1),
(504, 269, 726, 3, 'TRIMESTRAL', 190009, NULL, 1),
(505, 269, 726, 4, 'TRIMESTRAL', 256034, NULL, 1),
(506, 269, 726, 5, 'TRIMESTRAL', 197796, NULL, 1),
(507, 269, 726, 6, 'TRIMESTRAL', 227685, NULL, 1),
(508, 269, 726, 7, 'TRIMESTRAL', 211603, NULL, 1),
(509, 269, 726, 8, 'TRIMESTRAL', 276250, NULL, 1),
(510, 269, 726, 9, 'TRIMESTRAL', 243087, NULL, 1),
(511, 269, 726, 10, 'TRIMESTRAL', 268116, NULL, 1),
(512, 269, 726, 11, 'TRIMESTRAL', 260445, NULL, 1),
(513, 269, 726, 12, 'TRIMESTRAL', 338153, NULL, 1),
(514, 269, 726, 28, 'TRIMESTRAL', 259031, NULL, 1),
(515, 269, 727, 13, 'TRIMESTRAL', 153558, NULL, 1),
(516, 269, 727, 14, 'TRIMESTRAL', 163183, NULL, 1),
(517, 269, 727, 15, 'TRIMESTRAL', 149899, NULL, 1),
(518, 269, 727, 16, 'TRIMESTRAL', 204105, NULL, 1),
(519, 269, 727, 1, 'TRIMESTRAL', 146943, NULL, 1),
(520, 269, 727, 2, 'TRIMESTRAL', 185685, NULL, 1),
(521, 269, 727, 3, 'TRIMESTRAL', 168268, NULL, 1),
(522, 269, 727, 4, 'TRIMESTRAL', 230886, NULL, 1),
(523, 269, 727, 5, 'TRIMESTRAL', 171694, NULL, 1),
(524, 269, 727, 6, 'TRIMESTRAL', 194699, NULL, 1),
(525, 269, 727, 7, 'TRIMESTRAL', 175379, NULL, 1),
(526, 269, 727, 8, 'TRIMESTRAL', 240846, NULL, 1),
(527, 269, 727, 9, 'TRIMESTRAL', 181959, NULL, 1),
(528, 269, 727, 10, 'TRIMESTRAL', 196529, NULL, 1),
(529, 269, 727, 11, 'TRIMESTRAL', 189933, NULL, 1),
(530, 269, 727, 12, 'TRIMESTRAL', 262762, NULL, 1),
(531, 269, 727, 28, 'TRIMESTRAL', 185161, NULL, 1),
(532, 269, 728, 1, 'TRIMESTRAL', 46561, NULL, 1),
(533, 269, 728, 2, 'TRIMESTRAL', 60811, NULL, 1),
(534, 269, 728, 3, 'TRIMESTRAL', 66874, NULL, 1),
(535, 269, 728, 4, 'TRIMESTRAL', 68830, NULL, 1),
(536, 269, 728, 5, 'TRIMESTRAL', 60297, NULL, 1),
(537, 269, 728, 6, 'TRIMESTRAL', 71891, NULL, 1),
(538, 269, 728, 7, 'TRIMESTRAL', 59426, NULL, 1),
(539, 269, 728, 8, 'TRIMESTRAL', 83423, NULL, 1),
(540, 269, 728, 9, 'TRIMESTRAL', 68002, NULL, 1),
(541, 269, 728, 10, 'TRIMESTRAL', 72012, NULL, 1),
(542, 269, 728, 11, 'TRIMESTRAL', 71332, NULL, 1),
(543, 269, 728, 12, 'TRIMESTRAL', 95113, NULL, 1),
(544, 269, 728, 28, 'TRIMESTRAL', 75063, NULL, 1),
(545, 269, 729, 8, 'TRIMESTRAL', 104093, NULL, 1),
(546, 269, 729, 9, 'TRIMESTRAL', 74686, NULL, 1),
(547, 269, 729, 10, 'TRIMESTRAL', 85098, NULL, 1),
(548, 269, 729, 11, 'TRIMESTRAL', 80213, NULL, 1),
(549, 269, 729, 12, 'TRIMESTRAL', 111933, NULL, 1),
(550, 269, 729, 28, 'TRIMESTRAL', 82991, NULL, 1),
(551, 269, 730, 13, 'TRIMESTRAL', 29510, NULL, 1),
(552, 269, 730, 14, 'TRIMESTRAL', 35315, NULL, 1),
(553, 269, 730, 15, 'TRIMESTRAL', 32630, NULL, 1),
(554, 269, 730, 16, 'TRIMESTRAL', 48906, NULL, 1),
(555, 269, 730, 1, 'TRIMESTRAL', 32223, NULL, 1),
(556, 269, 730, 2, 'TRIMESTRAL', 45917, NULL, 1),
(557, 269, 730, 3, 'TRIMESTRAL', 41370, NULL, 1),
(558, 269, 730, 4, 'TRIMESTRAL', 64401, NULL, 1),
(559, 269, 730, 5, 'TRIMESTRAL', 42968, NULL, 1),
(560, 269, 730, 6, 'TRIMESTRAL', 54256, NULL, 1),
(561, 269, 730, 7, 'TRIMESTRAL', 53014, NULL, 1),
(562, 269, 730, 8, 'TRIMESTRAL', 77275, NULL, 1),
(563, 269, 730, 9, 'TRIMESTRAL', 52444, NULL, 1),
(564, 269, 730, 10, 'TRIMESTRAL', 62514, NULL, 1),
(565, 269, 730, 11, 'TRIMESTRAL', 58831, NULL, 1),
(566, 269, 730, 12, 'TRIMESTRAL', 80041, NULL, 1),
(567, 269, 730, 28, 'TRIMESTRAL', 54081, NULL, 1),
(813, 162, 721, 1, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(814, 162, 721, 2, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(815, 162, 721, 3, 'TRIMESTRAL', 120, '0000-00-00 00:00:00', 2),
(816, 162, 721, 4, 'TRIMESTRAL', 210, '0000-00-00 00:00:00', 2),
(817, 162, 721, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(818, 162, 721, 14, 'TRIMESTRAL', 200, '0000-00-00 00:00:00', 2),
(819, 162, 721, 15, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(820, 162, 721, 16, 'TRIMESTRAL', 140, '0000-00-00 00:00:00', 2),
(821, 162, 724, 1, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(822, 162, 724, 2, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(823, 162, 724, 3, 'TRIMESTRAL', 120, '0000-00-00 00:00:00', 2),
(824, 162, 724, 4, 'TRIMESTRAL', 210, '0000-00-00 00:00:00', 2),
(825, 162, 724, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(826, 162, 724, 14, 'TRIMESTRAL', 200, '0000-00-00 00:00:00', 2),
(827, 162, 724, 15, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(828, 162, 724, 16, 'TRIMESTRAL', 140, '0000-00-00 00:00:00', 2),
(829, 163, 721, 1, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(830, 163, 721, 2, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(831, 163, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(832, 163, 721, 4, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(833, 163, 721, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(834, 163, 721, 14, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(835, 163, 721, 15, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(836, 163, 721, 16, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(837, 163, 724, 1, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(838, 163, 724, 2, 'TRIMESTRAL', 90, '0000-00-00 00:00:00', 2),
(839, 163, 724, 3, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(840, 163, 724, 4, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(841, 163, 724, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(842, 163, 724, 14, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(843, 163, 724, 15, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(844, 163, 724, 16, 'TRIMESTRAL', 30, '0000-00-00 00:00:00', 2),
(845, 165, 721, 1, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(846, 165, 721, 2, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(847, 165, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(848, 165, 721, 4, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(849, 165, 721, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(850, 165, 721, 14, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(851, 165, 721, 15, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(852, 165, 721, 16, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(853, 165, 724, 1, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(854, 165, 724, 2, 'TRIMESTRAL', 90, '0000-00-00 00:00:00', 2),
(855, 165, 724, 3, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(856, 165, 724, 4, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(857, 165, 724, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(858, 165, 724, 14, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(859, 165, 724, 15, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(860, 165, 724, 16, 'TRIMESTRAL', 30, '0000-00-00 00:00:00', 2),
(861, 166, 721, 1, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(862, 166, 721, 2, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(863, 166, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(864, 166, 721, 4, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(865, 166, 721, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(866, 166, 721, 14, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(867, 166, 721, 15, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(868, 166, 721, 16, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(869, 166, 724, 1, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(870, 166, 724, 2, 'TRIMESTRAL', 90, '0000-00-00 00:00:00', 2),
(871, 166, 724, 3, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(872, 166, 724, 4, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(873, 166, 724, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(874, 166, 724, 14, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(875, 166, 724, 15, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(876, 166, 724, 16, 'TRIMESTRAL', 30, '0000-00-00 00:00:00', 2),
(877, 169, 721, 1, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(878, 169, 721, 2, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(879, 169, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(880, 169, 721, 4, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(881, 169, 721, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(882, 169, 721, 14, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(883, 169, 721, 15, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(884, 169, 721, 16, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(885, 169, 724, 1, 'TRIMESTRAL', 70, '0000-00-00 00:00:00', 2),
(886, 169, 724, 2, 'TRIMESTRAL', 90, '0000-00-00 00:00:00', 2),
(887, 169, 724, 3, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(888, 169, 724, 4, 'TRIMESTRAL', 130, '0000-00-00 00:00:00', 2),
(889, 169, 724, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(890, 169, 724, 14, 'TRIMESTRAL', 100, '0000-00-00 00:00:00', 2),
(891, 169, 724, 15, 'TRIMESTRAL', 60, '0000-00-00 00:00:00', 2),
(892, 169, 724, 16, 'TRIMESTRAL', 30, '0000-00-00 00:00:00', 2),
(893, 170, 721, 1, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(894, 170, 721, 2, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(895, 170, 721, 3, 'TRIMESTRAL', 120, '0000-00-00 00:00:00', 2),
(896, 170, 721, 4, 'TRIMESTRAL', 210, '0000-00-00 00:00:00', 2),
(897, 170, 721, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(898, 170, 721, 14, 'TRIMESTRAL', 200, '0000-00-00 00:00:00', 2),
(899, 170, 721, 15, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(900, 170, 721, 16, 'TRIMESTRAL', 140, '0000-00-00 00:00:00', 2),
(901, 170, 724, 1, 'TRIMESTRAL', 170, '0000-00-00 00:00:00', 2),
(902, 170, 724, 2, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(903, 170, 724, 3, 'TRIMESTRAL', 120, '0000-00-00 00:00:00', 2),
(904, 170, 724, 4, 'TRIMESTRAL', 210, '0000-00-00 00:00:00', 2),
(905, 170, 724, 13, 'TRIMESTRAL', 150, '0000-00-00 00:00:00', 2),
(906, 170, 724, 14, 'TRIMESTRAL', 200, '0000-00-00 00:00:00', 2),
(907, 170, 724, 15, 'TRIMESTRAL', 180, '0000-00-00 00:00:00', 2),
(908, 170, 724, 16, 'TRIMESTRAL', 140, '0000-00-00 00:00:00', 2),
(909, 183, 721, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(910, 183, 724, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(911, 183, 725, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(912, 183, 726, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(913, 183, 727, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(914, 183, 728, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(915, 183, 730, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(916, 183, 729, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(917, 183, 731, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(918, 183, 732, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(919, 183, 721, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(920, 183, 724, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(921, 183, 725, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(922, 183, 726, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(923, 183, 727, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(924, 183, 728, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(925, 183, 730, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(926, 183, 729, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(927, 183, 731, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(928, 183, 732, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(929, 183, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(930, 183, 724, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(931, 183, 725, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(932, 183, 726, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(933, 183, 727, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(934, 183, 728, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(935, 183, 730, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(936, 183, 729, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(937, 183, 731, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(938, 183, 732, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(939, 183, 721, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(940, 183, 724, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(941, 183, 725, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(942, 183, 726, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(943, 183, 727, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(944, 183, 728, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(945, 183, 730, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(946, 183, 729, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(947, 183, 731, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(948, 183, 732, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(949, 183, 725, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(950, 183, 726, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(951, 183, 727, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(952, 183, 728, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(953, 183, 730, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(954, 183, 729, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(955, 183, 731, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(956, 183, 732, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(957, 183, 725, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(958, 183, 726, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(959, 183, 727, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(960, 183, 728, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(961, 183, 730, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(962, 183, 729, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(963, 183, 731, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(964, 183, 732, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(965, 183, 725, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(966, 183, 726, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(967, 183, 727, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(968, 183, 728, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(969, 183, 730, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(970, 183, 729, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(971, 183, 731, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(972, 183, 732, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(973, 183, 725, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(974, 183, 726, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(975, 183, 727, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(976, 183, 728, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(977, 183, 729, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(978, 183, 730, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(979, 183, 731, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(980, 183, 732, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(981, 183, 725, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(982, 183, 726, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(983, 183, 727, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(984, 183, 728, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(985, 183, 729, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(986, 183, 730, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(987, 183, 731, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(988, 183, 732, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(989, 183, 725, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(990, 183, 726, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(991, 183, 727, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(992, 183, 728, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(993, 183, 729, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(994, 183, 730, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(995, 183, 731, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(996, 183, 732, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(997, 183, 725, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(998, 183, 726, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(999, 183, 727, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1000, 183, 728, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1001, 183, 729, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1002, 183, 730, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1003, 183, 731, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1004, 183, 732, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1005, 183, 725, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1006, 183, 726, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1007, 183, 727, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1008, 183, 728, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1009, 183, 729, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1010, 183, 730, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1011, 183, 731, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1012, 183, 732, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1013, 183, 721, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1014, 183, 724, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1015, 183, 725, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1016, 183, 726, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1017, 183, 727, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1018, 183, 730, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1019, 183, 728, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1020, 183, 729, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1021, 183, 731, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1022, 183, 732, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1023, 183, 721, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1024, 183, 724, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1025, 183, 725, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1026, 183, 726, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1027, 183, 727, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1028, 183, 730, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1029, 183, 728, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1030, 183, 729, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1031, 183, 731, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1032, 183, 732, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1033, 183, 721, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1034, 183, 724, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1035, 183, 725, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1036, 183, 726, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1037, 183, 727, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1038, 183, 730, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1039, 183, 728, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1040, 183, 729, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1041, 183, 731, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1042, 183, 732, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1043, 183, 721, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1044, 183, 724, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1045, 183, 725, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1046, 183, 726, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1047, 183, 727, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1048, 183, 730, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1049, 183, 728, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1050, 183, 731, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1051, 183, 729, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1052, 183, 732, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1053, 183, 725, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1054, 183, 726, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1055, 183, 727, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1056, 183, 728, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1057, 183, 729, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1058, 183, 730, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1059, 183, 731, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1060, 183, 732, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1061, 184, 721, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1062, 184, 724, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1063, 184, 725, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1064, 184, 726, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1065, 184, 727, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1066, 184, 728, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1067, 184, 730, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1068, 184, 729, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1069, 184, 731, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1070, 184, 732, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1071, 184, 721, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1072, 184, 724, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1073, 184, 725, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1074, 184, 726, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1075, 184, 727, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1076, 184, 728, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1077, 184, 730, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1078, 184, 729, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1079, 184, 731, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1080, 184, 732, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1081, 184, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1082, 184, 724, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1083, 184, 725, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1084, 184, 726, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1085, 184, 727, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1086, 184, 728, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1087, 184, 730, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1088, 184, 729, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1089, 184, 731, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1090, 184, 732, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1091, 184, 721, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1092, 184, 724, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1093, 184, 725, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1094, 184, 726, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1095, 184, 727, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1096, 184, 728, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1097, 184, 730, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1098, 184, 729, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1099, 184, 731, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1100, 184, 732, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1101, 184, 725, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1102, 184, 726, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1103, 184, 727, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1104, 184, 728, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1105, 184, 730, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1106, 184, 729, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1107, 184, 731, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1108, 184, 732, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1109, 184, 725, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1110, 184, 726, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1111, 184, 727, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1112, 184, 728, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1113, 184, 730, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1114, 184, 729, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1115, 184, 731, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1116, 184, 732, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1117, 184, 725, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1118, 184, 726, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1119, 184, 727, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1120, 184, 728, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1121, 184, 730, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1122, 184, 729, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1123, 184, 731, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1124, 184, 732, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1125, 184, 725, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1126, 184, 726, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1127, 184, 727, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1128, 184, 728, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1129, 184, 729, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1130, 184, 730, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1131, 184, 731, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1132, 184, 732, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1133, 184, 725, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1134, 184, 726, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1135, 184, 727, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1136, 184, 728, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1137, 184, 729, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1138, 184, 730, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1139, 184, 731, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1140, 184, 732, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1141, 184, 725, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1142, 184, 726, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1143, 184, 727, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1144, 184, 728, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1145, 184, 729, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1146, 184, 730, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1147, 184, 731, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1148, 184, 732, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1149, 184, 725, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1150, 184, 726, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1151, 184, 727, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1152, 184, 728, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1153, 184, 729, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1154, 184, 730, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1155, 184, 731, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1156, 184, 732, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1157, 184, 725, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1158, 184, 726, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1159, 184, 727, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1160, 184, 728, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1161, 184, 729, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1162, 184, 730, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1163, 184, 731, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1164, 184, 732, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1165, 184, 721, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1166, 184, 724, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1167, 184, 725, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1168, 184, 726, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1169, 184, 727, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1170, 184, 730, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1171, 184, 728, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1172, 184, 729, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1173, 184, 731, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1174, 184, 732, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1175, 184, 721, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1176, 184, 724, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1177, 184, 725, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1178, 184, 726, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1179, 184, 727, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1180, 184, 730, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1181, 184, 728, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1182, 184, 729, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1183, 184, 731, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1184, 184, 732, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1185, 184, 721, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1186, 184, 724, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1187, 184, 725, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1188, 184, 726, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1189, 184, 727, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1190, 184, 730, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1191, 184, 728, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1192, 184, 729, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1193, 184, 731, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1194, 184, 732, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1195, 184, 721, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1196, 184, 724, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1197, 184, 725, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1198, 184, 726, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1199, 184, 727, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1200, 184, 730, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1201, 184, 728, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1202, 184, 731, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1203, 184, 729, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1204, 184, 732, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1205, 184, 725, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1206, 184, 726, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1207, 184, 727, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1208, 184, 728, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1209, 184, 729, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1210, 184, 730, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1211, 184, 731, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1212, 184, 732, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1213, 185, 721, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1214, 185, 724, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1215, 185, 725, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1216, 185, 726, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1217, 185, 727, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1218, 185, 728, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1219, 185, 730, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1220, 185, 729, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1221, 185, 731, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1222, 185, 732, 1, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1223, 185, 721, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1224, 185, 724, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1225, 185, 725, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1226, 185, 726, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1227, 185, 727, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1228, 185, 728, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1229, 185, 730, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1230, 185, 729, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1231, 185, 731, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1232, 185, 732, 2, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1233, 185, 721, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1234, 185, 724, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1235, 185, 725, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1236, 185, 726, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1237, 185, 727, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1238, 185, 728, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1239, 185, 730, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1240, 185, 729, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1241, 185, 731, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1242, 185, 732, 3, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1243, 185, 721, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1244, 185, 724, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1245, 185, 725, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1246, 185, 726, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1247, 185, 727, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1248, 185, 728, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1249, 185, 730, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1250, 185, 729, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1251, 185, 731, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1252, 185, 732, 4, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1253, 185, 725, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1254, 185, 726, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1255, 185, 727, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1256, 185, 728, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1257, 185, 730, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1258, 185, 729, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1259, 185, 731, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1260, 185, 732, 5, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1261, 185, 725, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1262, 185, 726, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1263, 185, 727, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1264, 185, 728, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1265, 185, 730, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1266, 185, 729, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1267, 185, 731, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1268, 185, 732, 6, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1269, 185, 725, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1270, 185, 726, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1271, 185, 727, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1272, 185, 728, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1273, 185, 730, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1274, 185, 729, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1275, 185, 731, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1276, 185, 732, 7, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1277, 185, 725, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1278, 185, 726, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1279, 185, 727, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1280, 185, 728, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1281, 185, 729, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1282, 185, 730, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1283, 185, 731, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1284, 185, 732, 8, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1285, 185, 725, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1286, 185, 726, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1287, 185, 727, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1288, 185, 728, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1289, 185, 729, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1290, 185, 730, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1291, 185, 731, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1292, 185, 732, 9, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1293, 185, 725, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1294, 185, 726, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1295, 185, 727, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1296, 185, 728, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1297, 185, 729, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1298, 185, 730, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1299, 185, 731, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1300, 185, 732, 10, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1301, 185, 725, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1302, 185, 726, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1303, 185, 727, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1304, 185, 728, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1305, 185, 729, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1306, 185, 730, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1307, 185, 731, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1308, 185, 732, 11, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1309, 185, 725, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1310, 185, 726, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1311, 185, 727, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1312, 185, 728, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1313, 185, 729, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1314, 185, 730, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1315, 185, 731, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1316, 185, 732, 12, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1317, 185, 721, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1318, 185, 724, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1319, 185, 725, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1320, 185, 726, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1321, 185, 727, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1322, 185, 730, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1323, 185, 728, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1324, 185, 729, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1325, 185, 731, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1326, 185, 732, 13, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1327, 185, 721, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1328, 185, 724, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1329, 185, 725, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1330, 185, 726, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1331, 185, 727, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1332, 185, 730, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1333, 185, 728, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1334, 185, 729, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1335, 185, 731, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1336, 185, 732, 14, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1337, 185, 721, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1338, 185, 724, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1339, 185, 725, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1340, 185, 726, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1341, 185, 727, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1342, 185, 730, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1343, 185, 728, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1344, 185, 729, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1345, 185, 731, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1346, 185, 732, 15, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1347, 185, 721, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1348, 185, 724, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1349, 185, 725, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1350, 185, 726, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1351, 185, 727, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1352, 185, 730, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1353, 185, 728, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1354, 185, 731, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1355, 185, 729, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1356, 185, 732, 16, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1357, 185, 725, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1358, 185, 726, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1359, 185, 727, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1360, 185, 728, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1361, 185, 729, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1362, 185, 730, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1363, 185, 731, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1364, 185, 732, 28, 'TRIMESTRAL', 0, '0000-00-00 00:00:00', 2),
(1483, 275, 731, 13, 'TRIMESTRAL', 0, NULL, 1),
(1484, 275, 731, 14, 'TRIMESTRAL', 0, NULL, 1),
(1485, 275, 731, 15, 'TRIMESTRAL', 0, NULL, 1),
(1486, 275, 731, 16, 'TRIMESTRAL', 1047734, NULL, 1),
(1487, 275, 731, 1, 'TRIMESTRAL', 1053716, NULL, 1),
(1488, 275, 731, 2, 'TRIMESTRAL', 1097568, NULL, 1),
(1489, 275, 731, 3, 'TRIMESTRAL', 1126712, NULL, 1),
(1490, 275, 731, 4, 'TRIMESTRAL', 1188027, NULL, 1),
(1491, 275, 731, 5, 'TRIMESTRAL', 1231390, NULL, 1),
(1492, 275, 731, 6, 'TRIMESTRAL', 1256077, NULL, 1),
(1493, 275, 731, 7, 'TRIMESTRAL', 1283297, NULL, 1),
(1494, 275, 731, 8, 'TRIMESTRAL', 1304526, NULL, 1),
(1495, 275, 731, 9, 'TRIMESTRAL', 1342269, NULL, 1),
(1496, 275, 731, 10, 'TRIMESTRAL', 1352004, NULL, 1),
(1497, 275, 731, 11, 'TRIMESTRAL', 1371429, NULL, 1),
(1498, 275, 731, 12, 'TRIMESTRAL', 1394997, NULL, 1),
(1499, 275, 731, 28, 'TRIMESTRAL', 1415030, NULL, 1),
(1500, 275, 726, 13, 'TRIMESTRAL', 0, NULL, 1),
(1501, 275, 726, 14, 'TRIMESTRAL', 0, NULL, 1),
(1502, 275, 726, 15, 'TRIMESTRAL', 0, NULL, 1),
(1503, 275, 726, 16, 'TRIMESTRAL', 745764, NULL, 1),
(1504, 275, 726, 1, 'TRIMESTRAL', 741235, NULL, 1),
(1505, 275, 726, 2, 'TRIMESTRAL', 770112, NULL, 1),
(1506, 275, 726, 3, 'TRIMESTRAL', 792075, NULL, 1),
(1507, 275, 726, 4, 'TRIMESTRAL', 815384, NULL, 1),
(1508, 275, 726, 5, 'TRIMESTRAL', 850429, NULL, 1),
(1509, 275, 726, 6, 'TRIMESTRAL', 871523, NULL, 1),
(1510, 275, 726, 7, 'TRIMESTRAL', 893117, NULL, 1),
(1511, 275, 726, 8, 'TRIMESTRAL', 913333, NULL, 1),
(1512, 275, 726, 9, 'TRIMESTRAL', 958625, NULL, 1),
(1513, 275, 726, 10, 'TRIMESTRAL', 999056, NULL, 1),
(1514, 275, 726, 11, 'TRIMESTRAL', 1047898, NULL, 1),
(1515, 275, 726, 12, 'TRIMESTRAL', 1109801, NULL, 1),
(1516, 275, 726, 28, 'TRIMESTRAL', 1125745, NULL, 1),
(1517, 275, 727, 13, 'TRIMESTRAL', 0, NULL, 1),
(1518, 275, 727, 14, 'TRIMESTRAL', 0, NULL, 1),
(1519, 275, 727, 15, 'TRIMESTRAL', 0, NULL, 1),
(1520, 275, 727, 16, 'TRIMESTRAL', 670745, NULL, 1),
(1521, 275, 727, 1, 'TRIMESTRAL', 664130, NULL, 1),
(1522, 275, 727, 2, 'TRIMESTRAL', 686632, NULL, 1),
(1523, 275, 727, 3, 'TRIMESTRAL', 705001, NULL, 1),
(1524, 275, 727, 4, 'TRIMESTRAL', 731782, NULL, 1),
(1525, 275, 727, 5, 'TRIMESTRAL', 756532, NULL, 1),
(1526, 275, 727, 6, 'TRIMESTRAL', 765546, NULL, 1),
(1527, 275, 727, 7, 'TRIMESTRAL', 772657, NULL, 1),
(1528, 275, 727, 8, 'TRIMESTRAL', 782617, NULL, 1),
(1529, 275, 727, 9, 'TRIMESTRAL', 792882, NULL, 1),
(1530, 275, 727, 10, 'TRIMESTRAL', 794713, NULL, 1),
(1531, 275, 727, 11, 'TRIMESTRAL', 809267, NULL, 1),
(1532, 275, 727, 12, 'TRIMESTRAL', 831183, NULL, 1),
(1533, 275, 727, 28, 'TRIMESTRAL', 834385, NULL, 1),
(1534, 275, 728, 13, 'TRIMESTRAL', 0, NULL, 1),
(1535, 275, 728, 14, 'TRIMESTRAL', 0, NULL, 1),
(1536, 275, 728, 15, 'TRIMESTRAL', 0, NULL, 1),
(1537, 275, 728, 16, 'TRIMESTRAL', 0, NULL, 1),
(1538, 275, 728, 1, 'TRIMESTRAL', 46561, NULL, 1),
(1539, 275, 728, 2, 'TRIMESTRAL', 107372, NULL, 1),
(1540, 275, 728, 3, 'TRIMESTRAL', 174246, NULL, 1),
(1541, 275, 728, 4, 'TRIMESTRAL', 243076, NULL, 1),
(1542, 275, 728, 5, 'TRIMESTRAL', 256813, NULL, 1),
(1543, 275, 728, 6, 'TRIMESTRAL', 267893, NULL, 1),
(1544, 275, 728, 7, 'TRIMESTRAL', 260444, NULL, 1),
(1545, 275, 728, 8, 'TRIMESTRAL', 275038, NULL, 1),
(1546, 275, 728, 9, 'TRIMESTRAL', 282743, NULL, 1),
(1547, 275, 728, 10, 'TRIMESTRAL', 282864, NULL, 1),
(1548, 275, 728, 11, 'TRIMESTRAL', 294770, NULL, 1),
(1549, 275, 728, 12, 'TRIMESTRAL', 306460, NULL, 1),
(1550, 275, 728, 28, 'TRIMESTRAL', 313520, NULL, 1),
(1551, 275, 729, 13, 'TRIMESTRAL', 0, NULL, 1),
(1552, 275, 729, 14, 'TRIMESTRAL', 0, NULL, 1),
(1553, 275, 729, 15, 'TRIMESTRAL', 0, NULL, 1),
(1554, 275, 729, 11, 'TRIMESTRAL', 344090, NULL, 1),
(1555, 275, 729, 12, 'TRIMESTRAL', 351930, NULL, 1),
(1556, 275, 729, 28, 'TRIMESTRAL', 360235, NULL, 1),
(1557, 275, 730, 13, 'TRIMESTRAL', 0, NULL, 1),
(1558, 275, 730, 14, 'TRIMESTRAL', 0, NULL, 1),
(1559, 275, 730, 15, 'TRIMESTRAL', 0, NULL, 1),
(1560, 275, 730, 16, 'TRIMESTRAL', 146360, NULL, 1),
(1561, 275, 730, 1, 'TRIMESTRAL', 149073, NULL, 1),
(1562, 275, 730, 2, 'TRIMESTRAL', 159676, NULL, 1),
(1563, 275, 730, 3, 'TRIMESTRAL', 168416, NULL, 1),
(1564, 275, 730, 4, 'TRIMESTRAL', 183911, NULL, 1),
(1565, 275, 730, 5, 'TRIMESTRAL', 194656, NULL, 1),
(1566, 275, 730, 6, 'TRIMESTRAL', 202995, NULL, 1),
(1567, 275, 730, 7, 'TRIMESTRAL', 214638, NULL, 1),
(1568, 275, 730, 8, 'TRIMESTRAL', 227512, NULL, 1),
(1569, 275, 730, 9, 'TRIMESTRAL', 236988, NULL, 1),
(1570, 275, 730, 10, 'TRIMESTRAL', 245247, NULL, 1),
(1571, 275, 730, 11, 'TRIMESTRAL', 251064, NULL, 1),
(1572, 275, 730, 12, 'TRIMESTRAL', 253831, NULL, 1),
(1573, 275, 730, 28, 'TRIMESTRAL', 255467, NULL, 1),
(1574, 276, 731, 13, 'TRIMESTRAL', 165782, NULL, 1),
(1575, 276, 731, 14, 'TRIMESTRAL', 188414, NULL, 1),
(1576, 276, 731, 15, 'TRIMESTRAL', 181978, NULL, 1),
(1577, 276, 731, 16, 'TRIMESTRAL', 250644, NULL, 1),
(1578, 276, 731, 1, 'TRIMESTRAL', 177937, NULL, 1),
(1579, 276, 731, 2, 'TRIMESTRAL', 236601, NULL, 1),
(1580, 276, 731, 3, 'TRIMESTRAL', 210552, NULL, 1),
(1581, 276, 731, 4, 'TRIMESTRAL', 304952, NULL, 1),
(1582, 276, 731, 5, 'TRIMESTRAL', 216893, NULL, 1),
(1583, 276, 731, 6, 'TRIMESTRAL', 251753, NULL, 1),
(1584, 276, 731, 7, 'TRIMESTRAL', 233394, NULL, 1),
(1585, 276, 731, 8, 'TRIMESTRAL', 322080, NULL, 1),
(1586, 276, 731, 9, 'TRIMESTRAL', 256038, NULL, 1),
(1587, 276, 731, 10, 'TRIMESTRAL', 257223, NULL, 1),
(1588, 276, 731, 11, 'TRIMESTRAL', 245713, NULL, 1),
(1589, 276, 731, 12, 'TRIMESTRAL', 345696, NULL, 1),
(1590, 276, 731, 28, 'TRIMESTRAL', 266908, NULL, 1),
(1591, 276, 732, 13, 'TRIMESTRAL', 104275, NULL, 1),
(1592, 276, 732, 14, 'TRIMESTRAL', 122555, NULL, 1),
(1593, 276, 732, 15, 'TRIMESTRAL', 115632, NULL, 1),
(1594, 276, 732, 16, 'TRIMESTRAL', 174074, NULL, 1),
(1595, 276, 732, 1, 'TRIMESTRAL', 116357, NULL, 1),
(1596, 276, 732, 2, 'TRIMESTRAL', 158616, NULL, 1),
(1597, 276, 732, 3, 'TRIMESTRAL', 141854, NULL, 1),
(1598, 276, 732, 4, 'TRIMESTRAL', 205892, NULL, 1),
(1599, 276, 732, 5, 'TRIMESTRAL', 143612, NULL, 1),
(1600, 276, 732, 6, 'TRIMESTRAL', 165572, NULL, 1),
(1601, 276, 732, 7, 'TRIMESTRAL', 155966, NULL, 1),
(1602, 276, 732, 8, 'TRIMESTRAL', 225623, NULL, 1),
(1603, 276, 732, 9, 'TRIMESTRAL', 184480, NULL, 1),
(1604, 276, 732, 10, 'TRIMESTRAL', 211395, NULL, 1),
(1605, 276, 732, 11, 'TRIMESTRAL', 202714, NULL, 1),
(1606, 276, 732, 12, 'TRIMESTRAL', 287486, NULL, 1),
(1607, 276, 732, 28, 'TRIMESTRAL', 205394, NULL, 1),
(1608, 276, 727, 13, 'TRIMESTRAL', 95992, NULL, 1),
(1609, 276, 727, 14, 'TRIMESTRAL', 114936, NULL, 1),
(1610, 276, 727, 15, 'TRIMESTRAL', 107196, NULL, 1),
(1611, 276, 727, 16, 'TRIMESTRAL', 167872, NULL, 1),
(1612, 276, 727, 1, 'TRIMESTRAL', 108052, NULL, 1),
(1613, 276, 727, 2, 'TRIMESTRAL', 149286, NULL, 1),
(1614, 276, 727, 3, 'TRIMESTRAL', 125177, NULL, 1),
(1615, 276, 727, 4, 'TRIMESTRAL', 187059, NULL, 1),
(1616, 276, 727, 5, 'TRIMESTRAL', 126819, NULL, 1),
(1617, 276, 727, 6, 'TRIMESTRAL', 150977, NULL, 1),
(1618, 276, 727, 7, 'TRIMESTRAL', 133239, NULL, 1),
(1619, 276, 727, 8, 'TRIMESTRAL', 200992, NULL, 1),
(1620, 276, 727, 9, 'TRIMESTRAL', 141120, NULL, 1),
(1621, 276, 727, 10, 'TRIMESTRAL', 158095, NULL, 1),
(1622, 276, 727, 11, 'TRIMESTRAL', 151565, NULL, 1),
(1623, 276, 727, 12, 'TRIMESTRAL', 223096, NULL, 1),
(1624, 276, 727, 28, 'TRIMESTRAL', 144691, NULL, 1),
(1625, 276, 728, 1, 'TRIMESTRAL', 29087, NULL, 1),
(1626, 276, 728, 2, 'TRIMESTRAL', 38844, NULL, 1),
(1627, 276, 728, 3, 'TRIMESTRAL', 25735, NULL, 1),
(1628, 276, 728, 4, 'TRIMESTRAL', 48465, NULL, 1),
(1629, 276, 728, 5, 'TRIMESTRAL', 36898, NULL, 1),
(1630, 276, 728, 6, 'TRIMESTRAL', 42385, NULL, 1),
(1631, 276, 728, 7, 'TRIMESTRAL', 34647, NULL, 1),
(1632, 276, 728, 8, 'TRIMESTRAL', 55952, NULL, 1),
(1633, 276, 728, 9, 'TRIMESTRAL', 39534, NULL, 1),
(1634, 276, 728, 10, 'TRIMESTRAL', 43669, NULL, 1),
(1635, 276, 728, 11, 'TRIMESTRAL', 43253, NULL, 1),
(1636, 276, 728, 12, 'TRIMESTRAL', 65894, NULL, 1),
(1637, 276, 728, 28, 'TRIMESTRAL', 46643, NULL, 1),
(1638, 276, 729, 8, 'TRIMESTRAL', 85866, NULL, 1),
(1639, 276, 729, 9, 'TRIMESTRAL', 59358, NULL, 1),
(1640, 276, 729, 10, 'TRIMESTRAL', 70888, NULL, 1),
(1641, 276, 729, 11, 'TRIMESTRAL', 66588, NULL, 1),
(1642, 276, 729, 12, 'TRIMESTRAL', 96920, NULL, 1),
(1643, 276, 729, 28, 'TRIMESTRAL', 67327, NULL, 1),
(1644, 276, 730, 13, 'TRIMESTRAL', 17174, NULL, 1),
(1645, 276, 730, 14, 'TRIMESTRAL', 21761, NULL, 1),
(1646, 276, 730, 15, 'TRIMESTRAL', 21147, NULL, 1),
(1647, 276, 730, 16, 'TRIMESTRAL', 33711, NULL, 1),
(1648, 276, 730, 1, 'TRIMESTRAL', 18537, NULL, 1),
(1649, 276, 730, 2, 'TRIMESTRAL', 30099, NULL, 1),
(1650, 276, 730, 3, 'TRIMESTRAL', 25990, NULL, 1),
(1651, 276, 730, 4, 'TRIMESTRAL', 45137, NULL, 1),
(1652, 276, 730, 5, 'TRIMESTRAL', 24900, NULL, 1),
(1653, 276, 730, 6, 'TRIMESTRAL', 34345, NULL, 1),
(1654, 276, 730, 7, 'TRIMESTRAL', 34041, NULL, 1),
(1655, 276, 730, 8, 'TRIMESTRAL', 54803, NULL, 1),
(1656, 276, 730, 9, 'TRIMESTRAL', 31761, NULL, 1),
(1657, 276, 730, 10, 'TRIMESTRAL', 40160, NULL, 1),
(1658, 276, 730, 11, 'TRIMESTRAL', 37194, NULL, 1),
(1659, 276, 730, 12, 'TRIMESTRAL', 56287, NULL, 1),
(1660, 276, 730, 28, 'TRIMESTRAL', 33146, NULL, 1),
(1661, 277, 731, 16, 'TRIMESTRAL', 786818, NULL, 1),
(1662, 277, 731, 1, 'TRIMESTRAL', 798974, NULL, 1),
(1663, 277, 731, 2, 'TRIMESTRAL', 847160, NULL, 1),
(1664, 277, 731, 3, 'TRIMESTRAL', 875734, NULL, 1),
(1665, 277, 731, 4, 'TRIMESTRAL', 930042, NULL, 1);
INSERT INTO `valores` (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) VALUES
(1666, 277, 731, 5, 'TRIMESTRAL', 968998, NULL, 1),
(1667, 277, 731, 6, 'TRIMESTRAL', 984151, NULL, 1),
(1668, 277, 731, 7, 'TRIMESTRAL', 1006992, NULL, 1),
(1669, 277, 731, 8, 'TRIMESTRAL', 1024120, NULL, 1),
(1670, 277, 731, 9, 'TRIMESTRAL', 1063265, NULL, 1),
(1671, 277, 731, 10, 'TRIMESTRAL', 1068734, NULL, 1),
(1672, 277, 731, 11, 'TRIMESTRAL', 1081053, NULL, 1),
(1673, 277, 731, 12, 'TRIMESTRAL', 1104669, NULL, 1),
(1674, 277, 731, 28, 'TRIMESTRAL', 1115540, NULL, 1),
(1675, 277, 732, 16, 'TRIMESTRAL', 516536, NULL, 1),
(1676, 277, 732, 1, 'TRIMESTRAL', 528618, NULL, 1),
(1677, 277, 732, 2, 'TRIMESTRAL', 564679, NULL, 1),
(1678, 277, 732, 3, 'TRIMESTRAL', 590901, NULL, 1),
(1679, 277, 732, 4, 'TRIMESTRAL', 622719, NULL, 1),
(1680, 277, 732, 5, 'TRIMESTRAL', 649974, NULL, 1),
(1681, 277, 732, 6, 'TRIMESTRAL', 656930, NULL, 1),
(1682, 277, 732, 7, 'TRIMESTRAL', 671042, NULL, 1),
(1683, 277, 732, 8, 'TRIMESTRAL', 690773, NULL, 1),
(1684, 277, 732, 9, 'TRIMESTRAL', 731641, NULL, 1),
(1685, 277, 732, 10, 'TRIMESTRAL', 777464, NULL, 1),
(1686, 277, 732, 11, 'TRIMESTRAL', 824212, NULL, 1),
(1687, 277, 732, 12, 'TRIMESTRAL', 886075, NULL, 1),
(1688, 277, 732, 28, 'TRIMESTRAL', 906989, NULL, 1),
(1689, 277, 727, 16, 'TRIMESTRAL', 485996, NULL, 1),
(1690, 277, 727, 1, 'TRIMESTRAL', 498056, NULL, 1),
(1691, 277, 727, 2, 'TRIMESTRAL', 532406, NULL, 1),
(1692, 277, 727, 3, 'TRIMESTRAL', 550387, NULL, 1),
(1693, 277, 727, 4, 'TRIMESTRAL', 569575, NULL, 1),
(1694, 277, 727, 5, 'TRIMESTRAL', 588341, NULL, 1),
(1695, 277, 727, 6, 'TRIMESTRAL', 590033, NULL, 1),
(1696, 277, 727, 7, 'TRIMESTRAL', 598094, NULL, 1),
(1697, 277, 727, 8, 'TRIMESTRAL', 612027, NULL, 1),
(1698, 277, 727, 9, 'TRIMESTRAL', 626328, NULL, 1),
(1699, 277, 727, 10, 'TRIMESTRAL', 633446, NULL, 1),
(1700, 277, 727, 11, 'TRIMESTRAL', 651772, NULL, 1),
(1701, 277, 727, 12, 'TRIMESTRAL', 673876, NULL, 1),
(1702, 277, 727, 28, 'TRIMESTRAL', 677447, NULL, 1),
(1703, 277, 728, 4, 'TRIMESTRAL', 142131, NULL, 1),
(1704, 277, 728, 5, 'TRIMESTRAL', 149942, NULL, 1),
(1705, 277, 728, 6, 'TRIMESTRAL', 153483, NULL, 1),
(1706, 277, 728, 7, 'TRIMESTRAL', 162394, NULL, 1),
(1707, 277, 728, 8, 'TRIMESTRAL', 169882, NULL, 1),
(1708, 277, 728, 9, 'TRIMESTRAL', 172519, NULL, 1),
(1709, 277, 728, 10, 'TRIMESTRAL', 173802, NULL, 1),
(1710, 277, 728, 11, 'TRIMESTRAL', 182408, NULL, 1),
(1711, 277, 728, 12, 'TRIMESTRAL', 192350, NULL, 1),
(1712, 277, 728, 28, 'TRIMESTRAL', 199459, NULL, 1),
(1713, 277, 729, 12, 'TRIMESTRAL', 293754, NULL, 1),
(1714, 277, 729, 28, 'TRIMESTRAL', 301723, NULL, 1),
(1715, 277, 730, 16, 'TRIMESTRAL', 93793, NULL, 1),
(1716, 277, 730, 1, 'TRIMESTRAL', 95156, NULL, 1),
(1717, 277, 730, 2, 'TRIMESTRAL', 103494, NULL, 1),
(1718, 277, 730, 3, 'TRIMESTRAL', 108337, NULL, 1),
(1719, 277, 730, 4, 'TRIMESTRAL', 119763, NULL, 1),
(1720, 277, 730, 5, 'TRIMESTRAL', 126126, NULL, 1),
(1721, 277, 730, 6, 'TRIMESTRAL', 130372, NULL, 1),
(1722, 277, 730, 7, 'TRIMESTRAL', 138423, NULL, 1),
(1723, 277, 730, 8, 'TRIMESTRAL', 148088, NULL, 1),
(1724, 277, 730, 9, 'TRIMESTRAL', 154949, NULL, 1),
(1725, 277, 730, 10, 'TRIMESTRAL', 160765, NULL, 1),
(1726, 277, 730, 11, 'TRIMESTRAL', 163919, NULL, 1),
(1727, 277, 730, 12, 'TRIMESTRAL', 165403, NULL, 1),
(1728, 277, 730, 28, 'TRIMESTRAL', 166787, NULL, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_grafica`
--
CREATE TABLE IF NOT EXISTS `view_grafica` (
`id_formula` int(11)
,`id_empresa` int(18)
,`id_periodo` int(18)
,`C1` double
,`C2` double
,`C3` double
,`C4` double
,`C5` double
,`rso` text
,`label` varchar(7)
,`graf` int(1)
,`formula` varchar(100)
,`ano` int(11)
,`mes` int(11)
);
-- --------------------------------------------------------

--
-- Structure for view `view_grafica`
--
DROP TABLE IF EXISTS `view_grafica`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_grafica` AS select `c`.`ID_FORMULA` AS `id_formula`,`a`.`ID_EMPRESA` AS `id_empresa`,`a`.`ID_PERIODO` AS `id_periodo`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO1`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C1`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO2`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C2`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO3`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C3`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO4`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C4`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO5`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C5`,concat(`d`.`RSO`,': ',`b`.`NOMBRE`) AS `rso`,`e`.`label` AS `label`,1 AS `graf`,`c`.`FORMULA` AS `formula`,`e`.`ANO` AS `ano`,`e`.`MES` AS `mes` from ((((`valores` `a` join `indices_financieros` `b`) join `formulas` `c`) join `empresas` `d`) join `periodos` `e`) where ((`c`.`ID_FORMULA` = `b`.`ID_FORMULA`) and (`a`.`ID_TAG_AGF` = `c`.`CAMPO1`) and (`a`.`ID_EMPRESA` = `d`.`ID_EMPRESA`) and (`a`.`ID_PERIODO` = `e`.`ID_PERIODO`));

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
