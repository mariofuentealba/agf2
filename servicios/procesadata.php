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

$mysqli->query("INSERT INTO tag_agf value (null, 'Margen Retail', 'Margen Retail', 'NO ESPECIFICA', 'MANUAL', 1)");



$tag_agf = $mysqli->insert_id;

$sql = "INSERT INTO formulas values (null, '" . $tag_agf . "', '-1', '-1', '-1', '-1', 'C1', '1', '2');";
			    $sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    				     
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    
			    $mysqli->query($sql);
	            $ultimo_id = $mysqli->insert_id;
			    
			    $sql = "INSERT INTO indices_financieros VALUES (null, '3', 4, 'Margen Retail', '..', '" . $ultimo_id . "', '..', '1000', '0', '..', 1);";
			    $sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			       				
			    $mysqli->query($sql);			    





$str = "25.7+0;28.9+0;27.2+0;33.0+0;29.6+0;31.4+0;28.9+0;32.7+0;28.7+0;29.9+0;26.2+0;30.8+0;24.9+0;30.2+0;30.2+0;31.6+0;28.5
20.8+0;27.2+0;27.4+0;28.4+0;27.0+0;28.7+0;28.7+0;28.3+0;27.5+0;29.8+0;25.5+0;27.7+0;25.7+0;29.6+0;24.7+0;28.3+0;27.1
22.2+0;26.5+0;20.4+0;28.3+0;25.2+0;29.4+0;24.8+0;29.0+0;26.5+0;31.7+0;25.1+0;27.9+0;23.9+0;26.9+0;23.4+0;29.6+0;26.1
0;0;0;0;13.8+0;37.3+0;-7.0+0;24.3+0;18.4+0;25.9+0;15.2+0;16.8+0;20.5+0;20.0+0;19.5+0;18.2+0;20.0
0;0;0;0;0;0;0;0;0;0;0;20.9+0;20.1+0;24.2+0;19.2+0;23.9+0;23.0
17.6+0;20.3+0;19.9+0;21.9+0;19.1+0;24.4+0;23.2+0;27.6+0;21.3+0;24.6+0;21.1+0;26.7+0;21.0+0;25.2+0;24.6+0;28.4+0;24.8";
$arr = explode("\n", $str);
$emp = array(719, 720, 715, 716, 717, 718);
$s = 0;
$per = array(13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29); 

for($i = 0; $i < count($arr); $i++){
	$arr[$i] = trim($arr[$i]);
	$arr[$i] = explode(";", $arr[$i]);
	for($j = 0; $j < count($arr[$i]); $j++){
		$arr[$i][$j] = "INSERT INTO valores (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `VALOR`, `DT_MODIFICACION`) VALUES (null, '" . $tag_agf . "', " . $emp[$i] . ", " . $per[$s++] . ", " . $arr[$i][$j] . ", null);";
		$mysqli->query($arr[$i][$j]);
	}
	$s = 0;
}
$mysqli->close();
var_dump($arr);

?>

		