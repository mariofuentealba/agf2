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

$mysqli->query("INSERT INTO tag_agf value (null, 'Ingresos Retail Anuales', 'Ingresos Retail Anuales', 'NO ESPECIFICA', 'MANUAL', 1)");



$tag_agf = $mysqli->insert_id;

$sql = "INSERT INTO formulas values (null, '" . $tag_agf . "', '-1', '-1', '-1', '-1', 1, 1, 1, 1, 1, 'C1', '1', '2', 'C.NN.1', 'no', 'no', 'no', 'no');";
			    $sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    				     
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    
			    $mysqli->query($sql);
	            $ultimo_id = $mysqli->insert_id;
			    
			    $sql = "INSERT INTO indices_financieros VALUES (null, '3', 4, 'Ingresos Retail Anuales', '..', '" . $ultimo_id . "', '..', '1000', '0', '..', 1);";
			    $sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			       				
			    $mysqli->query($sql);			    





$str = ";;;786818;798974;847160;875734;930042;968998;984151;1006992;1024120;1063265;1068734;1081053;1104669;1115540
;;;516536;528618;564679;590901;622719;649974;656930;671042;690773;731641;777464;824212;886075;906989
;;;485996;498056;532406;550387;569575;588341;590033;598094;612027;626328;633446;651772;673876;677447
;;;;;;;142131;149942;153483;162394;169882;172519;173802;182408;192350;199459
;;;;;;;;;;;;;;;293754;301723
;;;93793;95156;103494;108337;119763;126126;130372;138423;148088;154949;160765;163919;165403;166787";
$arr = explode("\n", $str);
$emp = array(731, 732, 727, 728, 729, 730);
$s = 0;
$per = array(13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29); 

for($i = 0; $i < count($arr); $i++){
	$arr[$i] = trim($arr[$i]);
	$arr[$i] = explode(";", $arr[$i]);
	for($j = 0; $j < count($arr[$i]); $j++){
		$arr[$i][$j] = "INSERT INTO valores (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `VALOR`, `DT_MODIFICACION`, `origen`) VALUES (null, '" . $tag_agf . "', " . $emp[$i] . ", " . $per[$s++] . ", " . $arr[$i][$j] . ", null, 1);";
		$mysqli->query($arr[$i][$j]);
	}
	$s = 0;
}
$mysqli->close();
var_dump($arr);

?>

		