<?php

function manipulaZip($data, $log){
	fwrite($log, "manipulaZip\r\n");
	include_once("..\\pclzip-2-8-2\\pclzip.lib.php");
	fwrite($log, "Archivo a descomprimir :" . $data ."\r\n");
	$zip = new PclZip($data);
	
	if (($list = $zip->listContent()) == 0) {
		fwrite($log, "ERROR\r\n" );
		die("Error : ".$zip->errorInfo(true));
	}
	 
	for ($i=0; $i<sizeof($list); $i++) {
		for(reset($list[$i]); $key = key($list[$i]); next($list[$i])) {
				//echo "Archivo $i / [$key] = ".$list[$i][$key]."<br>";
		}
			//echo "<br>";
	}



	 
	if ($zip->extract(PCLZIP_OPT_PATH, str_replace(".zip", "", $data),
	PCLZIP_OPT_REMOVE_PATH, "install/release") == 0) {
			die("Error : ".$zip->errorInfo(true));
	}
	$data = str_replace(".zip", "", $data);
	$dataArch = explode("\\", $data);
	$datos = file_get_contents($data . "\\" . $dataArch[1] . ".xbrl");
	return $datos;
}

$data = $argv[1];
$periodo = $argv[2];

$log2 = fopen('xbrl\\log3.txt', 'a');
fwrite($log2, "$data\r\n");
fwrite($log2, "$periodo\r\n");
fclose($log2);


//$dat = fopen("xbrl\\" . "DATA.txt", "r");
$re =  fopen("xbrl\\" . "DATARE.txt", "w");
$log = fopen("xbrl\\" . 'log.txt', 'a');
$log2 = fopen("C:\\xampp\\htdocs\\ProcesaXml2\\xbrl\\logZZZZZ.txt", "a");
fwrite($log, "PARAMETROS DE ENTRADA ::" . print_r($argv, true) . "\r\n");
fclose($log2);

//$ruts = stdClass();

$ruts = array();
$data = explode(";", $data);


$xbrlResult = "";


$ruts = '<Tags periodo="' . $periodo . '">';
for($i = 0; $i < count($data); $i++){
	$ruts .= '<tag rut="' . $data[$i] . '" />';
}
$ruts .= '</Tags>';
$n = count($ruts);
fwrite($log, "RUT A PROCESAR :: " . print_r($ruts, true) . "\r\n");
fwrite($log, "CANTIDAD DE RUT A PROCESAR = " . $n . "\r\n");



try { 
	//$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
	$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
					
	
	$sql = "exec [dbo].[sp_xbrl_rescata_extraccion] ?";
	
	$sql2 = str_replace("'", "''", $sql);
	$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
	$stmtlog->execute();
	$stmt = $con->prepare($sql);				
	$stmt->bindParam(1, $ruts); 
	$stmt->execute();
	$logf = fopen('xbrl\\logXML.txt', 'a');
	$dataXML = $stmt->fetchAll();
	fwrite($logf, $ruts . "\r\n");
	fwrite($logf, "\r\nRETORNO [dbo].[sp_xbrl_rescata_extraccion]:" . print_r($dataXML, true) . "\r\n");
	fwrite($logf, "\r\nRUTS:: " . print_r($ruts, true) . "\r\n");
	fclose($logf);
	foreach($dataXML as $dat){
	
		$xbrl = $dat[0];
		$xbrl = str_replace("::", "&", $xbrl);
		$rut = explode("rut=", $xbrl);
		$rut = explode("&mm", $rut[1]);
		
		fwrite($log, "RUT" . $rut[0] . "\r\n");
		fwrite($log, "N = " . $n . "\r\n");
		$xbrl = str_replace(" ", "%20", $xbrl);
		$xbrl = trim($xbrl);	
		//fwrite($log, "-------------------------------------------------------\r\n");
		fwrite($log, "procesando: " . $xbrl ."\r\n");
		$lineas = file($xbrl);
		$i = 0;
		foreach ($lineas as $num_linea => $linea) {
			//echo "Línea #<b>{$num_línea}</b> : " . htmlspecialchars($línea) . "<br />\n";
			fwrite($log, "Línea #<b>{$num_linea}</b> : " . htmlspecialchars($linea) . "\r\n");
			$i++;
		}
		
		if($i < 2){
			$xbrl = str_replace(".zip", ".xbrl", $xbrl);
			fwrite($re, $xbrl . "\r\n");
			fwrite($log, "ERROR\r\n");
			/*$xbrl = explode("&", $xbrl);
			$xbrl = explode("=", $xbrl[5]);
			$xbrl = $xbrl[1];
			file_put_contents("xbrl\\" . $xbrl, $lineas);*/
		} else {
			//$xbrl = fgets($dat);
			fwrite($log, "CORRECTO\r\n");
			$xbrl = explode("&", $xbrl);
			$xbrl = explode("=", $xbrl[5]);
			$xbrl = $xbrl[1];
			fwrite($log, $xbrl ."\r\n");
			file_put_contents("xbrl\\" . $xbrl, $lineas)
			or die("<br />No se puede escribir el archivo local<br />");
			$xbrlResult .= manipulaZip("xbrl\\" . $xbrl, $log) . ";;;;;;;";
			//fwrite($log, "PASE\r\n");
	
			
			
			
			
			
		}
			
	}
	//fclose($dat);
	fclose($re);

	$dat =  fopen("xbrl\\" . "DATARE.txt", "r");
	$ruts = array();
	


	//$xbrlResult = "";

	for($i = 0; $i < count($data); $i++){
		$ruts[$data[$i]] = $data[$i];
	}
	
	$n = count($ruts);
	while(!feof($dat) && $n > 0){
		$xbrl = fgets($dat);
		if($xbrl != ""){
			$rut = explode("rut=", $xbrl);
			$rut = explode("&mm", $rut[1]);
			if(isset($ruts[$rut[0]])){
				$n--;
				fwrite($log, "N = " . $n . "\r\n");
				$xbrl = str_replace(" ", "%20", $xbrl);
				$xbrl = trim($xbrl);	
				
				fwrite($log, "procesando: " . $xbrl ."\r\n");
				
				$lineas = file($xbrl);
				$xbrl = explode("&", $xbrl);
				$xbrl = explode("=", $xbrl[5]);
				$xbrl = $xbrl[1];
				fwrite($log, "Se guarda en :" . $xbrl ."\r\n");
				//fwrite($log, $lineas ."\r\n");
				file_put_contents("xbrl\\" . $xbrl, $lineas);
				//fwrite($log, print_r($xbrl, true) ."\r\n");
				
				
				$xbrlResult .= file_get_contents("xbrl\\" . $xbrl) . ";;;;;;;";
				//or die("<br />No se puede escribir el archivo local<br />");
			}
		
		}
		
		
	}

	//fwrite($log, print_r($xbrlResult, true) . "\r\n");
	fclose($dat);
	

	echo $xbrlResult;	

				
} catch( PDOExecption $e ) {
	print "Error!: " . $e->getMessage() . "</br>";
	
} 





?>
