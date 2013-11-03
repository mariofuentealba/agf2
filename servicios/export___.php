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
$ff = explode("\n", trim($_REQUEST["nombre"]));
$graf = explode("\n", trim($_REQUEST["graf"]));
//agregar registro vacio en el flex
$ff = "@@@
;;;;;;;;;;;;;;;;;
;3/2009;6/2009;9/2009;12/2009;3/2010;6/2010;9/2010;12/2010;3/2011;6/2011;9/2011;12/2011;3/2012;6/2012;9/2012;12/2012;3/2013
Falabella (Chile+CMR) ;233542;254770;246159;313263;239524;298623;275302;374579;282887;323310;302521;395808;320630;333045;321947;419376;340662
Cencosud (Paris+Mas) ;167280;177713;168046;232725;162751;206590;190009;256034;197796;227685;211603;276250;243087;268116;260445;338153;259031
Ripley Chile;153558;163183;149899;204105;146943;185685;168268;230886;171694;194699;175379;240846;181959;196529;189933;262762;185161
ABCDIN;0;0;0;0;46561;60811;66874;68830;60297;71891;59426;83423;68002;72012;71332;95113;75063
La Polar Chile;0;0;0;0;0;0;0;0;0;0;0;104093;74686;85098;80213;111933;82991
Hites;29510;35315;32630;48906;32223;45917;41370;64401;42968;54256;53014;77275;52444;62514;58831;80041;54081";



/*$ff = explode("@@@\n", trim($_REQUEST["nombre"]));
$graf = explode("\n", trim($_REQUEST["graf"]));
*/
$ff = explode("@@@\n", $ff);
$graf = explode("\n", $graf);

//for($x = 0; $x < count($ff); $x++){
	$arr = array();
	$f = explode("\n", $ff[$x]);
	for($i = 0; $i < count($f); $i++){
		$o = explode(";", $f[$i]);
		$arr[$i] = $o;
	}




	$str = '<table>';

	/*
	for($i = 0; $i < count($arr); $i++){
		$str .= "<tr>";
		for($j = 0; $j < count($arr[$i]); $j++){
			$str .= "<td>" . $arr[$i][$j] . "</td>";
		}
		$str .= "</tr>";	
	}
	$str .= '</table>';


	$str .= '<br/><br/><br/><table>';*/


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

	$str .= '<br/><br/><br/><table>';
	for($i = 0; $i < count($arr2); $i++){
		$str .= "<tr>";
		for($j = 0; $j < count($arr2[$i]); $j++){
			$str .= "<td>" . $arr2[$i][$j] . "</td>";
		}
		$str .= "</tr>";	
	}
	$str .= '</table>';


	echo $str;
exit(0);

	$objPHPExcel = new PHPExcel();
	$objWorksheet = $objPHPExcel->getActiveSheet();
	$objWorksheet->fromArray($arr2);

	//	Set the Labels for each data series we want to plot
	//		Datatype
	//		Cell reference for data
	//		Format Code
	//		Number of datapoints in series
	//		Data values
	//		Data Marker
	$dataseriesLabels = array(
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$C$1', NULL, 1),	//	'Budget'
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$D$1', NULL, 1),	//	'Forecast'
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$E$1', NULL, 1),	//	'Actual'
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$F$1', NULL, 1),	//	'Actual'
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$G$1', NULL, 1),	//	'Actual'
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$H$1', NULL, 1),	//	'Actual'
	);
	//	Set the X-Axis Labels
	//		Datatype
	//		Cell reference for data
	//		Format Code
	//		Number of datapoints in series
	//		Data values
	//		Data Marker
	$xAxisTickValues = array(
		new PHPExcel_Chart_DataSeriesValues('String', 'Worksheet!$A$2:$B$13', NULL, 12),	//	Q1 to Q4 for 2010 to 2012
	);
	//	Set the Data values for each data series we want to plot
	//		Datatype
	//		Cell reference for data
	//		Format Code
	//		Number of datapoints in series
	//		Data values
	//		Data Marker
	$dataSeriesValues = array(
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$C$2:$C$13', NULL, 12),
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$D$2:$D$13', NULL, 12),
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$E$2:$E$13', NULL, 12),
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$F$2:$F$13', NULL, 12),
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$G$2:$G$13', NULL, 12),
		new PHPExcel_Chart_DataSeriesValues('Number', 'Worksheet!$H$2:$H$13', NULL, 12),
	);

	//	Build the dataseries
	$series = new PHPExcel_Chart_DataSeries(
		PHPExcel_Chart_DataSeries::TYPE_BARCHART,		// plotType
		PHPExcel_Chart_DataSeries::GROUPING_CLUSTERED,	// plotGrouping
		range(0, count($dataSeriesValues)-1),			// plotOrder
		$dataseriesLabels,								// plotLabel
		$xAxisTickValues,								// plotCategory
		$dataSeriesValues								// plotValues
	);
	//	Set additional dataseries parameters
	//		Make it a vertical column rather than a horizontal bar graph
	$series->setPlotDirection(PHPExcel_Chart_DataSeries::DIRECTION_COL);

	//	Set the series in the plot area
	$plotarea = new PHPExcel_Chart_PlotArea(NULL, array($series));
	//	Set the chart legend
	$legend = new PHPExcel_Chart_Legend(PHPExcel_Chart_Legend::POSITION_BOTTOM, NULL, false);

	$title = new PHPExcel_Chart_Title($graf);
	$xAxisLabel = new PHPExcel_Chart_Title('Periodo Financiero');
	$yAxisLabel = new PHPExcel_Chart_Title('Value ($k)');


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

	//	Set the position where the chart should appear in the worksheet
	$chart->setTopLeftPosition('G2');
	$chart->setBottomRightPosition('P20');

	//	Add the chart to the worksheet
	$objWorksheet->addChart($chart);

//}



// Save Excel 2007 file
//echo date('H:i:s') , " Write to Excel2007 format" , EOL;
$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->setIncludeCharts(TRUE);
$objWriter->save(str_replace('.php', '.xlsx', __FILE__));
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