<?php

error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
date_default_timezone_set('Europe/London');

define('EOL',(PHP_SAPI == 'cli') ? PHP_EOL : '<br />');

date_default_timezone_set('Europe/London');
/*//print_r($_REQUEST);
header("Content-Type: application/vnd.ms-excel");

header("Expires: 0");

header("Cache-Control: must-revalidate, post-check=0, pre-check=0");

header("content-disposition: attachment;filename=NOMBRE.xls");
echo $_REQUEST["nombre"];*/

require_once '../PHPExcel/Classes/PHPExcel.php';
$logs = array();
//agregar registro vacio en el flex
$fff = "@@@*@+@*;;;;;;;;;;;;;;;;;;
;3/2009;6/2009;9/2009;12/2009;3/2010;6/2010;9/2010;12/2010;3/2011;6/2011;9/2011;12/2011;3/2012;6/2012;9/2012;12/2012;3/2013;6/2013
Falabella (Chile+CMR) ;233542;254770;246159;313263;239524;298623;275302;374579;282887;323310;302521;395808;332573;343868;321947;419376;340662;366735
Cencosud (Paris+Mas) ;167280;177713;168046;232725;162751;206590;190009;256034;197796;227685;211603;276250;243087;268116;260445;338153;259031;283857
Ripley Chile;153558;163183;149899;204105;146943;185685;168268;230886;171694;194699;175379;240846;181959;196529;189933;262762;185161;201353
ABCDIN;0;0;0;0;46561;60811;66874;68830;60297;71891;59426;83423;68002;72012;71332;95113;75063;91066
La Polar Chile;0;0;0;0;0;0;0;0;0;0;0;104093;74686;85098;80213;111933;82991;97676
Hites;29510;35315;32630;48906;32223;45917;41370;64401;42968;54256;53014;77275;52444;62514;58831;80041;54081;66458*@+@*;;;;;;;;;;;;;;;;;;
;3/2009;6/2009;9/2009;12/2009;3/2010;6/2010;9/2010;12/2010;3/2011;6/2011;9/2011;12/2011;3/2012;6/2012;9/2012;12/2012;3/2013;6/2013
Falabella (Chile+CMR) ;7.9;7.2;7.5;6.4;7.4;6.5;6.7;5.8;6.6;6;5.7;5.1;6.3;5.5;5.5;5.2;6.3;5.5
Cencosud (Paris+Mas) ;5.7;5;5.2;4.8;5.1;4.5;4.6;4;4.6;4.2;4;3.6;4.6;4.3;4.4;4.2;4.8;4.3
Ripley Chile;5.2;4.6;4.6;4.2;4.6;4;4.1;3.6;4;3.6;3.3;3.1;3.5;3.1;3.2;3.3;3.4;3
ABCDIN;0;0;0;0;1.4;1.3;1.6;1.1;1.4;1.3;1.1;1.1;1.3;1.2;1.2;1.2;1.4;1.4
La Polar Chile;0;0;0;0;0;0;0;0;0;0;0;1.3;1.4;1.4;1.4;1.4;1.5;1.5
Hites;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1;1*@+@*;;;;;;;;;;;;;;;;;
;6/2009;9/2009;12/2009;3/2010;6/2010;9/2010;12/2010;3/2011;6/2011;9/2011;12/2011;3/2012;6/2012;9/2012;12/2012;3/2013;6/2013
Falabella (Chile+CMR) ;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;Infinity;-131.4;60.699999999999996;-25.199999999999996;207.29999999999998;-151.1;NaN
Hites;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;NaN;87.9";

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
			if(explode("/", $arr2[$i][1])[1] != $year){
				$arr2[$i][0] = explode("/", $arr2[$i][1])[1];
				$year = explode("/", $arr2[$i][1])[1];
			}
			switch(explode("/", $arr2[$i][1])[0]){
				case 3:
					$arr2[$i][1] = 'Q1';
				break;
				case 6:
					$arr2[$i][1] = 'Q2';
				break;
				case 9:
					$arr2[$i][1] = 'Q3';
				break;
				case 12:
					$arr2[$i][1] = 'Q4';
				break;
			}
			
			
		}
	//	print_r($arr2);
		$str .= '<br/><br/><br/><table>';
		for($i = 0; $i < count($arr2); $i++){
			$str .= "<tr>";
			for($j = 0; $j < count($arr2[$i]); $j++){
				$str .= "<td>" . $arr2[$i][$j] . "</td>";
			}
			$str .= "</tr>";	
		}
		$str .= '</table>';
	//	print_r($arr2);
		$arrEmpresas[$z - 1] = count($arr2[0]) - 2;
		$arrPeriodos[$z] = $arrPeriodos[$z - 1] + count($arr2) + 2;
	//	print_r($arrEmpresas);
	// 	print_r($arrPeriodos);
		
		$arr3 = array_merge($arr3, array(array()), array(array()), $arr2);
		/*for($c = count($arr2); $c < 20; $c++){
			$arr3 = array_merge($arr3, array(array()));//137, 54
		}*/
		//$arr3 = array_merge($arr3, $arr2);
	}
	/*print_r($arr3);
	exit(0);*/
	$objWorksheet[$x - 1]->fromArray($arr3);
	$desp = 2;//count($arr2);
	$arrNomGraf = array('', 'Referente ', 'Variacion ');
	/*echo count($ff);
	exit(0);*/
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
		
		/*print_r($arrPeriodos);
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

$mysqli = new mysqli("localhost","agf","agf","agf");

for($i = 0; $i < count($arrEmpresas); $i++){}

$sql = "SELECT `RSO`, color
			FROM empresas
			WHERE RSO in ()"

/*
print_r($logs, true);
exit(0);
*/
// Save Excel 2007 file
//echo date('H:i:s') , " Write to Excel2007 format" , EOL;
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->setIncludeCharts(TRUE);
$objWriter->save(str_replace('.php', '.xlsx', __FILE__), );
//echo date('H:i:s') , " File written to " , str_replace('.php', '.xlsx', pathinfo(__FILE__, PATHINFO_BASENAME)) , EOL;


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