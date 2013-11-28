-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2013 at 06:38 AM
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
  `orden` int(11) DEFAULT '0',
  PRIMARY KEY (`ID_EMPRESA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `empresas`
--

INSERT INTO `empresas` (`ID_EMPRESA`, `RUT`, `RSO`, `NOMBRE_FANTASIA`, `NOMBRE_BOLSA`, `VALOR_ACCION`, `TIPO_BALANCE`, `TIPO_IFRS`, `MONEDA`, `ESTADOS`, `ORIGEN`, `OA`, `color`, `orden`) VALUES
(1, 'Hites', 'Hites', 'Hites', 'Hites', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 26316, 0),
(2, 'La Polar', 'La Polar', 'La Polar', 'La Polar', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 0, 0),
(3, 'Ripley Chi', 'Ripley Chile', 'Ripley Chile', 'Ripley Chile', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 52479, 0);

-- --------------------------------------------------------

--
-- Table structure for table `empresa_indice`
--

CREATE TABLE IF NOT EXISTS `empresa_indice` (
  `id_empresa` int(11) NOT NULL,
  `id_indice_financiero` int(11) NOT NULL,
  `num_formula` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `empresa_indice`
--

INSERT INTO `empresa_indice` (`id_empresa`, `id_indice_financiero`, `num_formula`, `id_formula`) VALUES
(1, 1, 0, 1),
(2, 1, 0, 1),
(3, 1, 0, 1);

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
(1, 1, '1900-01-01', 0, 'A'),
(1, 2, '1900-01-01', 1, 'A'),
(1, 3, '1900-01-01', 2, 'A'),
(1, 4, '1900-01-01', 3, 'A'),
(1, 5, '1900-01-01', 4, 'A'),
(1, 7, '1900-01-01', 5, 'A'),
(1, 6, '1900-01-01', 6, 'A');

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
  `id_indice_financiero` int(11) NOT NULL,
  `num_formula` int(11) NOT NULL,
  PRIMARY KEY (`ID_FORMULA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `formulas`
--

INSERT INTO `formulas` (`ID_FORMULA`, `CAMPO1`, `CAMPO2`, `CAMPO3`, `CAMPO4`, `CAMPO5`, `tipoc1`, `tipoc2`, `tipoc3`, `tipoc4`, `tipoc5`, `FORMULA`, `CANTIDAD_CAMPOS`, `DECIMALES`, `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, `id_indice_financiero`, `num_formula`) VALUES
(1, 7, 6, -1, -1, -1, 1, 1, 1, 1, 1, 'C1+C2', 2, 0, 'C.1.NN', 'C.2.NN', 'no', 'no', 'no', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `grupos_indices_financieros`
--

CREATE TABLE IF NOT EXISTS `grupos_indices_financieros` (
  `ID_GRUPO_INDICE_FINANCIERO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `DESCRIPCION` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID_GRUPO_INDICE_FINANCIERO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `grupos_indices_financieros`
--

INSERT INTO `grupos_indices_financieros` (`ID_GRUPO_INDICE_FINANCIERO`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'Demo', '0');

-- --------------------------------------------------------

--
-- Table structure for table `grupos_subgrupos`
--

CREATE TABLE IF NOT EXISTS `grupos_subgrupos` (
  `ID_TIPO_EMPRESA` int(18) NOT NULL,
  `ID_SUBGRUPO` int(18) NOT NULL,
  KEY `ID_TIPO_EMPRESA` (`ID_TIPO_EMPRESA`),
  KEY `ID_SUBGRUPO` (`ID_SUBGRUPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `grupos_subgrupos`
--

INSERT INTO `grupos_subgrupos` (`ID_TIPO_EMPRESA`, `ID_SUBGRUPO`) VALUES
(1, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `indices_financieros`
--

INSERT INTO `indices_financieros` (`ID_INDICE_FINANCIERO`, `ID_GRUPO_INDICE_FINANCIERO`, `ID_COMPONENTE`, `NOMBRE`, `DESCRIPCION`, `ID_FORMULA`, `FORMULA_DESC`, `RANGO_SUPERIOR`, `RANGO_INFERIOR`, `RANGOS_DESC`, `OA`) VALUES
(1, 1, 4, 'Ingresos Totales', '0', 1, '0', '0.00', 0.00, '0', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `indice_empresa`
--

CREATE TABLE IF NOT EXISTS `indice_empresa` (
  `id_indice` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Dumping data for table `indice_empresa`
--

INSERT INTO `indice_empresa` (`id_indice`, `id_empresa`, `tipo`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `indice_subgrupo_empresa`
--

CREATE TABLE IF NOT EXISTS `indice_subgrupo_empresa` (
  `id_indice` int(11) NOT NULL,
  `id_subgrupo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

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
('INSERT INTO Empresas VALUES (null, ''Hites'', ''Hites'', ''Hites'', ''Hites'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''26316'');'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('INSERT INTO Empresas VALUES (null, ''Hites'', ''Hites'', ''Hites'', ''Hites'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''26316'', ''0'');'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA  FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo'),
('INSERT INTO Empresas VALUES (null, ''La Polar'', ''La Polar'', ''La Polar'', ''La Polar'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''0'', ''0'');'),
('INSERT INTO Empresas VALUES (null, ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''10053120'', ''0'');'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('INSERT INTO Empresas VALUES (null, ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''3342591'', ''0'');'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('INSERT INTO Empresas VALUES (null, ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''52428'', ''0'');'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('INSERT INTO Empresas VALUES (null, ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''Ripley Chile'', ''0'', ''I'', ''Full'', ''CLP - Peso chileno'', ''ESFC|ERF'', ''CARGA_MANUAL'', ''1'', ''52479'', ''0'');'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('INSERT INTO tipos_empresas VALUES (null, ''Inicial'', ''0'', ''1'');'),
('SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA  FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo'),
('SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA  FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo'),
('delete from subgrupos_empresas where id_subgrupo = 1'),
('SELECT a.ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, DESCRIPCION, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, formula_desc, rango_superior, rango_inferior,rangos_desc,\n							campo1, campo2, campo3, campo4, campo5\n	                	                    FROM indices_financieros a, formulas b\n	                	                    WHERE a.id_formula = b.id_formula'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('INSERT INTO tag_agf VALUES (null, Porcentaje ventas tc tienda, Porcentaje ventas tc tienda, NO ESPECIFICA, MANUAL, 1);'),
('0'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (1, 1, 1900-01-01, 0);'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n				select null, 1, id_empresa, id_periodo, ''TRIMESTRAL'', 0.00, ''1900-01-01'', 1\n				from periodos a inner join empresas\n				'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('INSERT INTO tag_agf VALUES (null, porcentaje ventas tc tienda, porcentaje ventas tc tienda, NO ESPECIFICA, MANUAL, 1);'),
('0'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (1, 1, 1900-01-01, 0);'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n				select null, 1, id_empresa, id_periodo, ''TRIMESTRAL'', 0.00, ''1900-01-01'', 1\n				from periodos a inner join empresas\n				'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('INSERT INTO tag_agf VALUES (null, nro cliente total, nro cliente total, NO ESPECIFICA, MANUAL, 1);'),
('1'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (1, 2, 1900-01-01, 1);'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n				select null, 2, id_empresa, id_periodo, ''TRIMESTRAL'', 0.00, ''1900-01-01'', 1\n				from periodos a inner join empresas\n				'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('INSERT INTO tag_agf VALUES (null, nro cliente repactada, nro cliente repactada, NO ESPECIFICA, MANUAL, 1);'),
('2'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (1, 3, 1900-01-01, 2);'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n				select null, 3, id_empresa, id_periodo, ''TRIMESTRAL'', 0.00, ''1900-01-01'', 1\n				from periodos a inner join empresas\n				'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('INSERT INTO tag_agf VALUES (null, nro cliente no repactada, nro cliente no repactada, NO ESPECIFICA, MANUAL, 1);'),
('3'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (1, 4, 1900-01-01, 3);'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n				select null, 4, id_empresa, id_periodo, ''TRIMESTRAL'', 0.00, ''1900-01-01'', 1\n				from periodos a inner join empresas\n				'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('INSERT INTO tag_agf VALUES (null, SSS, SSS, NO ESPECIFICA, MANUAL, 1);'),
('4'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (1, 5, 1900-01-01, 4);'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n				select null, 5, id_empresa, id_periodo, ''TRIMESTRAL'', 0.00, ''1900-01-01'', 1\n				from periodos a inner join empresas\n				'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('Array\n(\n)\n'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('Array\n(\n    [0] => 0\n)\n'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) \n						VALUES (1, 7, ''1900-01-01'', 5);'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('Array\n(\n    [0] => 0\n)\n'),
('INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) \n						VALUES (1, 6, ''1900-01-01'', 6);'),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						13 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						14 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						2 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('SELECT (select concat(nombre, ''('', origen, '')'') \n					from tag_agf b \n					where  b.id_tag_agf = a.id_tag_agf) `nombre` , \n					(select valor \n					from valores c \n					where c.id_empresa = a.id_empresa \n						and c.tipo = ''TRIMESTRAL'' \n						and origen = 1\n						and c.id_periodo = \n						7 and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf\n                	                FROM `formulario_item` a\n					where a.id_empresa = 1\n					      AND a.estado = ''A''									\n					order by  nun_item\n				                '),
('SELECT a.ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, DESCRIPCION, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, formula_desc, rango_superior, rango_inferior,rangos_desc,\n							campo1, campo2, campo3, campo4, campo5\n	                	                    FROM indices_financieros a, formulas b\n	                	                    WHERE a.id_formula = b.id_formula'),
('Array\n(\n)\n'),
('INSERT INTO grupos_Indices_Financieros VALUES (null, ''Demo'', ''0'');'),
('Array\n(\n    [0] => Array\n        (\n            [ID_GRUPO_INDICE_FINANCIERO] => 1\n            [nombre] => Demo\n            [descripcion] => 0\n        )\n\n)\n'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('0'),
('Array\n(\n    [0] => Array\n        (\n            [ID_GRUPO_INDICE_FINANCIERO] => 1\n            [nombre] => Demo\n            [descripcion] => 0\n        )\n\n)\n'),
('SELECT a.ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, DESCRIPCION, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, formula_desc, rango_superior, rango_inferior,rangos_desc,\n							campo1, campo2, campo3, campo4, campo5\n	                	                    FROM indices_financieros a, formulas b\n	                	                    WHERE a.id_formula = b.id_formula'),
('Array\n(\n    [0] => Ingresos Totales\n    [1] => 0\n    [2] => 0\n    [3] => 0\n    [4] => 0\n    [5] => 0\n    [6] => C1+C2_\n    [7] => 0\n    [8] => 7\n    [9] => 6\n    [10] => -1\n    [11] => -1\n    [12] => -1\n    [13] => C\n    [14] => C\n    [15] => 0\n    [16] => 0\n    [17] => 0\n    [18] => 1\n    [19] => C.1.NN\n    [20] => C.2.NN\n    [21] => no\n    [22] => no\n    [23] => no\n)\n'),
('Array\n(\n    [0] => 1\n    [1] => 2\n    [2] => 3\n)\n'),
('Indices_Financieros'),
('0'),
('INSERT INTO indices_financieros VALUES (null, ''1'', 4, ''Ingresos Totales'', ''0'', \n				''0'', ''0'', ''0'', ''0'', ''0'', 1);'),
('INSERT INTO formulas values (null, ''7'', ''6'', ''-1'', ''-1'', ''-1'', ''1'', ''1'', ''1'', ''1'', ''1'', ''C1+C2'', ''2'', ''0'', ''C.1.NN'', ''C.2.NN'', ''no'', ''no'', ''no'', 1, 0 );'),
('INSERT INTO `empresa_indice`(`id_empresa`, `id_indice_financiero`, `num_formula`, `id_formula`) \n				SELECT id_empresa, 1, 0, 1 \n				FROM empresas;'),
('UPDATE indices_financieros \n				SET `id_formula` =  1\n				WHERE id_indice_financiero = 1;'),
('INSERT INTO indice_empresa values (''1'', ''1'', ''0'');'),
('INSERT INTO indice_empresa values (''1'', ''2'', ''0'');'),
('INSERT INTO indice_empresa values (''1'', ''3'', ''0'');'),
('formula1 = Array\n(\n    [0] => 1\n    [1] => 1\n    [2] => NN\n)\n'),
('select distinct c.id_formula, a.id_empresa, a.id_periodo,\n					(select SUM(valor)\n							   from valores x, indices_financieros z, formulas w\n					   where w.id_formula = z.id_formula\n							 AND x.id_tag_agf = w.campo1\n							 AND z.id_indice_financiero = b.id_indice_financiero\n							 AND x.id_empresa = a.id_empresa\n							  AND x.id_periodo = a.id_periodo \n							 AND w.tipoc1 = 1\n					 AND x.tipo = ''TRIMESTRAL'' )		 				\n					   C1, 			                	\n					(select SUM(valor)\n							   from valores x, indices_financieros z, formulas w\n					   where w.id_formula = z.id_formula\n							 AND x.id_tag_agf = w.campo2\n							 AND z.id_indice_financiero = b.id_indice_financiero\n							 AND x.id_empresa = a.id_empresa\n							  AND x.id_periodo = a.id_periodo \n							 AND w.tipoc1 = 1\n					 AND x.tipo = ''TRIMESTRAL'' )\n					C2,\n							(select SUM(valor)\n							   from valores x, indices_financieros z, formulas w\n					   where w.id_formula = z.id_formula\n							 AND x.id_tag_agf = w.campo3\n							 AND z.id_indice_financiero = b.id_indice_financiero\n							 AND x.id_empresa = a.id_empresa\n							  AND x.id_periodo = a.id_periodo 									\n							 AND w.tipoc1 = 2\n					 AND x.tipo = ''TRIMESTRAL'' ) C3,\n							(select SUM(valor)\n							   from valores x, indices_financieros z, formulas w\n					   where w.id_formula = z.id_formula\n							 AND x.id_tag_agf = w.campo4\n							 AND z.id_indice_financiero = b.id_indice_financiero\n							 AND x.id_empresa = a.id_empresa\n							  AND x.id_periodo = a.id_periodo 									\n							 AND w.tipoc1 = 2\n					 AND x.tipo = ''TRIMESTRAL'' ) C4,\n							(select SUM(valor)\n							   from valores x, indices_financieros z, formulas w\n					   where w.id_formula = z.id_formula\n							 AND x.id_tag_agf = w.campo5\n							 AND z.id_indice_financiero = b.id_indice_financiero\n							 AND x.id_empresa = a.id_empresa\n							  AND x.id_periodo = a.id_periodo 									\n							 AND w.tipoc1 = 2\n					 AND x.tipo = ''TRIMESTRAL'' ) C5, concat(d.rso, '': '', b.nombre), label, formula, e.ano, e.mes, d.color\n						From valores a, indices_financieros b, formulas c, empresas d, periodos e\n						where c.id_indice_financiero = b.id_indice_financiero\n							AND a.id_empresa = d.id_empresa\n							AND a.id_periodo = e.id_periodo\n							AND c.id_formula = 1\n					AND a.tipo = ''TRIMESTRAL'';'),
('r3(C1) = 13685.00'),
('operacion = (13685.00)+(18537.00)'),
('res = 32222'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,1,''TRIMESTRAL'',32222,''2013'',2);'),
('r3(C1) = 15819.00'),
('operacion = (15819.00)+(30099.00)'),
('res = 45918'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,2,''TRIMESTRAL'',45918,''2013'',2);'),
('r3(C1) = 15380.00'),
('operacion = (15380.00)+(25990.00)'),
('res = 41370'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,3,''TRIMESTRAL'',41370,''2013'',2);'),
('r3(C1) = 19264.00'),
('operacion = (19264.00)+(45137.00)'),
('res = 64401'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,4,''TRIMESTRAL'',64401,''2013'',2);'),
('r3(C1) = 18068.00'),
('operacion = (18068.00)+(24900.00)'),
('res = 42968'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,5,''TRIMESTRAL'',42968,''2013'',2);'),
('r3(C1) = 19911.00'),
('operacion = (19911.00)+(34345.00)'),
('res = 54256'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,6,''TRIMESTRAL'',54256,''2013'',2);'),
('r3(C1) = 18973.00'),
('operacion = (18973.00)+(34041.00)'),
('res = 53014'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,7,''TRIMESTRAL'',53014,''2013'',2);'),
('r3(C1) = 22472.00'),
('operacion = (22472.00)+(54803.00)'),
('res = 77275'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,8,''TRIMESTRAL'',77275,''2013'',2);'),
('r3(C1) = 20683.00'),
('operacion = (20683.00)+(31761.00)'),
('res = 52444'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,9,''TRIMESTRAL'',52444,''2013'',2);'),
('r3(C1) = 22354.00'),
('operacion = (22354.00)+(40160.00)'),
('res = 62514'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,10,''TRIMESTRAL'',62514,''2013'',2);'),
('r3(C1) = 21637.00'),
('operacion = (21637.00)+(37194.00)'),
('res = 58831'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,11,''TRIMESTRAL'',58831,''2013'',2);'),
('r3(C1) = 23754.00'),
('operacion = (23754.00)+(56287.00)'),
('res = 80041'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,12,''TRIMESTRAL'',80041,''2013'',2);'),
('r3(C1) = 12336.00'),
('operacion = (12336.00)+(17174.00)'),
('res = 29510'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,13,''TRIMESTRAL'',29510,''2013'',2);'),
('r3(C1) = 13554.00'),
('operacion = (13554.00)+(21761.00)'),
('res = 35315'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,14,''TRIMESTRAL'',35315,''2013'',2);'),
('r3(C1) = 11483.00'),
('operacion = (11483.00)+(21147.00)'),
('res = 32630'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,15,''TRIMESTRAL'',32630,''2013'',2);'),
('r3(C1) = 15195.00'),
('operacion = (15195.00)+(33711.00)'),
('res = 48906'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,16,''TRIMESTRAL'',48906,''2013'',2);'),
('r3(C1) = 20935.00'),
('operacion = (20935.00)+(33146.00)'),
('res = 54081'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,28,''TRIMESTRAL'',54081,''2013'',2);'),
('r3(C1) = 21839.00'),
('operacion = (21839.00)+(44619.00)'),
('res = 66458'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,29,''TRIMESTRAL'',66458,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,30,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,31,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,32,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,33,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,34,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,1,35,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,1,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,2,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,3,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,4,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,5,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,6,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,7,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 18227.00'),
('operacion = (18227.00)+(85866.00)'),
('res = 104093'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,8,''TRIMESTRAL'',104093,''2013'',2);'),
('r3(C1) = 15328.00'),
('operacion = (15328.00)+(59358.00)'),
('res = 74686'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,9,''TRIMESTRAL'',74686,''2013'',2);'),
('r3(C1) = 14210.00'),
('operacion = (14210.00)+(70888.00)'),
('res = 85098'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,10,''TRIMESTRAL'',85098,''2013'',2);'),
('r3(C1) = 13625.00'),
('operacion = (13625.00)+(66588.00)'),
('res = 80213'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,11,''TRIMESTRAL'',80213,''2013'',2);'),
('r3(C1) = 15013.00'),
('operacion = (15013.00)+(96920.00)'),
('res = 111933'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,12,''TRIMESTRAL'',111933,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,13,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,14,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,15,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,16,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 15664.00'),
('operacion = (15664.00)+(67327.00)'),
('res = 82991'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,28,''TRIMESTRAL'',82991,''2013'',2);'),
('r3(C1) = 17093.00'),
('operacion = (17093.00)+(80583.00)'),
('res = 97676'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,29,''TRIMESTRAL'',97676,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,30,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,31,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,32,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,33,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,34,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,2,35,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 38891.00'),
('operacion = (38891.00)+(108052.00)'),
('res = 146943'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,1,''TRIMESTRAL'',146943,''2013'',2);'),
('r3(C1) = 36399.00'),
('operacion = (36399.00)+(149286.00)'),
('res = 185685'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,2,''TRIMESTRAL'',185685,''2013'',2);'),
('r3(C1) = 43091.00'),
('operacion = (43091.00)+(125177.00)'),
('res = 168268'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,3,''TRIMESTRAL'',168268,''2013'',2);'),
('r3(C1) = 43826.00'),
('operacion = (43826.00)+(187059.00)'),
('res = 230885'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,4,''TRIMESTRAL'',230885,''2013'',2);'),
('r3(C1) = 44875.00'),
('operacion = (44875.00)+(126819.00)'),
('res = 171694'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,5,''TRIMESTRAL'',171694,''2013'',2);'),
('r3(C1) = 43722.00'),
('operacion = (43722.00)+(150977.00)'),
('res = 194699'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,6,''TRIMESTRAL'',194699,''2013'',2);'),
('r3(C1) = 42140.00'),
('operacion = (42140.00)+(133239.00)'),
('res = 175379'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,7,''TRIMESTRAL'',175379,''2013'',2);'),
('r3(C1) = 39854.00'),
('operacion = (39854.00)+(200992.00)'),
('res = 240846'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,8,''TRIMESTRAL'',240846,''2013'',2);'),
('r3(C1) = 40839.00'),
('operacion = (40839.00)+(141120.00)'),
('res = 181959'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,9,''TRIMESTRAL'',181959,''2013'',2);'),
('r3(C1) = 38434.00'),
('operacion = (38434.00)+(158095.00)'),
('res = 196529'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,10,''TRIMESTRAL'',196529,''2013'',2);'),
('r3(C1) = 38368.00'),
('operacion = (38368.00)+(151565.00)'),
('res = 189933'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,11,''TRIMESTRAL'',189933,''2013'',2);'),
('r3(C1) = 38601.00'),
('operacion = (38601.00)+(223096.00)'),
('res = 261697'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,12,''TRIMESTRAL'',261697,''2013'',2);'),
('r3(C1) = 57566.00'),
('operacion = (57566.00)+(95992.00)'),
('res = 153558'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,13,''TRIMESTRAL'',153558,''2013'',2);'),
('r3(C1) = 48247.00'),
('operacion = (48247.00)+(114936.00)'),
('res = 163183'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,14,''TRIMESTRAL'',163183,''2013'',2);'),
('r3(C1) = 42703.00'),
('operacion = (42703.00)+(107196.00)'),
('res = 149899'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,15,''TRIMESTRAL'',149899,''2013'',2);'),
('r3(C1) = 36233.00'),
('operacion = (36233.00)+(167872.00)'),
('res = 204105'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,16,''TRIMESTRAL'',204105,''2013'',2);'),
('r3(C1) = 40470.00'),
('operacion = (40470.00)+(144691.00)'),
('res = 185161'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,28,''TRIMESTRAL'',185161,''2013'',2);'),
('r3(C1) = 40125.00'),
('operacion = (40125.00)+(161228.00)'),
('res = 201353'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,29,''TRIMESTRAL'',201353,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,30,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,31,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,32,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,33,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,34,''TRIMESTRAL'',0,''2013'',2);'),
('r3(C1) = 0.00'),
('operacion = (0.00)+(0.00)'),
('res = 0'),
('INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) \n		VALUES (null,1,3,35,''TRIMESTRAL'',0,''2013'',2);'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('3'),
('1, 0, 1, 2, 3):),  , AND b.id_indice_financiero in (0, 1), Trimestral'),
('SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`\n									FROM `formulas` a, `indices_financieros` b\n									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` \n										AND b.`id_indice_financiero` =  1;'),
('select distinct c.id_formula, a.id_empresa, a.id_periodo,\n							(select SUM(valor)\n									   from valores x, indices_financieros z, formulas w\n							   where w.id_formula = z.id_formula\n									 AND x.id_tag_agf = w.campo1\n									 AND z.id_indice_financiero = b.id_indice_financiero\n									 AND x.id_empresa = a.id_empresa\n									  AND x.id_periodo = a.id_periodo \n									 AND w.tipoc1 = 1\n							 AND x.tipo = ''TRIMESTRAL'' )		 				\n							   C1, 			                	\n							(select SUM(valor)\n									   from valores x, indices_financieros z, formulas w\n							   where w.id_formula = z.id_formula\n									 AND x.id_tag_agf = w.campo2\n									 AND z.id_indice_financiero = b.id_indice_financiero\n									 AND x.id_empresa = a.id_empresa\n									  AND x.id_periodo = a.id_periodo \n									 AND w.tipoc1 = 1\n							 AND x.tipo = ''TRIMESTRAL'' )\n							C2,\n									(select SUM(valor)\n									   from valores x, indices_financieros z, formulas w\n							   where w.id_formula = z.id_formula\n									 AND x.id_tag_agf = w.campo3\n									 AND z.id_indice_financiero = b.id_indice_financiero\n									 AND x.id_empresa = a.id_empresa\n									  AND x.id_periodo = a.id_periodo 									\n									 AND w.tipoc1 = 2\n							 AND x.tipo = ''TRIMESTRAL'' ) C3,\n									(select SUM(valor)\n									   from valores x, indices_financieros z, formulas w\n							   where w.id_formula = z.id_formula\n									 AND x.id_tag_agf = w.campo4\n									 AND z.id_indice_financiero = b.id_indice_financiero\n									 AND x.id_empresa = a.id_empresa\n									  AND x.id_periodo = a.id_periodo 									\n									 AND w.tipoc1 = 2\n							 AND x.tipo = ''TRIMESTRAL'' ) C4,\n									(select SUM(valor)\n									   from valores x, indices_financieros z, formulas w\n							   where w.id_formula = z.id_formula\n									 AND x.id_tag_agf = w.campo5\n									 AND z.id_indice_financiero = b.id_indice_financiero\n									 AND x.id_empresa = a.id_empresa\n									  AND x.id_periodo = a.id_periodo 									\n									 AND w.tipoc1 = 2\n							 AND x.tipo = ''TRIMESTRAL'' ) C5, concat(d.rso, '': '', b.nombre), label, formula, e.ano, e.mes,\n												 (select SUM(valor)\n																   from valores x, indices_financieros z, formulas w\n														   where w.id_formula = z.id_formula\n																 AND x.id_tag_agf = w.campo1\n																 AND z.id_indice_financiero = b.id_indice_financiero\n																 AND x.id_empresa = 1\n																  AND x.id_periodo = a.id_periodo 									\n																AND w.tipoc1 = 1\n														 AND x.tipo = ''TRIMESTRAL'' ) P1, \n														(select SUM(valor)\n																   from valores x, indices_financieros z, formulas w\n														   where w.id_formula = z.id_formula\n																 AND x.id_tag_agf = w.campo2\n																 AND z.id_indice_financiero = b.id_indice_financiero\n																 AND x.id_empresa = 1\n																  AND x.id_periodo = a.id_periodo 									\n																AND w.tipoc1 = 1\n														 AND x.tipo = ''TRIMESTRAL'') P2,\n														(select SUM(valor)\n																   from valores x, indices_financieros z, formulas w\n														   where w.id_formula = z.id_formula\n																 AND x.id_tag_agf = w.campo3\n																 AND z.id_indice_financiero = b.id_indice_financiero\n																 AND x.id_empresa = 1\n																  AND x.id_periodo = a.id_periodo 									\n																AND w.tipoc1 = 2\n														 AND x.tipo = ''TRIMESTRAL'') P3,\n														(select SUM(valor)\n																   from valores x, indices_financieros z, formulas w\n														   where w.id_formula = z.id_formula\n																 AND x.id_tag_agf = w.campo4\n																 AND z.id_indice_financiero = b.id_indice_financiero\n																 AND x.id_empresa = 1\n																  AND x.id_periodo = a.id_periodo 									\n																AND w.tipoc1 = 2\n														 AND x.tipo = ''TRIMESTRAL'') P4,\n														(select SUM(valor)\n																   from valores x, indices_financieros z, formulas w\n														   where w.id_formula = z.id_formula\n																 AND x.id_tag_agf = w.campo5\n																 AND z.id_indice_financiero = b.id_indice_financiero\n																 AND x.id_empresa = 1\n																  AND x.id_periodo = a.id_periodo 									\n																AND w.tipoc1 = 2\n														 AND x.tipo = ''TRIMESTRAL'') P5, d.color, d.rso, b.nombre\n								From valores a, indices_financieros b, formulas c, empresa_indice z, empresas d, periodos e\n								where c.id_indice_financiero = b.id_indice_financiero								\n									AND a.id_empresa = d.id_empresa\n									AND a.id_periodo = e.id_periodo\n									AND d.id_empresa = z.id_empresa\n									AND z.id_indice_financiero = b.id_indice_financiero\n									AND z.id_formula = c.id_formula\n									AND c.id_indice_financiero = 1\n							AND a.tipo = ''TRIMESTRAL''\n							AND a.id_empresa in (0, 1, 2, 3)  \n				  Order By 12, 13, 2;');
INSERT INTO `log` (`datos`) VALUES
('Array\n(\n    [0] => Array\n        (\n            [0] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 13\n                    [valor] => 29510\n                    [nombre_final] => Hites: Ingresos Totales\n                    [label] => 3/2009\n                    [color] => 26316\n                    [graf] => 1\n                    [rso] => Hites\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [1] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 2\n                    [id_periodo] => 13\n                    [valor] => 0\n                    [nombre_final] => La Polar: Ingresos Totales\n                    [label] => 3/2009\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => La Polar\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [2] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 3\n                    [id_periodo] => 13\n                    [valor] => 153558\n                    [nombre_final] => Ripley Chile: Ingresos Totales\n                    [label] => 3/2009\n                    [color] => 52479\n                    [graf] => 1\n                    [rso] => Ripley Chile\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [3] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 14\n                    [valor] => 35315\n                    [nombre_final] => Hites: Ingresos Totales\n                    [label] => 6/2009\n                    [color] => 26316\n                    [graf] => 1\n                    [rso] => Hites\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [4] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 2\n                    [id_periodo] => 14\n                    [valor] => 0\n                    [nombre_final] => La Polar: Ingresos Totales\n                    [label] => 6/2009\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => La Polar\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [5] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 3\n                    [id_periodo] => 14\n                    [valor] => 163183\n                    [nombre_final] => Ripley Chile: Ingresos Totales\n                    [label] => 6/2009\n                    [color] => 52479\n                    [graf] => 1\n                    [rso] => Ripley Chile\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [6] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 15\n                    [valor] => 32630\n                    [nombre_final] => Hites: Ingresos Totales\n                    [label] => 9/2009\n                    [color] => 26316\n                    [graf] => 1\n                    [rso] => Hites\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [7] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 2\n                    [id_periodo] => 15\n                    [valor] => 0\n                    [nombre_final] => La Polar: Ingresos Totales\n                    [label] => 9/2009\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => La Polar\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [8] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 3\n                    [id_periodo] => 15\n                    [valor] => 149899\n                    [nombre_final] => Ripley Chile: Ingresos Totales\n                    [label] => 9/2009\n                    [color] => 52479\n                    [graf] => 1\n                    [rso] => Ripley Chile\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [9] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 16\n                    [valor] => 48906\n                    [nombre_final] => Hites: Ingresos Totales\n                    [label] => 12/2009\n                    [color] => 26316\n                    [graf] => 1\n                    [rso] => Hites\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [10] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 2\n                    [id_periodo] => 16\n                    [valor] => 0\n                    [nombre_final] => La Polar: Ingresos Totales\n                    [label] => 12/2009\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => La Polar\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [11] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 3\n                    [id_periodo] => 16\n                    [valor] => 204105\n                    [nombre_final] => Ripley Chile: Ingresos Totales\n                    [label] => 12/2009\n                    [color] => 52479\n                    [graf] => 1\n                    [rso] => Ripley Chile\n                    [indice] => Ingresos Totales\n                    [year] => 2009\n                    [nro_grafico] => 0\n                )\n\n            [12] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 32222\n                    [nombre_final] => Hites: Ingresos Totales\n                    [label] => 3/2010\n                    [color] => 26316\n                    [graf] => 1\n                    [rso] => Hites\n                    [indice] => Ingresos Totales\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [13] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 2\n                    [id_periodo] => 1\n                    [valor] => 0\n                    [nombre_final] => La Polar: Ingresos Totales\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => La Polar\n                    [indice] => Ingresos Totales\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [14] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 3\n                    [id_periodo] => 1\n                    [valor] => 146943\n                    [nombre_final] => Ripley Chile: Ingresos Totales\n                    [label] => 3/2010\n                    [color] => 52479\n                    [graf] => 1\n                    [rso] => Ripley Chile\n                    [indice] => Ingresos Totales\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [15] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 45918\n                    [nombre_final] => Hites: Ingresos Totales\n                    [label] => 6/2010\n                    [color] => 26316\n                    [graf] => 1\n                    [rso] => Hites\n                    [indice] => Ingresos Totales\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [16] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 2\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => La Polar: Ingresos Totales\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => La Polar\n                    [indice] => Ingresos Totales\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [17] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 3\n                    [id_periodo] => 2\n                    [valor] => 185685\n                    [nombre_final] => Ripley Chile: Ingresos Totales\n                    [label] => 6/2010\n                    [color] => 52479\n                    [graf] => 1\n                    [rso] => Ripley Chile\n                    [indice] => Ingresos Totales\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [18] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_');

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
-- Table structure for table `masivo`
--

CREATE TABLE IF NOT EXISTS `masivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_indice` int(11) NOT NULL,
  `id_tag_agf` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1 ;

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
  `mask` varchar(4) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID_PERIODO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `periodos`
--

INSERT INTO `periodos` (`ID_PERIODO`, `label`, `ANO`, `MES`, `OA`, `orden`, `mask`) VALUES
(1, '3/2010', 2010, 3, b'1', 5, '1Q10'),
(2, '6/2010', 2010, 6, b'1', 6, '2Q10'),
(3, '9/2010', 2010, 9, b'1', 7, '3Q10'),
(4, '12/2010', 2010, 12, b'1', 8, '4Q10'),
(5, '3/2011', 2011, 3, b'1', 9, '1Q11'),
(6, '6/2011', 2011, 6, b'1', 10, '2Q11'),
(7, '9/2011', 2011, 9, b'1', 11, '3Q11'),
(8, '12/2011', 2011, 12, b'1', 12, '4Q11'),
(9, '3/2012', 2012, 3, b'1', 13, '1Q12'),
(10, '6/2012', 2012, 6, b'1', 14, '2Q12'),
(11, '9/2012', 2012, 9, b'1', 15, '3Q12'),
(12, '12/2012', 2012, 12, b'1', 16, '4Q12'),
(13, '3/2009', 2009, 3, b'1', 1, '1Q09'),
(14, '6/2009', 2009, 6, b'1', 2, '2Q09'),
(15, '9/2009', 2009, 9, b'1', 3, '3Q09'),
(16, '12/2009', 2009, 12, b'1', 4, '4Q09'),
(28, '3/2013', 2013, 3, b'1', 17, '1Q13'),
(29, '6/2013', 2013, 6, b'1', 18, '2Q13'),
(30, '9/2013', 2013, 9, b'1', 19, '3Q13'),
(31, '12/2013', 2013, 12, b'1', 20, '4Q13'),
(32, '03/2014', 2014, 3, b'1', 21, '1Q14'),
(33, '06/2014', 2014, 6, b'1', 22, '2Q14'),
(34, '09/2014', 2014, 9, b'1', 23, '3Q14'),
(35, '12/2014', 2014, 12, b'1', 24, '4Q14');

-- --------------------------------------------------------

--
-- Table structure for table `subgrupos`
--

CREATE TABLE IF NOT EXISTS `subgrupos` (
  `ID_SUBGRUPO` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_SUBGRUPO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `subgrupos`
--

INSERT INTO `subgrupos` (`ID_SUBGRUPO`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'DEMO', '0');

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
(102, 721),
(102, 724),
(1, 3),
(1, 1),
(1, 2);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tag_agf`
--

INSERT INTO `tag_agf` (`ID_TAG_AGF`, `NOMBRE`, `ETIQUETA`, `COMPONENTE`, `ORIGEN`, `OA`) VALUES
(1, 'porcentaje ventas tc tienda', 'porcentaje ventas tc tienda', 'NO ESPECIFICA', 'MANUAL', b'1'),
(2, 'nro cliente total', 'nro cliente total', 'NO ESPECIFICA', 'MANUAL', b'1'),
(3, 'nro cliente repactada', 'nro cliente repactada', 'NO ESPECIFICA', 'MANUAL', b'1'),
(4, 'nro cliente no repactada', 'nro cliente no repactada', 'NO ESPECIFICA', 'MANUAL', b'1'),
(5, 'SSS', 'SSS', 'NO ESPECIFICA', 'MANUAL', b'1'),
(6, 'Ingresos Retail', 'Ingresos Retail', 'NO ESPECIFICA', 'XBRL', b'1'),
(7, 'Ingresos Financieros', 'Ingresos Financieros', 'NO ESPECIFICA', 'XBRL', b'1');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tipos_empresas`
--

INSERT INTO `tipos_empresas` (`ID_TIPO_EMPRESA`, `NOMBRE`, `DESCRIPCION`, `OA`) VALUES
(1, 'Inicial', '0', b'1');

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
  `VALOR` double(25,2) NOT NULL,
  `DT_MODIFICACION` datetime DEFAULT NULL,
  `origen` int(11) NOT NULL,
  PRIMARY KEY (`ID_VALOR`),
  KEY `ID_PERIODO` (`ID_PERIODO`),
  KEY `ID_TAG_AGF` (`ID_TAG_AGF`,`ID_EMPRESA`,`ID_PERIODO`),
  KEY `ID_TAG_AGF_2` (`ID_TAG_AGF`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=924 ;

--
-- Dumping data for table `valores`
--

INSERT INTO `valores` (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) VALUES
(1, 1, 1, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(2, 1, 2, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(3, 1, 3, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(4, 1, 1, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(5, 1, 2, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(6, 1, 3, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(7, 1, 1, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(8, 1, 2, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(9, 1, 3, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(10, 1, 1, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(11, 1, 2, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(12, 1, 3, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(13, 1, 1, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(14, 1, 2, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(15, 1, 3, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(16, 1, 1, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(17, 1, 2, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(18, 1, 3, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(19, 1, 1, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(20, 1, 2, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(21, 1, 3, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(22, 1, 1, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(23, 1, 2, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(24, 1, 3, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(25, 1, 1, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(26, 1, 2, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(27, 1, 3, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(28, 1, 1, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(29, 1, 2, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(30, 1, 3, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(31, 1, 1, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(32, 1, 2, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(33, 1, 3, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(34, 1, 1, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(35, 1, 2, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(36, 1, 3, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(37, 1, 1, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(38, 1, 2, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(39, 1, 3, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(40, 1, 1, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(41, 1, 2, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(42, 1, 3, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(43, 1, 1, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(44, 1, 2, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(45, 1, 3, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(46, 1, 1, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(47, 1, 2, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(48, 1, 3, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(49, 1, 1, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(50, 1, 2, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(51, 1, 3, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(52, 1, 1, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(53, 1, 2, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(54, 1, 3, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(55, 1, 1, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(56, 1, 2, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(57, 1, 3, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(58, 1, 1, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(59, 1, 2, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(60, 1, 3, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(61, 1, 1, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(62, 1, 2, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(63, 1, 3, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(64, 1, 1, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(65, 1, 2, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(66, 1, 3, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(67, 1, 1, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(68, 1, 2, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(69, 1, 3, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(70, 1, 1, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(71, 1, 2, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(72, 1, 3, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(128, 2, 1, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(129, 2, 2, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(130, 2, 3, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(131, 2, 1, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(132, 2, 2, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(133, 2, 3, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(134, 2, 1, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(135, 2, 2, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(136, 2, 3, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(137, 2, 1, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(138, 2, 2, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(139, 2, 3, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(140, 2, 1, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(141, 2, 2, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(142, 2, 3, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(143, 2, 1, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(144, 2, 2, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(145, 2, 3, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(146, 2, 1, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(147, 2, 2, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(148, 2, 3, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(149, 2, 1, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(150, 2, 2, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(151, 2, 3, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(152, 2, 1, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(153, 2, 2, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(154, 2, 3, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(155, 2, 1, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(156, 2, 2, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(157, 2, 3, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(158, 2, 1, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(159, 2, 2, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(160, 2, 3, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(161, 2, 1, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(162, 2, 2, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(163, 2, 3, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(164, 2, 1, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(165, 2, 2, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(166, 2, 3, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(167, 2, 1, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(168, 2, 2, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(169, 2, 3, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(170, 2, 1, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(171, 2, 2, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(172, 2, 3, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(173, 2, 1, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(174, 2, 2, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(175, 2, 3, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(176, 2, 1, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(177, 2, 2, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(178, 2, 3, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(179, 2, 1, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(180, 2, 2, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(181, 2, 3, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(182, 2, 1, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(183, 2, 2, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(184, 2, 3, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(185, 2, 1, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(186, 2, 2, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(187, 2, 3, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(188, 2, 1, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(189, 2, 2, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(190, 2, 3, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(191, 2, 1, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(192, 2, 2, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(193, 2, 3, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(194, 2, 1, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(195, 2, 2, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(196, 2, 3, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(197, 2, 1, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(198, 2, 2, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(199, 2, 3, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(255, 3, 1, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(256, 3, 2, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(257, 3, 3, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(258, 3, 1, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(259, 3, 2, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(260, 3, 3, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(261, 3, 1, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(262, 3, 2, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(263, 3, 3, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(264, 3, 1, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(265, 3, 2, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(266, 3, 3, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(267, 3, 1, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(268, 3, 2, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(269, 3, 3, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(270, 3, 1, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(271, 3, 2, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(272, 3, 3, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(273, 3, 1, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(274, 3, 2, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(275, 3, 3, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(276, 3, 1, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(277, 3, 2, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(278, 3, 3, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(279, 3, 1, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(280, 3, 2, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(281, 3, 3, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(282, 3, 1, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(283, 3, 2, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(284, 3, 3, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(285, 3, 1, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(286, 3, 2, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(287, 3, 3, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(288, 3, 1, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(289, 3, 2, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(290, 3, 3, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(291, 3, 1, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(292, 3, 2, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(293, 3, 3, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(294, 3, 1, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(295, 3, 2, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(296, 3, 3, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(297, 3, 1, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(298, 3, 2, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(299, 3, 3, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(300, 3, 1, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(301, 3, 2, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(302, 3, 3, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(303, 3, 1, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(304, 3, 2, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(305, 3, 3, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(306, 3, 1, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(307, 3, 2, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(308, 3, 3, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(309, 3, 1, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(310, 3, 2, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(311, 3, 3, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(312, 3, 1, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(313, 3, 2, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(314, 3, 3, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(315, 3, 1, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(316, 3, 2, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(317, 3, 3, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(318, 3, 1, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(319, 3, 2, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(320, 3, 3, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(321, 3, 1, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(322, 3, 2, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(323, 3, 3, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(324, 3, 1, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(325, 3, 2, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(326, 3, 3, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(382, 4, 1, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(383, 4, 2, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(384, 4, 3, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(385, 4, 1, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(386, 4, 2, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(387, 4, 3, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(388, 4, 1, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(389, 4, 2, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(390, 4, 3, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(391, 4, 1, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(392, 4, 2, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(393, 4, 3, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(394, 4, 1, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(395, 4, 2, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(396, 4, 3, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(397, 4, 1, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(398, 4, 2, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(399, 4, 3, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(400, 4, 1, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(401, 4, 2, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(402, 4, 3, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(403, 4, 1, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(404, 4, 2, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(405, 4, 3, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(406, 4, 1, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(407, 4, 2, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(408, 4, 3, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(409, 4, 1, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(410, 4, 2, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(411, 4, 3, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(412, 4, 1, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(413, 4, 2, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(414, 4, 3, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(415, 4, 1, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(416, 4, 2, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(417, 4, 3, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(418, 4, 1, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(419, 4, 2, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(420, 4, 3, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(421, 4, 1, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(422, 4, 2, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(423, 4, 3, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(424, 4, 1, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(425, 4, 2, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(426, 4, 3, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(427, 4, 1, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(428, 4, 2, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(429, 4, 3, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(430, 4, 1, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(431, 4, 2, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(432, 4, 3, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(433, 4, 1, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(434, 4, 2, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(435, 4, 3, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(436, 4, 1, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(437, 4, 2, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(438, 4, 3, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(439, 4, 1, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(440, 4, 2, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(441, 4, 3, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(442, 4, 1, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(443, 4, 2, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(444, 4, 3, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(445, 4, 1, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(446, 4, 2, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(447, 4, 3, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(448, 4, 1, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(449, 4, 2, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(450, 4, 3, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(451, 4, 1, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(452, 4, 2, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(453, 4, 3, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(509, 5, 1, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(510, 5, 2, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(511, 5, 3, 1, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(512, 5, 1, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(513, 5, 2, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(514, 5, 3, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(515, 5, 1, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(516, 5, 2, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(517, 5, 3, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(518, 5, 1, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(519, 5, 2, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(520, 5, 3, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(521, 5, 1, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(522, 5, 2, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(523, 5, 3, 5, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(524, 5, 1, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(525, 5, 2, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(526, 5, 3, 6, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(527, 5, 1, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(528, 5, 2, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(529, 5, 3, 7, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(530, 5, 1, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(531, 5, 2, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(532, 5, 3, 8, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(533, 5, 1, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(534, 5, 2, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(535, 5, 3, 9, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(536, 5, 1, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(537, 5, 2, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(538, 5, 3, 10, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(539, 5, 1, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(540, 5, 2, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(541, 5, 3, 11, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(542, 5, 1, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(543, 5, 2, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(544, 5, 3, 12, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(545, 5, 1, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(546, 5, 2, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(547, 5, 3, 13, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(548, 5, 1, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(549, 5, 2, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(550, 5, 3, 14, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(551, 5, 1, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(552, 5, 2, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(553, 5, 3, 15, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(554, 5, 1, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(555, 5, 2, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(556, 5, 3, 16, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(557, 5, 1, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(558, 5, 2, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(559, 5, 3, 28, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(560, 5, 1, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(561, 5, 2, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(562, 5, 3, 29, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(563, 5, 1, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(564, 5, 2, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(565, 5, 3, 30, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(566, 5, 1, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(567, 5, 2, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(568, 5, 3, 31, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(569, 5, 1, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(570, 5, 2, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(571, 5, 3, 32, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(572, 5, 1, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(573, 5, 2, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(574, 5, 3, 33, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(575, 5, 1, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(576, 5, 2, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(577, 5, 3, 34, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(578, 5, 1, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(579, 5, 2, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(580, 5, 3, 35, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1),
(636, 0, 1, 13, 'TRIMESTRAL', 29510.00, NULL, 1),
(637, 0, 1, 14, 'TRIMESTRAL', 35315.00, NULL, 1),
(638, 0, 1, 15, 'TRIMESTRAL', 32630.00, NULL, 1),
(639, 0, 1, 16, 'TRIMESTRAL', 48906.00, NULL, 1),
(640, 0, 1, 1, 'TRIMESTRAL', 32223.00, NULL, 1),
(641, 0, 1, 2, 'TRIMESTRAL', 45917.00, NULL, 1),
(642, 0, 1, 3, 'TRIMESTRAL', 41370.00, NULL, 1),
(643, 0, 1, 4, 'TRIMESTRAL', 64401.00, NULL, 1),
(644, 0, 1, 5, 'TRIMESTRAL', 42968.00, NULL, 1),
(645, 0, 1, 6, 'TRIMESTRAL', 54256.00, NULL, 1),
(646, 0, 1, 7, 'TRIMESTRAL', 53014.00, NULL, 1),
(647, 0, 1, 8, 'TRIMESTRAL', 77275.00, NULL, 1),
(648, 0, 1, 9, 'TRIMESTRAL', 52444.00, NULL, 1),
(649, 0, 1, 10, 'TRIMESTRAL', 62514.00, NULL, 1),
(650, 0, 1, 11, 'TRIMESTRAL', 58831.00, NULL, 1),
(651, 0, 1, 12, 'TRIMESTRAL', 80041.00, NULL, 1),
(652, 0, 1, 28, 'TRIMESTRAL', 54081.00, NULL, 1),
(653, 0, 1, 29, 'TRIMESTRAL', 66458.00, NULL, 1),
(654, 0, 1, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(655, 0, 1, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(656, 0, 1, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(657, 0, 1, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(658, 0, 1, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(659, 0, 1, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(660, 0, 2, 13, 'TRIMESTRAL', 0.00, NULL, 1),
(661, 0, 2, 14, 'TRIMESTRAL', 0.00, NULL, 1),
(662, 0, 2, 15, 'TRIMESTRAL', 0.00, NULL, 1),
(663, 0, 2, 16, 'TRIMESTRAL', 0.00, NULL, 1),
(664, 0, 2, 1, 'TRIMESTRAL', 0.00, NULL, 1),
(665, 0, 2, 2, 'TRIMESTRAL', 0.00, NULL, 1),
(666, 0, 2, 3, 'TRIMESTRAL', 0.00, NULL, 1),
(667, 0, 2, 4, 'TRIMESTRAL', 0.00, NULL, 1),
(668, 0, 2, 5, 'TRIMESTRAL', 0.00, NULL, 1),
(669, 0, 2, 6, 'TRIMESTRAL', 0.00, NULL, 1),
(670, 0, 2, 7, 'TRIMESTRAL', 0.00, NULL, 1),
(671, 0, 2, 8, 'TRIMESTRAL', 104093.00, NULL, 1),
(672, 0, 2, 9, 'TRIMESTRAL', 74686.00, NULL, 1),
(673, 0, 2, 10, 'TRIMESTRAL', 85098.00, NULL, 1),
(674, 0, 2, 11, 'TRIMESTRAL', 80213.00, NULL, 1),
(675, 0, 2, 12, 'TRIMESTRAL', 111933.00, NULL, 1),
(676, 0, 2, 28, 'TRIMESTRAL', 82991.00, NULL, 1),
(677, 0, 2, 29, 'TRIMESTRAL', 97676.00, NULL, 1),
(678, 0, 2, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(679, 0, 2, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(680, 0, 2, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(681, 0, 2, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(682, 0, 2, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(683, 0, 2, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(684, 0, 3, 13, 'TRIMESTRAL', 153558.00, NULL, 1),
(685, 0, 3, 14, 'TRIMESTRAL', 163183.00, NULL, 1),
(686, 0, 3, 15, 'TRIMESTRAL', 149899.00, NULL, 1),
(687, 0, 3, 16, 'TRIMESTRAL', 204105.00, NULL, 1),
(688, 0, 3, 1, 'TRIMESTRAL', 146943.00, NULL, 1),
(689, 0, 3, 2, 'TRIMESTRAL', 185685.00, NULL, 1),
(690, 0, 3, 3, 'TRIMESTRAL', 168268.00, NULL, 1),
(691, 0, 3, 4, 'TRIMESTRAL', 230886.00, NULL, 1),
(692, 0, 3, 5, 'TRIMESTRAL', 171694.00, NULL, 1),
(693, 0, 3, 6, 'TRIMESTRAL', 194699.00, NULL, 1),
(694, 0, 3, 7, 'TRIMESTRAL', 175379.00, NULL, 1),
(695, 0, 3, 8, 'TRIMESTRAL', 240846.00, NULL, 1),
(696, 0, 3, 9, 'TRIMESTRAL', 181959.00, NULL, 1),
(697, 0, 3, 10, 'TRIMESTRAL', 196529.00, NULL, 1),
(698, 0, 3, 11, 'TRIMESTRAL', 189933.00, NULL, 1),
(699, 0, 3, 12, 'TRIMESTRAL', 262762.00, NULL, 1),
(700, 0, 3, 28, 'TRIMESTRAL', 185161.00, NULL, 1),
(701, 0, 3, 29, 'TRIMESTRAL', 201353.00, NULL, 1),
(702, 0, 3, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(703, 0, 3, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(704, 0, 3, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(705, 0, 3, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(706, 0, 3, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(707, 0, 3, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(708, 6, 1, 13, 'TRIMESTRAL', 17174.00, NULL, 1),
(709, 6, 1, 14, 'TRIMESTRAL', 21761.00, NULL, 1),
(710, 6, 1, 15, 'TRIMESTRAL', 21147.00, NULL, 1),
(711, 6, 1, 16, 'TRIMESTRAL', 33711.00, NULL, 1),
(712, 6, 1, 1, 'TRIMESTRAL', 18537.00, NULL, 1),
(713, 6, 1, 2, 'TRIMESTRAL', 30099.00, NULL, 1),
(714, 6, 1, 3, 'TRIMESTRAL', 25990.00, NULL, 1),
(715, 6, 1, 4, 'TRIMESTRAL', 45137.00, NULL, 1),
(716, 6, 1, 5, 'TRIMESTRAL', 24900.00, NULL, 1),
(717, 6, 1, 6, 'TRIMESTRAL', 34345.00, NULL, 1),
(718, 6, 1, 7, 'TRIMESTRAL', 34041.00, NULL, 1),
(719, 6, 1, 8, 'TRIMESTRAL', 54803.00, NULL, 1),
(720, 6, 1, 9, 'TRIMESTRAL', 31761.00, NULL, 1),
(721, 6, 1, 10, 'TRIMESTRAL', 40160.00, NULL, 1),
(722, 6, 1, 11, 'TRIMESTRAL', 37194.00, NULL, 1),
(723, 6, 1, 12, 'TRIMESTRAL', 56287.00, NULL, 1),
(724, 6, 1, 28, 'TRIMESTRAL', 33146.00, NULL, 1),
(725, 6, 1, 29, 'TRIMESTRAL', 44619.00, NULL, 1),
(726, 6, 1, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(727, 6, 1, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(728, 6, 1, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(729, 6, 1, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(730, 6, 1, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(731, 6, 1, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(732, 6, 2, 13, 'TRIMESTRAL', 0.00, NULL, 1),
(733, 6, 2, 14, 'TRIMESTRAL', 0.00, NULL, 1),
(734, 6, 2, 15, 'TRIMESTRAL', 0.00, NULL, 1),
(735, 6, 2, 16, 'TRIMESTRAL', 0.00, NULL, 1),
(736, 6, 2, 1, 'TRIMESTRAL', 0.00, NULL, 1),
(737, 6, 2, 2, 'TRIMESTRAL', 0.00, NULL, 1),
(738, 6, 2, 3, 'TRIMESTRAL', 0.00, NULL, 1),
(739, 6, 2, 4, 'TRIMESTRAL', 0.00, NULL, 1),
(740, 6, 2, 5, 'TRIMESTRAL', 0.00, NULL, 1),
(741, 6, 2, 6, 'TRIMESTRAL', 0.00, NULL, 1),
(742, 6, 2, 7, 'TRIMESTRAL', 0.00, NULL, 1),
(743, 6, 2, 8, 'TRIMESTRAL', 85866.00, NULL, 1),
(744, 6, 2, 9, 'TRIMESTRAL', 59358.00, NULL, 1),
(745, 6, 2, 10, 'TRIMESTRAL', 70888.00, NULL, 1),
(746, 6, 2, 11, 'TRIMESTRAL', 66588.00, NULL, 1),
(747, 6, 2, 12, 'TRIMESTRAL', 96920.00, NULL, 1),
(748, 6, 2, 28, 'TRIMESTRAL', 67327.00, NULL, 1),
(749, 6, 2, 29, 'TRIMESTRAL', 80583.00, NULL, 1),
(750, 6, 2, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(751, 6, 2, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(752, 6, 2, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(753, 6, 2, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(754, 6, 2, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(755, 6, 2, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(756, 6, 3, 13, 'TRIMESTRAL', 95992.00, NULL, 1),
(757, 6, 3, 14, 'TRIMESTRAL', 114936.00, NULL, 1),
(758, 6, 3, 15, 'TRIMESTRAL', 107196.00, NULL, 1),
(759, 6, 3, 16, 'TRIMESTRAL', 167872.00, NULL, 1),
(760, 6, 3, 1, 'TRIMESTRAL', 108052.00, NULL, 1),
(761, 6, 3, 2, 'TRIMESTRAL', 149286.00, NULL, 1),
(762, 6, 3, 3, 'TRIMESTRAL', 125177.00, NULL, 1),
(763, 6, 3, 4, 'TRIMESTRAL', 187059.00, NULL, 1),
(764, 6, 3, 5, 'TRIMESTRAL', 126819.00, NULL, 1),
(765, 6, 3, 6, 'TRIMESTRAL', 150977.00, NULL, 1),
(766, 6, 3, 7, 'TRIMESTRAL', 133239.00, NULL, 1),
(767, 6, 3, 8, 'TRIMESTRAL', 200992.00, NULL, 1),
(768, 6, 3, 9, 'TRIMESTRAL', 141120.00, NULL, 1),
(769, 6, 3, 10, 'TRIMESTRAL', 158095.00, NULL, 1),
(770, 6, 3, 11, 'TRIMESTRAL', 151565.00, NULL, 1),
(771, 6, 3, 12, 'TRIMESTRAL', 223096.00, NULL, 1),
(772, 6, 3, 28, 'TRIMESTRAL', 144691.00, NULL, 1),
(773, 6, 3, 29, 'TRIMESTRAL', 161228.00, NULL, 1),
(774, 6, 3, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(775, 6, 3, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(776, 6, 3, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(777, 6, 3, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(778, 6, 3, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(779, 6, 3, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(780, 7, 1, 13, 'TRIMESTRAL', 12336.00, NULL, 1),
(781, 7, 1, 14, 'TRIMESTRAL', 13554.00, NULL, 1),
(782, 7, 1, 15, 'TRIMESTRAL', 11483.00, NULL, 1),
(783, 7, 1, 16, 'TRIMESTRAL', 15195.00, NULL, 1),
(784, 7, 1, 1, 'TRIMESTRAL', 13685.00, NULL, 1),
(785, 7, 1, 2, 'TRIMESTRAL', 15819.00, NULL, 1),
(786, 7, 1, 3, 'TRIMESTRAL', 15380.00, NULL, 1),
(787, 7, 1, 4, 'TRIMESTRAL', 19264.00, NULL, 1),
(788, 7, 1, 5, 'TRIMESTRAL', 18068.00, NULL, 1),
(789, 7, 1, 6, 'TRIMESTRAL', 19911.00, NULL, 1),
(790, 7, 1, 7, 'TRIMESTRAL', 18973.00, NULL, 1),
(791, 7, 1, 8, 'TRIMESTRAL', 22472.00, NULL, 1),
(792, 7, 1, 9, 'TRIMESTRAL', 20683.00, NULL, 1),
(793, 7, 1, 10, 'TRIMESTRAL', 22354.00, NULL, 1),
(794, 7, 1, 11, 'TRIMESTRAL', 21637.00, NULL, 1),
(795, 7, 1, 12, 'TRIMESTRAL', 23754.00, NULL, 1),
(796, 7, 1, 28, 'TRIMESTRAL', 20935.00, NULL, 1),
(797, 7, 1, 29, 'TRIMESTRAL', 21839.00, NULL, 1),
(798, 7, 1, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(799, 7, 1, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(800, 7, 1, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(801, 7, 1, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(802, 7, 1, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(803, 7, 1, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(804, 7, 2, 13, 'TRIMESTRAL', 0.00, NULL, 1),
(805, 7, 2, 14, 'TRIMESTRAL', 0.00, NULL, 1),
(806, 7, 2, 15, 'TRIMESTRAL', 0.00, NULL, 1),
(807, 7, 2, 16, 'TRIMESTRAL', 0.00, NULL, 1),
(808, 7, 2, 1, 'TRIMESTRAL', 0.00, NULL, 1),
(809, 7, 2, 2, 'TRIMESTRAL', 0.00, NULL, 1),
(810, 7, 2, 3, 'TRIMESTRAL', 0.00, NULL, 1),
(811, 7, 2, 4, 'TRIMESTRAL', 0.00, NULL, 1),
(812, 7, 2, 5, 'TRIMESTRAL', 0.00, NULL, 1),
(813, 7, 2, 6, 'TRIMESTRAL', 0.00, NULL, 1),
(814, 7, 2, 7, 'TRIMESTRAL', 0.00, NULL, 1),
(815, 7, 2, 8, 'TRIMESTRAL', 18227.00, NULL, 1),
(816, 7, 2, 9, 'TRIMESTRAL', 15328.00, NULL, 1),
(817, 7, 2, 10, 'TRIMESTRAL', 14210.00, NULL, 1),
(818, 7, 2, 11, 'TRIMESTRAL', 13625.00, NULL, 1),
(819, 7, 2, 12, 'TRIMESTRAL', 15013.00, NULL, 1),
(820, 7, 2, 28, 'TRIMESTRAL', 15664.00, NULL, 1),
(821, 7, 2, 29, 'TRIMESTRAL', 17093.00, NULL, 1),
(822, 7, 2, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(823, 7, 2, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(824, 7, 2, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(825, 7, 2, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(826, 7, 2, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(827, 7, 2, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(828, 7, 3, 13, 'TRIMESTRAL', 57566.00, NULL, 1),
(829, 7, 3, 14, 'TRIMESTRAL', 48247.00, NULL, 1),
(830, 7, 3, 15, 'TRIMESTRAL', 42703.00, NULL, 1),
(831, 7, 3, 16, 'TRIMESTRAL', 36233.00, NULL, 1),
(832, 7, 3, 1, 'TRIMESTRAL', 38891.00, NULL, 1),
(833, 7, 3, 2, 'TRIMESTRAL', 36399.00, NULL, 1),
(834, 7, 3, 3, 'TRIMESTRAL', 43091.00, NULL, 1),
(835, 7, 3, 4, 'TRIMESTRAL', 43826.00, NULL, 1),
(836, 7, 3, 5, 'TRIMESTRAL', 44875.00, NULL, 1),
(837, 7, 3, 6, 'TRIMESTRAL', 43722.00, NULL, 1),
(838, 7, 3, 7, 'TRIMESTRAL', 42140.00, NULL, 1),
(839, 7, 3, 8, 'TRIMESTRAL', 39854.00, NULL, 1),
(840, 7, 3, 9, 'TRIMESTRAL', 40839.00, NULL, 1),
(841, 7, 3, 10, 'TRIMESTRAL', 38434.00, NULL, 1),
(842, 7, 3, 11, 'TRIMESTRAL', 38368.00, NULL, 1),
(843, 7, 3, 12, 'TRIMESTRAL', 38601.00, NULL, 1),
(844, 7, 3, 28, 'TRIMESTRAL', 40470.00, NULL, 1),
(845, 7, 3, 29, 'TRIMESTRAL', 40125.00, NULL, 1),
(846, 7, 3, 30, 'TRIMESTRAL', 0.00, NULL, 1),
(847, 7, 3, 31, 'TRIMESTRAL', 0.00, NULL, 1),
(848, 7, 3, 32, 'TRIMESTRAL', 0.00, NULL, 1),
(849, 7, 3, 33, 'TRIMESTRAL', 0.00, NULL, 1),
(850, 7, 3, 34, 'TRIMESTRAL', 0.00, NULL, 1),
(851, 7, 3, 35, 'TRIMESTRAL', 0.00, NULL, 1),
(852, 1, 1, 1, 'TRIMESTRAL', 32222.00, '0000-00-00 00:00:00', 2),
(853, 1, 1, 2, 'TRIMESTRAL', 45918.00, '0000-00-00 00:00:00', 2),
(854, 1, 1, 3, 'TRIMESTRAL', 41370.00, '0000-00-00 00:00:00', 2),
(855, 1, 1, 4, 'TRIMESTRAL', 64401.00, '0000-00-00 00:00:00', 2),
(856, 1, 1, 5, 'TRIMESTRAL', 42968.00, '0000-00-00 00:00:00', 2),
(857, 1, 1, 6, 'TRIMESTRAL', 54256.00, '0000-00-00 00:00:00', 2),
(858, 1, 1, 7, 'TRIMESTRAL', 53014.00, '0000-00-00 00:00:00', 2),
(859, 1, 1, 8, 'TRIMESTRAL', 77275.00, '0000-00-00 00:00:00', 2),
(860, 1, 1, 9, 'TRIMESTRAL', 52444.00, '0000-00-00 00:00:00', 2),
(861, 1, 1, 10, 'TRIMESTRAL', 62514.00, '0000-00-00 00:00:00', 2),
(862, 1, 1, 11, 'TRIMESTRAL', 58831.00, '0000-00-00 00:00:00', 2),
(863, 1, 1, 12, 'TRIMESTRAL', 80041.00, '0000-00-00 00:00:00', 2),
(864, 1, 1, 13, 'TRIMESTRAL', 29510.00, '0000-00-00 00:00:00', 2),
(865, 1, 1, 14, 'TRIMESTRAL', 35315.00, '0000-00-00 00:00:00', 2),
(866, 1, 1, 15, 'TRIMESTRAL', 32630.00, '0000-00-00 00:00:00', 2),
(867, 1, 1, 16, 'TRIMESTRAL', 48906.00, '0000-00-00 00:00:00', 2),
(868, 1, 1, 28, 'TRIMESTRAL', 54081.00, '0000-00-00 00:00:00', 2),
(869, 1, 1, 29, 'TRIMESTRAL', 66458.00, '0000-00-00 00:00:00', 2),
(870, 1, 1, 30, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(871, 1, 1, 31, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(872, 1, 1, 32, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(873, 1, 1, 33, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(874, 1, 1, 34, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(875, 1, 1, 35, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(876, 1, 2, 1, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(877, 1, 2, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(878, 1, 2, 3, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(879, 1, 2, 4, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(880, 1, 2, 5, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(881, 1, 2, 6, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(882, 1, 2, 7, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(883, 1, 2, 8, 'TRIMESTRAL', 104093.00, '0000-00-00 00:00:00', 2),
(884, 1, 2, 9, 'TRIMESTRAL', 74686.00, '0000-00-00 00:00:00', 2),
(885, 1, 2, 10, 'TRIMESTRAL', 85098.00, '0000-00-00 00:00:00', 2),
(886, 1, 2, 11, 'TRIMESTRAL', 80213.00, '0000-00-00 00:00:00', 2),
(887, 1, 2, 12, 'TRIMESTRAL', 111933.00, '0000-00-00 00:00:00', 2),
(888, 1, 2, 13, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(889, 1, 2, 14, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(890, 1, 2, 15, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(891, 1, 2, 16, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(892, 1, 2, 28, 'TRIMESTRAL', 82991.00, '0000-00-00 00:00:00', 2),
(893, 1, 2, 29, 'TRIMESTRAL', 97676.00, '0000-00-00 00:00:00', 2),
(894, 1, 2, 30, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(895, 1, 2, 31, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(896, 1, 2, 32, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(897, 1, 2, 33, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(898, 1, 2, 34, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(899, 1, 2, 35, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(900, 1, 3, 1, 'TRIMESTRAL', 146943.00, '0000-00-00 00:00:00', 2),
(901, 1, 3, 2, 'TRIMESTRAL', 185685.00, '0000-00-00 00:00:00', 2),
(902, 1, 3, 3, 'TRIMESTRAL', 168268.00, '0000-00-00 00:00:00', 2),
(903, 1, 3, 4, 'TRIMESTRAL', 230885.00, '0000-00-00 00:00:00', 2),
(904, 1, 3, 5, 'TRIMESTRAL', 171694.00, '0000-00-00 00:00:00', 2),
(905, 1, 3, 6, 'TRIMESTRAL', 194699.00, '0000-00-00 00:00:00', 2),
(906, 1, 3, 7, 'TRIMESTRAL', 175379.00, '0000-00-00 00:00:00', 2),
(907, 1, 3, 8, 'TRIMESTRAL', 240846.00, '0000-00-00 00:00:00', 2),
(908, 1, 3, 9, 'TRIMESTRAL', 181959.00, '0000-00-00 00:00:00', 2),
(909, 1, 3, 10, 'TRIMESTRAL', 196529.00, '0000-00-00 00:00:00', 2),
(910, 1, 3, 11, 'TRIMESTRAL', 189933.00, '0000-00-00 00:00:00', 2),
(911, 1, 3, 12, 'TRIMESTRAL', 261697.00, '0000-00-00 00:00:00', 2),
(912, 1, 3, 13, 'TRIMESTRAL', 153558.00, '0000-00-00 00:00:00', 2),
(913, 1, 3, 14, 'TRIMESTRAL', 163183.00, '0000-00-00 00:00:00', 2),
(914, 1, 3, 15, 'TRIMESTRAL', 149899.00, '0000-00-00 00:00:00', 2),
(915, 1, 3, 16, 'TRIMESTRAL', 204105.00, '0000-00-00 00:00:00', 2),
(916, 1, 3, 28, 'TRIMESTRAL', 185161.00, '0000-00-00 00:00:00', 2),
(917, 1, 3, 29, 'TRIMESTRAL', 201353.00, '0000-00-00 00:00:00', 2),
(918, 1, 3, 30, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(919, 1, 3, 31, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(920, 1, 3, 32, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(921, 1, 3, 33, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(922, 1, 3, 34, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2),
(923, 1, 3, 35, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_grafica`
--
CREATE TABLE IF NOT EXISTS `view_grafica` (
`id_formula` int(11)
,`id_empresa` int(18)
,`id_periodo` int(18)
,`C1` double(25,2)
,`C2` double(25,2)
,`C3` double(25,2)
,`C4` double(25,2)
,`C5` double(25,2)
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

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grupos_subgrupos`
--
ALTER TABLE `grupos_subgrupos`
  ADD CONSTRAINT `cs_subgrupo` FOREIGN KEY (`ID_SUBGRUPO`) REFERENCES `subgrupos` (`ID_SUBGRUPO`),
  ADD CONSTRAINT `cs_tipo_empresa` FOREIGN KEY (`ID_TIPO_EMPRESA`) REFERENCES `tipos_empresas` (`ID_TIPO_EMPRESA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
