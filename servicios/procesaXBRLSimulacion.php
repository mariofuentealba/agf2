<?php
// @(#) $Id$  246059001
// +-----------------------------------------------------------------------+
// | Copyright (C) 2008, http://yoursite                                   |
// +-----------------------------------------------------------------------+
// | This file is free software; you can redistribute it and/or modify     |
// | it under the terms of the GNU General Public License as published by  |
// | the Free Software Foundation; either version 2 of the License, or     |
// | (at your option) any later version.                                   |
// | This file is distributed in the hope that it will be useful           |
// | but WITHOUT ANY WARRANTY; without even the implied warranty of        |
// | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the          |
// | GNU General Public License for more details.                          |
// +-----------------------------------------------------------------------+
// | Author: pFa                                                           |
// +-----------------------------------------------------------------------+
//
$mysqli = new mysqli("localhost","agf","agf","agf");
$ind = 'Costos Retail';
$mysqli->query("INSERT INTO tag_agf value (null, '" . $ind ."', '" . $ind ."', 'NO ESPECIFICA', 'XBRL', 1)");
$tag_agf = $mysqli->insert_id;
$str = ";;;;15000;22768;19948;32691;19606;25906;26844;40158;25077;30047;28029;40302;24929;32399;;;;;;";
$arr = explode("\n", $str);
//$emp = array(725, 726, 727, 728, 729, 730);//Ingresos Totales
$emp = array(6);//Ingresos Retail, SSS, Venta Retail / M2, % Margen Retail,Ingresos Financieros, Cartera Bruta (Colocaciones), Cartera Repactada MM$,
//$emp = array(731, 732, 727, 729, 730);//% Ventas con Tarjeta Credito de cada  Tiendas,

$s = 0;
$per = array(13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29, 30, 31, 32, 33, 34, 35);//  Ingresos Totales, Ingresos Retail, Venta Retail / M2, % Margen Retail, % Ventas con Tarjeta Credito de cada  Tiendas, Cartera Bruta (Colocaciones), Cartera Repactada MM$,

//$per = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29); // SSS,

for($i = 0; $i < count($arr); $i++){
	$arr[$i] = trim($arr[$i]);
	$arr[$i] = explode(";", $arr[$i]);
	for($j = 0; $j < count($arr[$i]); $j++){
		$arr[$i][$j] = "INSERT INTO valores (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `VALOR`, `DT_MODIFICACION`, `origen`) 
						VALUES (null, '" . $tag_agf . "', " . $emp[$i] . ", " . $per[$s++] . ", " . ($arr[$i][$j] == '' ? 0 : $arr[$i][$j]) . ", null, 1);";
		$mysqli->query($arr[$i][$j]);
	}
	$s = 0;
}	
$mysqli->close();
var_dump($arr);
