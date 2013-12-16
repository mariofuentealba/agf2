<?php
include "modelo.php";

$m = new Modelo;
$mysqli = new mysqli("localhost","agf","agf","agf");
/*$mysqli->autocommit(false);
if (!$mysqli->query('SET AUTOCOMMIT = 0')) {
    echo "Falló la consulta: (" . $mysqli->errno . ") " . $mysqli->error;
	exit(0);
}*/
$emp = array(1, 2, 3, 4, 5, 6);
$s = 0;
$per = array(13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29, 30, 31, 32, 33, 34, 35); 

$str = file_get_contents("data.txt");
$arr = explode("\n", $str);
$n = count($arr);
echo "N = " . $n . "<br />";
for($i = 0; $i < $n; $i++){
	
	$ind = trim($arr[$i++]);
	$mysqli->query("INSERT INTO tag_agf value (null, '" . $ind ."', '" . $ind ."', 'NO ESPECIFICA', 'XBRL', 1)");
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
							VALUES (null, '" . $tag_agf . "', " . $emp[$e] . ", " . $per[$s] . ", " . ($arr[$i][$j] == '' ? 0 : $arr[$i][$j]) . ", null, 1);";
			$sql2 = str_replace("'", "''", $arr[$i][$j]);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($arr[$i][$j]);
			
			
			
			$arr[$i][$j] = "INSERT INTO valores (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `VALOR`, `DT_MODIFICACION`, `origen`, tipo) 
			SELECT 
				null, '" . $tag_agf . "', " . $emp[$e] . ", " . $per[$s] . ", 
				SUM(valor), null, 1, 'ACUMULADO'
			FROM valores x
			WHERE 	tipo = 'TRIMESTRAL'			
					AND x.id_periodo in (SELECT r.id_periodo
									FROM periodos r, periodos p
									WHERE r.ano = p.ano
											  AND r.mes <= p.mes
											  AND r.oa = 1
											  AND p.id_periodo = " . $per[$s] . ")
					AND id_tag_agf = " . $tag_agf . "
					AND id_empresa = " . $emp[$e] . "
					;";
			$sql2 = str_replace("'", "''", $arr[$i][$j]);
			//echo "query 2<br />";
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($arr[$i][$j]);
			
			$val = $mysqli->insert_id;
			
			$sql = "SELECT 
				id_valor
			FROM valores x
			WHERE tipo = 'TRIMESTRAL'			
					AND x.id_periodo in (SELECT r.id_periodo
									FROM periodos r, periodos p
									WHERE r.ano = p.ano
											  AND r.mes <= p.mes
											  AND r.oa = 1
											  AND p.id_periodo = " . $per[$s] . ")
					AND id_tag_agf = " . $tag_agf . "
					AND id_empresa = " . $emp[$e] . ";";
			$sql2 = str_replace("'", "''", $sql);
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");		
			$result = $mysqli->query($sql);		
			$colores = "";
			while($row = $result->fetch_array(MYSQLI_NUM)){
				$colores .= $row[0] . "|";
			}
			
			$sql = "UPDATE valores
						SET hist_formula = '" . substr($colores, 0, -1) . "'
					WHERE id_valor = " .$val . ";";
			$sql2 = str_replace("'", "''", $sql);
			//echo "query 2<br />";
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($sql);
			
			
			
			$arr[$i][$j] = "INSERT INTO valores (`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `VALOR`, `DT_MODIFICACION`, `origen`, tipo) 
			SELECT null, '" . $tag_agf . "', " . $emp[$e] . ", " . $per[$s] . ", 
				SUM(valor), null, 1, 'ANUAL'
			FROM valores 
			WHERE tipo = 'TRIMESTRAL'				
				AND id_periodo in (SELECT r.id_periodo
									FROM periodos r
									WHERE r.oa = 1
										AND r.orden in (" . ($s + 1) . ", " . ($s + 1) . " - 1, " . ($s + 1) . " - 2, " . ($s + 1) . " - 3)) 
				AND id_tag_agf = " . $tag_agf . "
				AND id_empresa = " . $emp[$e] . "						
		GROUP BY id_tag_agf, id_empresa, origen				
					;";
					
			$sql2 = str_replace("'", "''", $arr[$i][$j]);
			//echo "query 2<br />";
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($arr[$i][$j]);
			
			$val = $mysqli->insert_id;
			
			$sql = "SELECT 
				id_valor
			FROM valores 
			WHERE tipo = 'TRIMESTRAL'				
				AND id_periodo in (SELECT r.id_periodo
									FROM periodos r
									WHERE r.oa = 1
										AND r.orden in (" . ($s + 1) . ", " . ($s + 1) . " - 1, " . ($s + 1) . " - 2, " . (($s++) + 1) . " - 3)) 
				AND id_tag_agf = " . $tag_agf . "
				AND id_empresa = " . $emp[$e] . "						
						
					;";
			
			$sql2 = str_replace("'", "''", $sql);
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$result = $mysqli->query($sql);		
			
			$colores = "";
			while($row = $result->fetch_array(MYSQLI_NUM)){
				$colores .= $row[0] . "|";
			}
			
			$sql = "UPDATE valores
						SET hist_formula = '" . substr($colores, 0, -1) . "'
					WHERE id_valor = " .$val . ";";
			$sql2 = str_replace("'", "''", $sql);
			//echo "query 2<br />";
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($sql2);
			$mysqli->query($sql);
			
			
			
			
		}
		
		
		
		
		$e++;
		$i++;
		if($e == 6){
			$e = 0;
		}
		
		$s = 0;
		
	}
	
//	$m->insertarIndicesFinancieros(array($ind, 0, 0, 0, 0, 0, 0, 0, 0, 2), 'indices_financieros', array(1, 2, 3, 4, 5, 6), 0, array('C1_'), array("" . $tag_agf . ";-1;-1;-1;-1;C;0;0;0;0;C.1.NN;no;no;no;no"));
	
	
	//exit();
	echo "I = " . $i-- . "<br />";
}
exit();
if (!$mysqli->commit()) {
    print("Falló la consignación de la transacción\n");
    exit();
}

$mysqli->close();

