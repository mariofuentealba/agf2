-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-12-2013 a las 08:41:33
-- Versión del servidor: 5.5.32
-- Versión de PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `agf`
--
CREATE DATABASE IF NOT EXISTS `agf` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `agf`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda_procesos`
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
-- Estructura de tabla para la tabla `configexport`
--

CREATE TABLE IF NOT EXISTS `configexport` (
  `id_indice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dolar`
--

CREATE TABLE IF NOT EXISTS `dolar` (
  `ID_DOLAR` int(18) NOT NULL,
  `PERIODO` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `FECHA_DOLAR` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `VALOR` float(18,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=22 ;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`ID_EMPRESA`, `RUT`, `RSO`, `NOMBRE_FANTASIA`, `NOMBRE_BOLSA`, `VALOR_ACCION`, `TIPO_BALANCE`, `TIPO_IFRS`, `MONEDA`, `ESTADOS`, `ORIGEN`, `OA`, `color`, `orden`) VALUES
(1, 'EMPRESA A', 'EMPRESA A', 'EMPRESA A', 'EMPRESA A', 0.00, 'I', 'Full', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 0, 0),
(21, 'e', 'e', 'e', 'e', 0.00, 'I', 'Pyme', 'CLP - Peso chileno', 'ESFC|ERF', 'CARGA_MANUAL', b'1', 13408512, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa_indice`
--

