<?php

$dat = fopen("DATA.txt", "r");
$re =  fopen("DATARE.txt", "w");
$log = fopen('log.txt', 'a');

while(!feof($dat)){
	$xbrl = fgets($dat);
	$xbrl = str_replace(" ", "%20", $xbrl);
	$xbrl = trim($xbrl);	
	fwrite($log, "-------------------------------------------------------\r\n");
	fwrite($log, "procesando: " . $xbrl ."\r\n");
	$líneas = file($xbrl);
	$i = 0;
	foreach ($líneas as $num_línea => $línea) {
	    //echo "Línea #<b>{$num_línea}</b> : " . htmlspecialchars($línea) . "<br />\n";
		$i++;
	}
	if($i < 2){
		$xbrl = str_replace(".zip", ".xbrl", $xbrl);
		fwrite($re, $xbrl . "\r\n");
		fwrite($log, "ERROR\r\n");
	} else {
		//$xbrl = fgets($dat);
		fwrite($log, "CORRECTO\r\n");
		$xbrl = explode("&", $xbrl);
		$xbrl = explode("=", $xbrl[5])[1];
		fwrite($log, $xbrl ."\r\n");
		file_put_contents($xbrl, $líneas)
		or die("<br />No se puede escribir el archivo local<br />");
	}
	
}
fclose($dat);
fclose($re);

$dat =  fopen("DATARE.txt", "r");

while(!feof($dat)){
	$xbrl = fgets($dat);
	$xbrl = str_replace(" ", "%20", $xbrl);
	$xbrl = trim($xbrl);	
	fwrite($log, "-------------------------------------------------------\r\n");
	fwrite($log, "procesando: " . $xbrl ."\r\n");
	
	$líneas = file($xbrl);
	$xbrl = explode("&", $xbrl);
	$xbrl = explode("=", $xbrl[5])[1];
	fwrite($log, $xbrl ."\r\n");
	file_put_contents($xbrl, $líneas)
	or die("<br />No se puede escribir el archivo local<br />");
}

fclose($dat);
fclose($log);
?>
