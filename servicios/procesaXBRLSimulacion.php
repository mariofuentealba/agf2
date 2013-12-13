<?php
$mysqli = new mysqli("localhost","agf","agf","agf");
$mysqli->autocommit(false);
if (!$mysqli->query('SET AUTOCOMMIT = 0')) {
    echo "Falló la consulta: (" . $mysqli->errno . ") " . $mysqli->error;
	exit(0);
}
$emp = array(1, 2, 3, 4, 5, 6);
$s = 0;
$per = array(13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29, 30, 31, 32, 33, 34, 35); 

$str = file_get_contents("data.txt");
$arr = explode("\n", $str);
$n = count($arr);
echo "N = " . $n . "<br />";
for($i = 0; $i < 95; $i++){
	
	
	$mysqli->query("INSERT INTO tag_agf value (null, '" . $arr[$i] ."', '" . $arr[$i++] ."', 'NO ESPECIFICA', 'XBRL', 1)");
	$tag_agf = $mysqli->insert_id;
	$stop = 0;
	$s = 0;
	$e = 0;
	$line = "";
	while($line != "END"){
		echo $arr[$i]."<br />";
		$arr[$i] = trim($arr[$i]);
		$line = $arr[$i];
		$arr[$i] = explode(";", $arr[$i]);
		
		for($j = 0; $j < count($arr[$i]); $j++){
			$arr[$i][$j] = "INSERT INTO valores (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `VALOR`, `DT_MODIFICACION`, `origen`) 
							VALUES (null, '" . $tag_agf . "', " . $emp[$e] . ", " . $per[$s++] . ", " . ($arr[$i][$j] == '' ? 0 : $arr[$i][$j]) . ", null, 1);";
			$mysqli->query($arr[$i][$j]);
		}
		$e++;
		$i++;
		$s = 0;
		/*if($i == 95){
			break;
		}
*/		
	}
	//exit(0);
	echo "I = " . $i-- . "<br />";
}
exit();
if (!$mysqli->commit()) {
    print("Falló la consignación de la transacción\n");
    exit();
}

$mysqli->close();