CREATE TABLE IF NOT EXISTS `empresa_indice` (
  `id_empresa` int(11) NOT NULL,
  `id_indice_financiero` int(11) NOT NULL,
  `num_formula` int(11) NOT NULL,
  `id_formula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa_indice`
--

INSERT INTO `empresa_indice` (`id_empresa`, `id_indice_financiero`, `num_formula`, `id_formula`) VALUES
(1, 1, 0, 1),
(1, 2, 0, 2),
(1, 3, 0, 4),
(1, 4, 0, 5),
(1, 5, 0, 7),
(1, 6, 0, 9),
(1, 7, 0, 11),
(21, 1, 0, 1),
(21, 2, 0, 2),
(21, 2, 0, 3),
(21, 3, 0, 4),
(21, 4, 0, 5),
(21, 4, 0, 6),
(21, 5, 0, 7),
(21, 5, 0, 8),
(21, 6, 0, 9),
(21, 6, 0, 10),
(21, 7, 0, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulario_item`
--

CREATE TABLE IF NOT EXISTS `formulario_item` (
  `id_empresa` int(11) NOT NULL,
  `id_tag_agf` int(11) NOT NULL,
  `fecha_insert` date NOT NULL,
  `nun_item` int(11) NOT NULL,
  `estado` varchar(1) COLLATE utf8_spanish2_ci NOT NULL DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `formulario_item`
--

INSERT INTO `formulario_item` (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`, `estado`) VALUES
(1, 1, '1900-01-01', 0, 'E'),
(1, 2, '1900-01-01', 1, 'E'),
(1, 1, '1900-01-01', 2, 'A'),
(1, 2, '1900-01-01', 3, 'A'),
(1, 3, '1900-01-01', 4, 'A'),
(12, 1, '1900-01-01', 0, 'A'),
(12, 2, '1900-01-01', 1, 'A'),
(12, 3, '1900-01-01', 2, 'A'),
(21, 1, '1900-01-01', 0, 'A'),
(21, 2, '1900-01-01', 1, 'A'),
(21, 3, '1900-01-01', 2, 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formulas`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=12 ;

--
-- Volcado de datos para la tabla `formulas`
--

INSERT INTO `formulas` (`ID_FORMULA`, `CAMPO1`, `CAMPO2`, `CAMPO3`, `CAMPO4`, `CAMPO5`, `tipoc1`, `tipoc2`, `tipoc3`, `tipoc4`, `tipoc5`, `FORMULA`, `CANTIDAD_CAMPOS`, `DECIMALES`, `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, `id_indice_financiero`, `num_formula`) VALUES
(1, 1, 2, -1, -1, -1, 1, 1, 0, 0, 0, 'C1+C2', 2, 0, 'C.1.NN', 'C.2.NN', 'no', 'no', 'no', 1, 0),
(2, 1, 2, -1, -1, -1, 1, 1, 0, 0, 0, 'C1-C2', 2, 0, 'C.1.NN', 'C.2.NN', 'no', 'no', 'no', 2, 0),
(3, 1, 3, -1, -1, -1, 1, 1, 0, 0, 0, 'C1-C2', 2, 0, 'C.1.NN', 'C.2.NN', 'no', 'no', 'no', 2, 1),
(4, 1, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 3, 0),
(5, 1, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 4, 0),
(6, 2, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 4, 1),
(7, 3, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 5, 0),
(8, 4, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 5, 1),
(9, 3, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 6, 0),
(10, 4, -1, -1, -1, -1, 2, 0, 0, 0, 0, 'C1', 1, 0, 'F.1.NN', 'no', 'no', 'no', 'no', 6, 1),
(11, 1, 5, -1, -1, -1, 1, 2, 0, 0, 0, 'C1-C2', 2, 0, 'C.1.NN', 'F.2.NN', 'no', 'no', 'no', 7, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_indices_financieros`
--

CREATE TABLE IF NOT EXISTS `grupos_indices_financieros` (
  `ID_GRUPO_INDICE_FINANCIERO` int(11) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `DESCRIPCION` varchar(300) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`ID_GRUPO_INDICE_FINANCIERO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `grupos_indices_financieros`
--

INSERT INTO `grupos_indices_financieros` (`ID_GRUPO_INDICE_FINANCIERO`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'Demo', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos_subgrupos`
--

CREATE TABLE IF NOT EXISTS `grupos_subgrupos` (
  `ID_TIPO_EMPRESA` int(18) NOT NULL,
  `ID_SUBGRUPO` int(18) NOT NULL,
  KEY `ID_TIPO_EMPRESA` (`ID_TIPO_EMPRESA`),
  KEY `ID_SUBGRUPO` (`ID_SUBGRUPO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `grupos_subgrupos`
--

INSERT INTO `grupos_subgrupos` (`ID_TIPO_EMPRESA`, `ID_SUBGRUPO`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historico_acciones`
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
-- Estructura de tabla para la tabla `indicadores`
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
-- Estructura de tabla para la tabla `indices_financieros`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=8 ;

--
-- Volcado de datos para la tabla `indices_financieros`
--

INSERT INTO `indices_financieros` (`ID_INDICE_FINANCIERO`, `ID_GRUPO_INDICE_FINANCIERO`, `ID_COMPONENTE`, `NOMBRE`, `DESCRIPCION`, `ID_FORMULA`, `FORMULA_DESC`, `RANGO_SUPERIOR`, `RANGO_INFERIOR`, `RANGOS_DESC`, `OA`) VALUES
(1, 1, 4, 'IA +IB', '0', 1, '0', '0.00', 0.00, '0', b'1'),
(2, 1, 4, 'IA -IB: IA -IC', '0', 2, '0', '0.00', 0.00, '0', b'1'),
(3, 1, 4, 'F1', '0', 4, '0', '0.00', 0.00, '0', b'1'),
(4, 1, 4, 'F1 y 2', '0', 5, '0', '0.00', 0.00, '0', b'1'),
(5, 1, 4, 'F 1 y 2 Directa', '0', 7, '0', '0.00', 0.00, '0', b'1'),
(6, 1, 4, 'F 1 y 2 Directa 2', '0', 9, '0', '0.00', 0.00, '0', b'1'),
(7, 1, 4, 'ITEM 1 - FD 1 y 2', '0', 11, '0', '0.00', 0.00, '0', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice_empresa`
--

CREATE TABLE IF NOT EXISTS `indice_empresa` (
  `id_indice` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `indice_empresa`
--

INSERT INTO `indice_empresa` (`id_indice`, `id_empresa`, `tipo`) VALUES
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(1, 1, 0),
(2, 1, 0),
(3, 1, 0),
(4, 1, 0),
(5, 1, 0),
(6, 1, 0),
(7, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `indice_subgrupo_empresa`
--

CREATE TABLE IF NOT EXISTS `indice_subgrupo_empresa` (
  `id_indice` int(11) NOT NULL,
  `id_subgrupo` int(11) NOT NULL,
  `tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `datos` varchar(10000) COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `log`
--

INSERT INTO `log` (`datos`) VALUES
('1, 0, 1, 21):),  , AND b.id_indice_financiero in (0, 1), Trimestral'),
('SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`\n									FROM `formulas` a, `indices_financieros` b\n									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` \n										AND b.`id_indice_financiero` =  1;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label, concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula, mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo		\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1\n							AND a.origen = 2\n							AND b.id_empresa in (0, 1, 21)  \n						order by 8, 14, 2;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label,  concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula,mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo									\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1							\n							AND a.origen = 2					\n							AND b.id_empresa = 1  \n						order by 8, 14, 2;'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 80.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1192|1193|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1192\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1192\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1193\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1193\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 8\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 8\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1195|1196|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1195\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1195\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1196\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1196\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 2\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 2\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 9\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 9\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1198|1199|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1198\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1198\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1199\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1199\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 3\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 10\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 10\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1.25\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1201|1202|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1201\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1201\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1202\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1202\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1.25\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 4\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 4\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 11\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 11\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1.25\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [7] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 4\n            [valor] => 1.2\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 12/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('Array\n(\n    [0] => Array\n        (\n            [0] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 80\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [1] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 150\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [2] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [3] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 200\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [4] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [5] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 250\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [6] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [7] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 300\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [8] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 0.53333333333333\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [9] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [10] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [11] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [12] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [13] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 1.25\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [14] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [15] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 1.2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [16] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => -100\n                )\n\n            [17] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 33.333333333333\n                )\n\n            [18] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 0\n                )\n\n            [19] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_'),
('1, 0, 1, 21):),  , AND b.id_indice_financiero in (0, 1), Trimestral'),
('SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`\n									FROM `formulas` a, `indices_financieros` b\n									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` \n										AND b.`id_indice_financiero` =  1;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label, concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula, mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo		\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1\n							AND a.origen = 2\n							AND b.id_empresa in (0, 1, 21)  \n						order by 8, 14, 2;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label,  concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula,mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo									\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1							\n							AND a.origen = 2					\n							AND b.id_empresa = 1  \n						order by 8, 14, 2;'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 80.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1192|1193|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1192\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1192\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1193\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1193\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 8\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 8\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1195|1196|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1195\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1195\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1196\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1196\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 2\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 2\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 9\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 9\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1198|1199|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1198\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1198\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1199\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1199\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 3\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 10\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 10\n)\n');
INSERT INTO `log` (`datos`) VALUES
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1201|1202|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1201\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1201\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1202\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1202\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 4\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 4\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 11\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 11\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [7] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 4\n            [valor] => 1.2\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 12/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('Array\n(\n    [0] => Array\n        (\n            [0] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 80\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [1] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 150\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [2] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [3] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 200\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [4] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [5] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 250\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [6] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [7] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 300\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [8] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 0.53333333333333\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [9] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [10] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [11] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [12] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [13] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [14] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [15] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 1.2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [16] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => -100\n                )\n\n            [17] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 33.333333333333\n                )\n\n            [18] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 0\n                )\n\n            [19] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_emp'),
('1, 0, 1, 21):),  , AND b.id_indice_financiero in (0, 1), Trimestral'),
('SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`\n									FROM `formulas` a, `indices_financieros` b\n									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` \n										AND b.`id_indice_financiero` =  1;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label, concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula, mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo		\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1\n							AND a.origen = 2\n							AND b.id_empresa in (0, 1, 21)  \n						order by 8, 14, 2;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label,  concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula,mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo									\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1							\n							AND a.origen = 2					\n							AND b.id_empresa = 1  \n						order by 8, 14, 2;'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 80.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1192|1193|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1192\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1192\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1193\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1193\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 8\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 8\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1195|1196|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1195\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1195\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1196\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1196\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = '),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 2\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 2\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 9\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 9\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = '),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1198|1199|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1198\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1198\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1199\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1199\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = '),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 3\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 10\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 10\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = '),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1201|1202|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1201\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1201\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1202\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1202\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = '),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 4\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 4\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 11\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 11\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.4\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 0.6\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [7] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 12/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n');
INSERT INTO `log` (`datos`) VALUES
('Array\n(\n    [0] => Array\n        (\n            [0] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 80\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [1] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 150\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [2] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [3] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 200\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [4] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [5] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 250\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [6] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [7] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 300\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [8] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 0.4\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [9] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 0.6\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [10] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [11] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [12] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [13] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [14] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [15] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [16] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => -100\n                )\n\n            [17] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 33.333333333333\n                )\n\n            [18] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 0\n                )\n\n            [19] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n  '),
('1, 0, 1, 21):),  , AND b.id_indice_financiero in (0, 1), Trimestral'),
('SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`\n									FROM `formulas` a, `indices_financieros` b\n									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` \n										AND b.`id_indice_financiero` =  1;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label, concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula, mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo		\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1\n							AND a.origen = 2\n							AND b.id_empresa in (0, 1, 21)  \n						order by 8, 14, 2;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label,  concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula,mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo									\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1							\n							AND a.origen = 2					\n							AND b.id_empresa = 1  \n						order by 8, 14, 2;'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 80.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1192|1193|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1192\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1192\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1193\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1193\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 8\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 8\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1195|1196|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1195\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1195\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1196\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1196\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 2\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 2\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 9\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 9\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1198|1199|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1198\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1198\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1199\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1199\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 3\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 10\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 10\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => e\n    [2] => 13408512\n    [3] => 0.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => e: IA +IB\n    [10] => 1\n    [11] => 21\n    [12] => 1201|1202|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1201\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1201\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1202\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1202\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 4\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 4\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 11\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 11\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 1\n            [valor] => 0.53333333333333\n            [nombre_final] => e: IA +IB\n            [label] => 3/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 2\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 6/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [4] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 3\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 9/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [5] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [6] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 21\n            [id_periodo] => 4\n            [valor] => 0\n            [nombre_final] => e: IA +IB\n            [label] => 12/2010\n            [color] => 13408512\n            [graf] => 2\n            [rso] => e\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [7] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 4\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 12/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('Array\n(\n    [0] => Array\n        (\n            [0] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 80\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [1] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 150\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [2] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [3] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 200\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [4] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [5] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 250\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [6] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 1\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [7] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 300\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [8] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 1\n                    [valor] => 0.53333333333333\n                    [nombre_final] => e: IA +IB\n                    [label] => 3/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [9] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [10] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [11] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [12] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [13] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [14] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 4\n                    [valor] => 0\n                    [nombre_final] => e: IA +IB\n                    [label] => 12/2010\n                    [color] => 13408512\n                    [graf] => 2\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [15] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [16] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 2\n                    [nombre_final] => e: IA +IB\n                    [label] => 6/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => -100\n                )\n\n            [17] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 33.333333333333\n                )\n\n            [18] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 21\n                    [id_periodo] => 3\n                    [nombre_final] => e: IA +IB\n                    [label] => 9/2010\n                    [color] => 13408512\n                    [graf] => 3\n                    [rso] => e\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 0\n                )\n\n            [19] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empre'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('7'),
('SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on id_indice_financiero = id_indice inner join \n					 empresas c on b.id_empresa = c.id_empresa\n				WHERE b.tipo = 0					\n				UNION\n				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO\n				FROM indices_financieros a inner join \n					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join \n					 subgrupos c on b.id_empresa = c.id_subgrupo\n				WHERE b.tipo <> 0\n				ORDER BY 1;'),
('7'),
('1, 0, 1):),  , AND b.id_indice_financiero in (0, 1), Trimestral'),
('SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`\n									FROM `formulas` a, `indices_financieros` b\n									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` \n										AND b.`id_indice_financiero` =  1;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label, concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula, mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo		\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1\n							AND a.origen = 2\n							AND b.id_empresa in (0, 1)  \n						order by 8, 14, 2;'),
('SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, \n							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, \n							ano year, label,  concat(b.rso, '': '', c.nombre) nombre_final, \n							1 graf,a.`ID_EMPRESA`, a.hist_formula,mes\n						FROM `valores` a 								\n							INNER JOIN empresas b\n								ON a.id_empresa = b.id_empresa									\n							INNER JOIN indices_financieros c\n								ON a.id_tag_agf = c.id_indice_financiero									\n							INNER JOIN periodos d\n								ON a.id_periodo = d.id_periodo									\n							INNER JOIN empresa_indice e\n								ON e.id_empresa = b.id_empresa\n								AND e.id_formula = a.id_formula\n						WHERE a.`ID_TAG_AGF` = 1							\n							AND a.origen = 2					\n							AND b.id_empresa = 1  \n						order by 8, 14, 2;'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 150.00\n    [4] => IA +IB\n    [5] => 1\n    [6] => 0\n    [7] => 2010\n    [8] => 3/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 1|8|||\n    [13] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 1\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 1\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 8\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 8\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 200.00\n    [4] => IA +IB\n    [5] => 2\n    [6] => 0\n    [7] => 2010\n    [8] => 6/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 2|9|||\n    [13] => 6\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 2\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 2\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 9\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 9\n)\n');
INSERT INTO `log` (`datos`) VALUES
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 250.00\n    [4] => IA +IB\n    [5] => 3\n    [6] => 0\n    [7] => 2010\n    [8] => 9/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 3|10|||\n    [13] => 9\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 3\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 3\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 10\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 10\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('rowCmp = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('row2 = Array\n(\n    [0] => 1\n    [1] => EMPRESA A\n    [2] => 0\n    [3] => 300.00\n    [4] => IA +IB\n    [5] => 4\n    [6] => 0\n    [7] => 2010\n    [8] => 12/2010\n    [9] => EMPRESA A: IA +IB\n    [10] => 1\n    [11] => 1\n    [12] => 4|11|||\n    [13] => 12\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 4\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 4\n)\n'),
('SELECT a.origen\n										FROM valores a \n										WHERE a.id_valor = 11\n											;'),
('ORIGEN = 1'),
('S = 1 y COUNT: 1'),
('campo = Array\n(\n    [0] => 11\n)\n'),
('ARR2: Array\n(\n    [0] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 1\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 3/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [1] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 2\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 6/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [2] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 3\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 9/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n    [3] => Array\n        (\n            [id_tag_agf] => 1\n            [id_empresa] => 1\n            [id_periodo] => 4\n            [valor] => 1\n            [nombre_final] => EMPRESA A: IA +IB\n            [label] => 12/2010\n            [color] => 0\n            [graf] => 2\n            [rso] => EMPRESA A\n            [indice] => IA +IB\n            [year] => 2010\n            [nro_grafico] => 0\n        )\n\n)\n'),
('Array\n(\n    [0] => Array\n        (\n            [0] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 150\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [1] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 200\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [2] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 250\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [3] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 300\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 1\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [4] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 1\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 3/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [5] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [6] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [7] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [valor] => 1\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 2\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                )\n\n            [8] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 2\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 6/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 33.333333333333\n                )\n\n            [9] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 3\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 9/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 25\n                )\n\n            [10] => Array\n                (\n                    [id_tag_agf] => 1\n                    [id_empresa] => 1\n                    [id_periodo] => 4\n                    [nombre_final] => EMPRESA A: IA +IB\n                    [label] => 12/2010\n                    [color] => 0\n                    [graf] => 3\n                    [rso] => EMPRESA A\n                    [indice] => IA +IB\n                    [year] => 2010\n                    [nro_grafico] => 0\n                    [valor] => 20\n                )\n\n        )\n\n)\n');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `log_ingreso_tag`
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
-- Estructura de tabla para la tabla `log_proceso`
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
-- Estructura de tabla para la tabla `log_registro`
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
-- Estructura de tabla para la tabla `masivo`
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
-- Estructura de tabla para la tabla `monedas`
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
-- Estructura de tabla para la tabla `perfiles`
--

CREATE TABLE IF NOT EXISTS `perfiles` (
  `ID_PERFIL` int(11) NOT NULL,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `periodos`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `periodos`
--

INSERT INTO `periodos` (`ID_PERIODO`, `label`, `ANO`, `MES`, `OA`, `orden`, `mask`) VALUES
(1, '3/2010', 2010, 3, b'1', 5, '1Q10'),
(2, '6/2010', 2010, 6, b'1', 6, '2Q10'),
(3, '9/2010', 2010, 9, b'1', 7, '3Q10'),
(4, '12/2010', 2010, 12, b'1', 8, '4Q10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subgrupos`
--

CREATE TABLE IF NOT EXISTS `subgrupos` (
  `ID_SUBGRUPO` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_SUBGRUPO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `subgrupos`
--

INSERT INTO `subgrupos` (`ID_SUBGRUPO`, `NOMBRE`, `DESCRIPCION`) VALUES
(1, 'DEMO', '0'),
(2, 'demo', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subgrupos_empresas`
--

CREATE TABLE IF NOT EXISTS `subgrupos_empresas` (
  `ID_SUBGRUPO` int(18) NOT NULL,
  `ID_EMPRESA` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `subgrupos_empresas`
--

INSERT INTO `subgrupos_empresas` (`ID_SUBGRUPO`, `ID_EMPRESA`) VALUES
(102, 721),
(102, 724),
(1, 1),
(2, 1),
(2, 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag_agf`
--

CREATE TABLE IF NOT EXISTS `tag_agf` (
  `ID_TAG_AGF` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ETIQUETA` varchar(300) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `COMPONENTE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `ORIGEN` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_TAG_AGF`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tag_agf`
--

INSERT INTO `tag_agf` (`ID_TAG_AGF`, `NOMBRE`, `ETIQUETA`, `COMPONENTE`, `ORIGEN`, `OA`) VALUES
(1, 'ITEM A', 'ITEM A', 'NO ESPECIFICA', 'MANUAL', b'1'),
(2, 'ITEM B', 'ITEM B', 'NO ESPECIFICA', 'MANUAL', b'1'),
(3, 'ITEM C', 'ITEM C', 'NO ESPECIFICA', 'MANUAL', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag_agf_xbrl`
--

CREATE TABLE IF NOT EXISTS `tag_agf_xbrl` (
  `ID_TAG_AGF` int(18) NOT NULL,
  `ID_TAG_XBRL` int(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tag_xbrl`
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
-- Estructura de tabla para la tabla `tipos_empresas`
--

CREATE TABLE IF NOT EXISTS `tipos_empresas` (
  `ID_TIPO_EMPRESA` int(18) NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `DESCRIPCION` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `OA` bit(1) DEFAULT NULL,
  PRIMARY KEY (`ID_TIPO_EMPRESA`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `tipos_empresas`
--

INSERT INTO `tipos_empresas` (`ID_TIPO_EMPRESA`, `NOMBRE`, `DESCRIPCION`, `OA`) VALUES
(1, 'Inicial', '0', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
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
-- Estructura de tabla para la tabla `usuarios_perfiles`
--

CREATE TABLE IF NOT EXISTS `usuarios_perfiles` (
  `ID_USUARIO` int(11) DEFAULT NULL,
  `ID_PERFIL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valores`
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
  `id_formula` int(11) NOT NULL,
  `hist_formula` varchar(20) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`ID_VALOR`),
  KEY `ID_PERIODO` (`ID_PERIODO`),
  KEY `ID_TAG_AGF` (`ID_TAG_AGF`,`ID_EMPRESA`,`ID_PERIODO`),
  KEY `ID_TAG_AGF_2` (`ID_TAG_AGF`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci AUTO_INCREMENT=1283 ;

--
-- Volcado de datos para la tabla `valores`
--

INSERT INTO `valores` (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`, `id_formula`, `hist_formula`) VALUES
(1, 1, 1, 1, 'TRIMESTRAL', 100.00, '1900-01-01 00:00:00', 1, 0, NULL),
(2, 1, 1, 2, 'TRIMESTRAL', 100.00, '1900-01-01 00:00:00', 1, 0, NULL),
(3, 1, 1, 3, 'TRIMESTRAL', 100.00, '1900-01-01 00:00:00', 1, 0, NULL),
(4, 1, 1, 4, 'TRIMESTRAL', 100.00, '1900-01-01 00:00:00', 1, 0, NULL),
(8, 2, 1, 1, 'TRIMESTRAL', 50.00, '1900-01-01 00:00:00', 1, 0, NULL),
(9, 2, 1, 2, 'TRIMESTRAL', 100.00, '1900-01-01 00:00:00', 1, 0, NULL),
(10, 2, 1, 3, 'TRIMESTRAL', 150.00, '1900-01-01 00:00:00', 1, 0, NULL),
(11, 2, 1, 4, 'TRIMESTRAL', 200.00, '1900-01-01 00:00:00', 1, 0, NULL),
(15, 3, 1, 1, 'TRIMESTRAL', 10.00, '1900-01-01 00:00:00', 1, 0, NULL),
(16, 3, 1, 2, 'TRIMESTRAL', 20.00, '1900-01-01 00:00:00', 1, 0, NULL),
(17, 3, 1, 3, 'TRIMESTRAL', 30.00, '1900-01-01 00:00:00', 1, 0, NULL),
(18, 3, 1, 4, 'TRIMESTRAL', 40.00, '1900-01-01 00:00:00', 1, 0, NULL),
(70, 1, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 1, '1|8|||'),
(71, 1, 1, 2, 'TRIMESTRAL', 200.00, '0000-00-00 00:00:00', 2, 1, '2|9|||'),
(72, 1, 1, 3, 'TRIMESTRAL', 250.00, '0000-00-00 00:00:00', 2, 1, '3|10|||'),
(73, 1, 1, 4, 'TRIMESTRAL', 300.00, '0000-00-00 00:00:00', 2, 1, '4|11|||'),
(74, 2, 1, 1, 'TRIMESTRAL', 50.00, '0000-00-00 00:00:00', 2, 2, '1|8|||'),
(75, 2, 1, 1, 'TRIMESTRAL', 90.00, '0000-00-00 00:00:00', 2, 3, '1|15|||'),
(76, 2, 1, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 2, '2|9|||'),
(77, 2, 1, 2, 'TRIMESTRAL', 80.00, '0000-00-00 00:00:00', 2, 3, '2|16|||'),
(78, 2, 1, 3, 'TRIMESTRAL', -50.00, '0000-00-00 00:00:00', 2, 2, '3|10|||'),
(79, 2, 1, 3, 'TRIMESTRAL', 70.00, '0000-00-00 00:00:00', 2, 3, '3|17|||'),
(80, 2, 1, 4, 'TRIMESTRAL', -100.00, '0000-00-00 00:00:00', 2, 2, '4|11|||'),
(81, 2, 1, 4, 'TRIMESTRAL', 60.00, '0000-00-00 00:00:00', 2, 3, '4|18|||'),
(82, 3, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 4, '70||||'),
(83, 3, 1, 2, 'TRIMESTRAL', 200.00, '0000-00-00 00:00:00', 2, 4, '71||||'),
(84, 3, 1, 3, 'TRIMESTRAL', 250.00, '0000-00-00 00:00:00', 2, 4, '72||||'),
(85, 3, 1, 4, 'TRIMESTRAL', 300.00, '0000-00-00 00:00:00', 2, 4, '73||||'),
(86, 4, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 5, '70||||'),
(87, 4, 1, 2, 'TRIMESTRAL', 200.00, '0000-00-00 00:00:00', 2, 5, '71||||'),
(88, 4, 1, 3, 'TRIMESTRAL', 250.00, '0000-00-00 00:00:00', 2, 5, '72||||'),
(89, 4, 1, 4, 'TRIMESTRAL', 300.00, '0000-00-00 00:00:00', 2, 5, '73||||'),
(90, 4, 1, 1, 'TRIMESTRAL', 50.00, '0000-00-00 00:00:00', 2, 6, '74||||'),
(91, 4, 1, 1, 'TRIMESTRAL', 90.00, '0000-00-00 00:00:00', 2, 6, '75||||'),
(92, 4, 1, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 6, '76||||'),
(93, 4, 1, 2, 'TRIMESTRAL', 80.00, '0000-00-00 00:00:00', 2, 6, '77||||'),
(94, 4, 1, 3, 'TRIMESTRAL', -50.00, '0000-00-00 00:00:00', 2, 6, '78||||'),
(95, 4, 1, 3, 'TRIMESTRAL', 70.00, '0000-00-00 00:00:00', 2, 6, '79||||'),
(96, 4, 1, 4, 'TRIMESTRAL', -100.00, '0000-00-00 00:00:00', 2, 6, '80||||'),
(97, 4, 1, 4, 'TRIMESTRAL', 60.00, '0000-00-00 00:00:00', 2, 6, '81||||'),
(98, 5, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 7, '82||||'),
(99, 5, 1, 2, 'TRIMESTRAL', 200.00, '0000-00-00 00:00:00', 2, 7, '83||||'),
(100, 5, 1, 3, 'TRIMESTRAL', 250.00, '0000-00-00 00:00:00', 2, 7, '84||||'),
(101, 5, 1, 4, 'TRIMESTRAL', 300.00, '0000-00-00 00:00:00', 2, 7, '85||||'),
(102, 5, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 8, '86||||'),
(103, 5, 1, 1, 'TRIMESTRAL', 50.00, '0000-00-00 00:00:00', 2, 8, '90||||'),
(104, 5, 1, 1, 'TRIMESTRAL', 90.00, '0000-00-00 00:00:00', 2, 8, '91||||'),
(105, 5, 1, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '87||||'),
(106, 5, 1, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '92||||'),
(107, 5, 1, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '93||||'),
(108, 5, 1, 3, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '88||||'),
(109, 5, 1, 3, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '94||||'),
(110, 5, 1, 3, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '95||||'),
(111, 5, 1, 4, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '89||||'),
(112, 5, 1, 4, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '96||||'),
(113, 5, 1, 4, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 8, '97||||'),
(114, 6, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 9, '82||||'),
(115, 6, 1, 2, 'TRIMESTRAL', 200.00, '0000-00-00 00:00:00', 2, 9, '83||||'),
(116, 6, 1, 3, 'TRIMESTRAL', 250.00, '0000-00-00 00:00:00', 2, 9, '84||||'),
(117, 6, 1, 4, 'TRIMESTRAL', 300.00, '0000-00-00 00:00:00', 2, 9, '85||||'),
(118, 6, 1, 1, 'TRIMESTRAL', 150.00, '0000-00-00 00:00:00', 2, 10, '86||||'),
(119, 6, 1, 1, 'TRIMESTRAL', 50.00, '0000-00-00 00:00:00', 2, 10, '90||||'),
(120, 6, 1, 1, 'TRIMESTRAL', 90.00, '0000-00-00 00:00:00', 2, 10, '91||||'),
(121, 6, 1, 2, 'TRIMESTRAL', 200.00, '0000-00-00 00:00:00', 2, 10, '87||||'),
(122, 6, 1, 2, 'TRIMESTRAL', 0.00, '0000-00-00 00:00:00', 2, 10, '92||||'),
(123, 6, 1, 2, 'TRIMESTRAL', 80.00, '0000-00-00 00:00:00', 2, 10, '93||||'),
(124, 6, 1, 3, 'TRIMESTRAL', 250.00, '0000-00-00 00:00:00', 2, 10, '88||||'),
(125, 6, 1, 3, 'TRIMESTRAL', -50.00, '0000-00-00 00:00:00', 2, 10, '94||||'),
(126, 6, 1, 3, 'TRIMESTRAL', 70.00, '0000-00-00 00:00:00', 2, 10, '95||||'),
(127, 6, 1, 4, 'TRIMESTRAL', 300.00, '0000-00-00 00:00:00', 2, 10, '89||||'),
(128, 6, 1, 4, 'TRIMESTRAL', -100.00, '0000-00-00 00:00:00', 2, 10, '96||||'),
(129, 6, 1, 4, 'TRIMESTRAL', 60.00, '0000-00-00 00:00:00', 2, 10, '97||||'),
(130, 7, 1, 1, 'TRIMESTRAL', -50.00, '0000-00-00 00:00:00', 2, 11, '1|98|||'),
(131, 7, 1, 1, 'TRIMESTRAL', -50.00, '0000-00-00 00:00:00', 2, 11, '1|102|||'),
(132, 7, 1, 1, 'TRIMESTRAL', 50.00, '0000-00-00 00:00:00', 2, 11, '1|103|||'),
(133, 7, 1, 1, 'TRIMESTRAL', 10.00, '0000-00-00 00:00:00', 2, 11, '1|104|||'),
(134, 7, 1, 2, 'TRIMESTRAL', -100.00, '0000-00-00 00:00:00', 2, 11, '2|99|||'),
(135, 7, 1, 2, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '2|105|||'),
(136, 7, 1, 2, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '2|106|||'),
(137, 7, 1, 2, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '2|107|||'),
(138, 7, 1, 3, 'TRIMESTRAL', -150.00, '0000-00-00 00:00:00', 2, 11, '3|100|||'),
(139, 7, 1, 3, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '3|108|||'),
(140, 7, 1, 3, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '3|109|||'),
(141, 7, 1, 3, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '3|110|||'),
(142, 7, 1, 4, 'TRIMESTRAL', -200.00, '0000-00-00 00:00:00', 2, 11, '4|101|||'),
(143, 7, 1, 4, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '4|111|||'),
(144, 7, 1, 4, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '4|112|||'),
(145, 7, 1, 4, 'TRIMESTRAL', 100.00, '0000-00-00 00:00:00', 2, 11, '4|113|||'),
(1192, 1, 21, 1, 'TRIMESTRAL', 50.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1193, 2, 21, 1, 'TRIMESTRAL', 30.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1194, 3, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1195, 1, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1196, 2, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1197, 3, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1198, 1, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1199, 2, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1200, 3, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1201, 1, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1202, 2, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1203, 3, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 1, 0, NULL),
(1207, 1, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 1, '1192|1193|||'),
(1208, 1, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 1, '1195|1196|||'),
(1209, 1, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 1, '1198|1199|||'),
(1210, 1, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 1, '1201|1202|||'),
(1211, 2, 21, 1, 'TRIMESTRAL', 20.00, '1900-01-01 00:00:00', 2, 2, '1192|1193|||'),
(1212, 2, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 2, '1195|1196|||'),
(1213, 2, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 2, '1198|1199|||'),
(1214, 2, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 2, '1201|1202|||'),
(1215, 2, 21, 1, 'TRIMESTRAL', -30.00, '1900-01-01 00:00:00', 2, 3, '1192|1194|||'),
(1216, 2, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 3, '1195|1197|||'),
(1217, 2, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 3, '1198|1200|||'),
(1218, 2, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 3, '1201|1203|||'),
(1219, 3, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 4, '1207||||'),
(1220, 3, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 4, '1208||||'),
(1221, 3, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 4, '1209||||'),
(1222, 3, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 4, '1210||||'),
(1223, 4, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 5, '1207||||'),
(1224, 4, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 5, '1208||||'),
(1225, 4, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 5, '1209||||'),
(1226, 4, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 5, '1210||||'),
(1227, 4, 21, 1, 'TRIMESTRAL', 20.00, '1900-01-01 00:00:00', 2, 6, '1211||||'),
(1228, 4, 21, 1, 'TRIMESTRAL', -30.00, '1900-01-01 00:00:00', 2, 6, '1215||||'),
(1229, 4, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 6, '1212||||'),
(1230, 4, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 6, '1216||||'),
(1231, 4, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 6, '1213||||'),
(1232, 4, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 6, '1217||||'),
(1233, 4, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 6, '1214||||'),
(1234, 4, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 6, '1218||||'),
(1235, 5, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 7, '1219||||'),
(1236, 5, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 7, '1220||||'),
(1237, 5, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 7, '1221||||'),
(1238, 5, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 7, '1222||||'),
(1239, 5, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 8, '1223||||'),
(1240, 5, 21, 1, 'TRIMESTRAL', 20.00, '1900-01-01 00:00:00', 2, 8, '1227||||'),
(1241, 5, 21, 1, 'TRIMESTRAL', -30.00, '1900-01-01 00:00:00', 2, 8, '1228||||'),
(1242, 5, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1224||||'),
(1243, 5, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1229||||'),
(1244, 5, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1230||||'),
(1245, 5, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1225||||'),
(1246, 5, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1231||||'),
(1247, 5, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1232||||'),
(1248, 5, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1226||||'),
(1249, 5, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1233||||'),
(1250, 5, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 8, '1234||||'),
(1251, 6, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 9, '1219||||'),
(1252, 6, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 9, '1220||||'),
(1253, 6, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 9, '1221||||'),
(1254, 6, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 9, '1222||||'),
(1255, 6, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 10, '1223||||'),
(1256, 6, 21, 1, 'TRIMESTRAL', 20.00, '1900-01-01 00:00:00', 2, 10, '1227||||'),
(1257, 6, 21, 1, 'TRIMESTRAL', -30.00, '1900-01-01 00:00:00', 2, 10, '1228||||'),
(1258, 6, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1224||||'),
(1259, 6, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1229||||'),
(1260, 6, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1230||||'),
(1261, 6, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1225||||'),
(1262, 6, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1231||||'),
(1263, 6, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1232||||'),
(1264, 6, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1226||||'),
(1265, 6, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1233||||'),
(1266, 6, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 10, '1234||||'),
(1267, 7, 21, 1, 'TRIMESTRAL', -30.00, '1900-01-01 00:00:00', 2, 11, '1192|1235|||'),
(1268, 7, 21, 1, 'TRIMESTRAL', -30.00, '1900-01-01 00:00:00', 2, 11, '1192|1239|||'),
(1269, 7, 21, 1, 'TRIMESTRAL', 30.00, '1900-01-01 00:00:00', 2, 11, '1192|1240|||'),
(1270, 7, 21, 1, 'TRIMESTRAL', 80.00, '1900-01-01 00:00:00', 2, 11, '1192|1241|||'),
(1271, 7, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1195|1236|||'),
(1272, 7, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1195|1242|||'),
(1273, 7, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1195|1243|||'),
(1274, 7, 21, 2, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1195|1244|||'),
(1275, 7, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1198|1237|||'),
(1276, 7, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1198|1245|||'),
(1277, 7, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1198|1246|||'),
(1278, 7, 21, 3, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1198|1247|||'),
(1279, 7, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1201|1238|||'),
(1280, 7, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1201|1248|||'),
(1281, 7, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1201|1249|||'),
(1282, 7, 21, 4, 'TRIMESTRAL', 0.00, '1900-01-01 00:00:00', 2, 11, '1201|1250|||');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `view_grafica`
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
-- Estructura para la vista `view_grafica`
--
DROP TABLE IF EXISTS `view_grafica`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_grafica` AS select `c`.`ID_FORMULA` AS `id_formula`,`a`.`ID_EMPRESA` AS `id_empresa`,`a`.`ID_PERIODO` AS `id_periodo`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO1`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C1`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO2`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C2`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO3`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C3`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO4`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C4`,(select `x`.`VALOR` from ((`valores` `x` join `indices_financieros` `z`) join `formulas` `w`) where ((`w`.`ID_FORMULA` = `z`.`ID_FORMULA`) and (`x`.`ID_TAG_AGF` = `w`.`CAMPO5`) and (`z`.`ID_INDICE_FINANCIERO` = `b`.`ID_INDICE_FINANCIERO`) and (`x`.`ID_EMPRESA` = `a`.`ID_EMPRESA`) and (`x`.`ID_PERIODO` = `a`.`ID_PERIODO`) and (`x`.`tipo` = 'TRIMESTRAL'))) AS `C5`,concat(`d`.`RSO`,': ',`b`.`NOMBRE`) AS `rso`,`e`.`label` AS `label`,1 AS `graf`,`c`.`FORMULA` AS `formula`,`e`.`ANO` AS `ano`,`e`.`MES` AS `mes` from ((((`valores` `a` join `indices_financieros` `b`) join `formulas` `c`) join `empresas` `d`) join `periodos` `e`) where ((`c`.`ID_FORMULA` = `b`.`ID_FORMULA`) and (`a`.`ID_TAG_AGF` = `c`.`CAMPO1`) and (`a`.`ID_EMPRESA` = `d`.`ID_EMPRESA`) and (`a`.`ID_PERIODO` = `e`.`ID_PERIODO`));

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `grupos_subgrupos`
--
ALTER TABLE `grupos_subgrupos`
  ADD CONSTRAINT `cs_subgrupo` FOREIGN KEY (`ID_SUBGRUPO`) REFERENCES `subgrupos` (`ID_SUBGRUPO`),
  ADD CONSTRAINT `cs_tipo_empresa` FOREIGN KEY (`ID_TIPO_EMPRESA`) REFERENCES `tipos_empresas` (`ID_TIPO_EMPRESA`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
