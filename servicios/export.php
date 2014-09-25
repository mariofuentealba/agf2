<?php

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
date_default_timezone_set('Europe/London');

define('EOL',(PHP_SAPI == 'cli') ? PHP_EOL : '<br />');

date_default_timezone_set('Europe/London');
/*////print_r($_REQUEST);
header("Content-Type: application/vnd.ms-excel");

header("Expires: 0");

header("Cache-Control: must-revalidate, post-check=0, pre-check=0");

header("content-disposition: attachment;filename=NOMBRE.xls");
echo $_REQUEST["nombre"];*/

require_once '../PHPExcel/Classes/PHPExcel.php';
$logs = array();
//agregar registro vacio en el flex
$fff = "@@@*@+@*;;;;;;;;;;;;;;;;;;;;;;;;
;1Q09;2Q09;3Q09;4Q09;1Q10;2Q10;3Q10;4Q10;1Q11;2Q11;3Q11;4Q11;1Q12;2Q12;3Q12;4Q12;1Q13;2Q13;3Q13;4Q13;1Q14;2Q14;3Q14;4Q14
S.A.C.I. FALABELLA;0;0;0;0;0;783647816125;787236124750;822934682125;853801697625;874562912500;913484216875;970511942375;982906820875;1031856049125;1032494135750;1079902459125;1096262579375;1122849970875;1144362114375;1236914122750;1252390195250;0;0;0
EMPRESAS HITES S.A.;0;0;0;0;0;0;19247309250;21673467375;21684726375;21726833750;22994779250;26255336625;24910362000;25031730000;24994180375;30246028500;27980370875;28251052250;28844373500;31968005375;31098494875;0;0;0*@+@*;;;;;;;;;;;;;;;;;;;;;;;;
;1Q09;2Q09;3Q09;4Q09;1Q10;2Q10;3Q10;4Q10;1Q11;2Q11;3Q11;4Q11;1Q12;2Q12;3Q12;4Q12;1Q13;2Q13;3Q13;4Q13;1Q14;2Q14;3Q14;4Q14
S.A.C.I. FALABELLA;0;0;0;0;0;0;0;7.2;0;0;8.2;0;8.4;8.5;8.3;8.2;8.7;8.8;8.9;7.1;7.3;0;0;0
EMPRESAS HITES S.A.;0;0;0;0;0;0;0;0.2;0;0;0.2;0;0.2;0.2;0.2;0.2;0.2;0.2;0.2;0.2;0.2;0;0;0*@+@*;;;;;;;;;;;;;;;;;;;;;;;
;2Q09;3Q09;4Q09;1Q10;2Q10;3Q10;4Q10;1Q11;2Q11;3Q11;4Q11;1Q12;2Q12;3Q12;4Q12;1Q13;2Q13;3Q13;4Q13;1Q14;2Q14;3Q14;4Q14
S.A.C.I. FALABELLA;0;0;0;0;0;0.5;4.5;3.8;2.4;4.5;6.2;1.3;5;0.1;4.6;1.5;2.4;1.9;8.1;1.3;0;0;0
EMPRESAS HITES S.A.;0;0;0;0;0;0;12.6;0.1;0.2;5.8;14.2;-5.1;0.5;-0.2;21;-7.5;1;2.1;10.8;-2.7;0;0;0";

