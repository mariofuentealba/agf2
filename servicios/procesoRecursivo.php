<?php

function manipulaZip($data, $log){
	fwrite($log, "ENTRE\r\n");
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


$dat = fopen("xbrl\\" . "DATA.txt", "r");
$re =  fopen("xbrl\\" . "DATARE.txt", "w");
$log = fopen("xbrl\\" . 'log.txt', 'a');
$log2 = fopen("C:\\xampp\\htdocs\\ProcesaXml2\\logZZZZZ.txt", "a");
fwrite($log2, print_r($argv, true) . "\r\n");
fclose($log2);

//$ruts = stdClass();

$ruts = array();
$data = explode(";", $data);


$xbrlResult = "";

for($i = 0; $i < count($data); $i++){
	$ruts[$data[$i]] = $data[$i];
}
$n = count($ruts);
fwrite($log, print_r($ruts, true) . "\r\n");
fwrite($log, "N = " . $n . "\r\n");

while(!feof($dat) && $n > 0){
	
	$xbrl = fgets($dat);
	
	$rut = explode("rut=", $xbrl);
	$rut = explode("&mm", $rut[1]);
	
	fwrite($log, "RUT" . $rut[0] . "\r\n");
	if(isset($ruts[$rut[0]])){
		$n--;
		fwrite($log, "N = " . $n . "\r\n");
		$xbrl = str_replace(" ", "%20", $xbrl);
		$xbrl = trim($xbrl);	
		fwrite($log, "-------------------------------------------------------\r\n");
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
			fwrite($log, "PASE\r\n");
	
			
			
			
			
			
		}
	}
	
	
	
}
fclose($dat);
fclose($re);

$dat =  fopen("xbrl\\" . "DATARE.txt", "r");
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
			fwrite($log, "-------------------------------------------------------\r\n");
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
fclose($log);

echo $xbrlResult;	

?>