$letras = array('C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
$tipoGrafico = array('', 'Referente', 'Variación');
$graf = ";Ingresos Totales";


/*echo $fff;
echo "\n\nEL REQUEST\n\n";
*/
$fff = explode("@@@", $fff);
$graf = explode(";", $graf);

/*echo trim($_REQUEST["indices"]);
exit(0);*/

$fff = explode("@@@", trim($_REQUEST["infGrafico"]));
$graf = explode(";", trim($_REQUEST["indices"]));



$objPHPExcel = new PHPExcel();
$objWorksheet = array();

for($x = 1; $x < count($fff); $x++){
	
	$graf[$x] = str_replace('/', '', $graf[$x]);
	$ff = explode("*@+@*", $fff[$x]);
	$objWorksheet[$x - 1] = $objPHPExcel->getActiveSheet();
	$objWorksheet[$x - 1]->setTitle('' . (str_replace(' ', '', $graf[$x])) . '');
	$arr3 = array();
	$arrEmpresas = array();
	$arrPeriodos = array(2);
	for($z = 1; $z < count($ff); $z++){
		//$desp = 0;
		$f = explode("\n", $ff[$z]);
		$arr = array();
		for($i = 0; $i < count($f); $i++){
			$o = explode(";", $f[$i]);
			$arr[$i] = $o;
		}

		$str = '<table>';
		
		$arr2 = array();

		for($i = 0; $i < count($arr[0]); $i++){
			$str .= "<tr>";
			for($j = 0; $j < count($arr); $j++){
				$str .= "<td>" . $arr[$j][$i] . "</td>";
				$arr2[$i][$j] = $arr[$j][$i];
			}
			$str .= "</tr>";	
		}
		$str .= '</table>';

	$year = '';

		for($i = 1; $i < count($arr2); $i ++){
			if("20" . explode("Q", $arr2[$i][1])[1] != $year){
				$arr2[$i][0] = "20" .explode("Q", $arr2[$i][1])[1];
				$year = "20" . explode("Q", $arr2[$i][1])[1];
			}
			
			
			
		}	
		

		
		//print_r($arr);
		$str .= '<br/><br/><br/><table>';
		for($i = 0; $i < count($arr2); $i++){
			$str .= "<tr>";
			for($j = 0; $j < count($arr2[$i]); $j++){
				$str .= "<td>" . $arr2[$i][$j] . "</td>";
			}
			$str .= "</tr>";	
		}
		$str .= '</table>';
		//print_r($arr2);
		$arrEmpresas[$z - 1] = count($arr2[0]) - 2;
		$arrPeriodos[$z] = $arrPeriodos[$z - 1] + count($arr2) + 2;
		//print_r($arrEmpresas);
		//exit();
		//print_r($arrPeriodos);
		
		$arr3 = array_merge($arr3, array(array()), array(array()), $arr2);
		/*for($c = count($arr2); $c < 20; $c++){
			$arr3 = array_merge($arr3, array(array()));//137, 54
		}*/
		//$arr3 = array_merge($arr3, $arr2);
	}
	//print_r($arr3);
	//exit(0);
	$objWorksheet[$x - 1]->fromArray($arr3);
	$desp = 2;//count($arr2);
	$arrNomGraf = array('', 'Referente ', 'Variacion ');

	//exit(0);
	//$arrPeriodos = array(2, 2, 24, 46);
	for($z = 1; $z < count($ff); $z++){
	
		$logs[$z - 1] = $desp;
		
		$dataseriesLabels = array();
		for($i = 0; $i < $arrEmpresas[$z - 1]; $i++){
			$empresa = new PHPExcel_Chart_DataSeriesValues('String', '' . str_replace(' ', '', $graf[$x]) . '!$' . $letras[$i] . '$' . (3), NULL, 1);	//	'Budget'
			$dataseriesLabels[$i] = $empresa;
		}
		
		$xAxisTickValues = array(
			new PHPExcel_Chart_DataSeriesValues('String', '' .str_replace(' ', '', $graf[$x]) . '!$A$' . (2 + $arrPeriodos[$z - 1]) .':$B$' . ($arrPeriodos[$z] - 2), NULL, 12),	//	Q1 to Q4 for 2010 to 2012
		);
		
		/*//print_r($arrPeriodos);
		exit(0);*/
		
		$dataSeriesValues = array();
		for($i = 0; $i < $arrEmpresas[$z - 1]; $i++){
			$valor = new PHPExcel_Chart_DataSeriesValues('Number', '' . str_replace(' ', '', $graf[$x]) . '!$' . $letras[$i] . '$' . (2 + $arrPeriodos[$z - 1]) . ':$' . $letras[$i] . '$' . ($arrPeriodos[$z] - 2), NULL, 12);
			$dataSeriesValues[$i] = $valor;
		}
		

		$series = new PHPExcel_Chart_DataSeries(
			PHPExcel_Chart_DataSeries::TYPE_BARCHART,		// plotType
			PHPExcel_Chart_DataSeries::GROUPING_CLUSTERED,	// plotGrouping
			range(0, count($dataSeriesValues)-1),			// plotOrder
			$dataseriesLabels,								// plotLabel
			$xAxisTickValues,								// plotCategory
			$dataSeriesValues								// plotValues
		);
		
		$series->setPlotDirection(PHPExcel_Chart_DataSeries::DIRECTION_COL);

		//	Set the series in the plot area
		$plotarea = new PHPExcel_Chart_PlotArea(NULL, array($series));
		//	Set the chart legend
		$legend = new PHPExcel_Chart_Legend(PHPExcel_Chart_Legend::POSITION_BOTTOM, NULL, false);

		$title = new PHPExcel_Chart_Title(/*str_replace(' ', '', */$arrNomGraf[$z - 1] . $graf[$x]/*)*/);
		$xAxisLabel = new PHPExcel_Chart_Title('Periodo Financiero');
		
		$yAxisLabel = new PHPExcel_Chart_Title($graf[$x]);


		//	Create the chart
		$chart = new PHPExcel_Chart(
			'chart1',		// name
			$title,			// title
			$legend,		// legend
			$plotarea,		// plotArea
			true,			// plotVisibleOnly
			0,				// displayBlanksAs
			$xAxisLabel,	// xAxisLabel
			$yAxisLabel		// yAxisLabel
		);
		$dat = array(0, 25, 50);

		//	Set the position where the chart should appear in the worksheet
		$chart->setTopLeftPosition('J' . (2 + $dat[$z - 1]));
		$chart->setBottomRightPosition('T' . (20 + $dat[$z - 1]));
	//	Add the chart to the worksheet
		$objWorksheet[$x - 1]->addChart($chart);
		$desp += count($arr2) + 2;
	}
	
	

	
	if($x + 1 < count($fff)){
		$objPHPExcel->createSheet();
		$objPHPExcel->setActiveSheetIndex($x);
	}
	
}

//$mysqli = new mysqli("localhost","agf","agf","agf");
$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 



$parametro = "";
for($i = 2; $i < count($arr2[0]); $i++){
	$parametro .= "'" . $arr2[0][$i] . "',"; 

}
$parametro = substr($parametro, 0, -1);


/*
$sql = "SELECT `RSO`, color, id_empresa
			FROM empresas
			WHERE RSO in (" . $parametro . ")
order by 3";*/


$sql = "SELECT RSO, color, id_empresa
			FROM empresas
			WHERE RSO in (" . $parametro . ")
order by 3";



$sql2 = str_replace("'", "''", $sql);
$stmt = $con->prepare("INSERT INTO log values ('" . $sql2 . "');");
$stmt->execute();

$stmt = $con->prepare($sql);
$stmt->execute();

//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");	
//$result = $mysqli->query($sql);
$colores = array();
//while($row = $result->fetch_array(MYSQLI_NUM)){
while($row = $stmt->fetch()){
	$colores[count($colores)] = $row[1];

}
//print_r($row);


// Save Excel 2007 file
//echo date('H:i:s') , " Write to Excel2007 format" , EOL;
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->setIncludeCharts(TRUE);
$objWriter->save(str_replace('.php', '.xlsx', __FILE__), $colores);
//echo date('H:i:s') , " File written to " , str_replace('.php', '.xlsx', pathinfo(__FILE__, PATHINFO_BASENAME)) , EOL;
//exit(0);

// Echo memory peak usage
//echo date('H:i:s') , " Peak memory usage: " , (memory_get_peak_usage(true) / 1024 / 1024) , " MB" , EOL;

// Echo done
//echo date('H:i:s') , " Done writing file" , EOL;
//echo 'File has been created in ' , getcwd() , EOL;
//$enlace = $path_a_tu_doc."/".$id;

header ("Content-Disposition: attachment; filename=export.xlsx ");
header ("Content-Type: application/octet-stream");
header ("Content-Length: ".filesize("export.xlsx"));
readfile("export.xlsx");


?>