<?php
$i = $argv[1];
$j = $argv[2];
$ii = $argv[3];
$jj = $argv[4];
$per = array('03', '06', '09', '12');
$anio = array(2013);

if($j < 0){
	exec("c:\\xampp\\php\\php.exe recursivoProceso.php");
	//exit;
}


$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/novedades_envio_sa_ifrs.php?mm_ifrs=" . $per[$j] . "&aa_ifrs=" . $anio[$i] . "";
$ArchivoLocal = "DATA" . $per[$j] . "" . $anio[$i] . ".txt";
$useragent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1";
$ch = curl_init();
// set user agent
curl_setopt($ch, CURLOPT_USERAGENT, $useragent);
curl_setopt ($ch, CURLOPT_URL, $ArchivoRemoto);
curl_setopt ($ch, CURLOPT_HEADER, 0);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
$datos = curl_exec ($ch);
curl_close ($ch);
$f = fopen("DATA" . $per[$j] . "" . $anio[$i] . ".txt", 'a');
$resp = fopen("DATA.txt", 'a');
$datos = explode("\n", $datos);
for($s = 0; $s < count($datos); $s++){
	if(preg_match_all('/ *<table.*/', $datos[$s], $arr)){	
		break;
	}
}
echo --$s . " de " . count($datos) . "\n";
$nn = count($datos);
$log = fopen('log.txt', 'a');
fwrite($log, count($datos) . "-------------------------------------------------------\r\n");
//fwrite($resp, "-------------------------------------------------------\r\n");
for(; $s < $nn; $s++){	
	print_r($datos[$s]);
	if(preg_match_all('/ *<\/table.*/', $datos[$s], $arr)){	
		echo "salida: " . $s . "\n";
		break;
	}
	if(preg_match_all('/ *<td><a href=\'.*/', $datos[$s], $arr)){
		print_r($arr);
		//fwrite($log, $datos[$s] . "\r\n");
		$bufer = str_replace("<td><a href='", "", $datos[$s]);
		$bufer = trim($bufer);
		$bufer = explode("'>", $bufer);
		$bufer = $bufer[0];
		$bufer2 = explode("&", $bufer);
		
		$bufer = array(explode("=", $bufer2[3])[1], explode("=", $bufer2[9])[1], explode("=", $bufer2[10])[1], explode("=", $bufer2[11])[1]);
		$url = "http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?auth=&send=&rut=" . $bufer[0] . "&mm=" . $bufer[1] . "&aa=" . $bufer[2] . "&archivo=" . $bufer[0] . "_" . $bufer[2] . $bufer[1] . "_" . $bufer[3] . ".zip&desc_archivo=Estados financieros (XBRL)&tipo_archivo=XBRL";
	
		fwrite($f, $url . "\r\n");
		fwrite($resp, $url . "\r\n");
		
		
	/*	$url = "http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?auth=&send=&rut=" . $bufer[0] . "&mm=" . $bufer[1] . "&aa=" . $bufer[2] . "&archivo=" . $bufer[0] . "_" . $bufer[2] . $bufer[1] . "_" . $bufer[3] . ".xbrl&desc_archivo=Estados financieros (XBRL)&tipo_archivo=XBRL";
	
		fwrite($f, $url . "\r\n");
		fwrite($resp, $url . "\r\n");*/
		
		
		for(; $s < $nn; $s++){
			if(preg_match_all('/ *<\/tr>.*/', $datos[$s], $arr)){
				break;
			}
		}
	} 	
	
	
	
}
fclose($f);
fclose($resp);




echo "El archivo [$ArchivoRemoto] fue copiado a [$ArchivoLocal]\n";
sleep(5);
if($j > -1){
	exec("c:\\AppServ\\php\\php.exe recursivo.php " . $i . " " . ($j - 1). " " . $ii . " " . $jj);
	//exec("c:\\xampp\\php\\php.exe recursivo.php " . $i . " " . ($j - 1). " " . $ii . " " . $jj);
} else {
	/*$proceso = fopen($ArchivoLocal, "r");
	$info = array();
	while(!feof($proceso)){
		$bufer = fgets($proceso);
		$info[count($info)] = $bufer;
	}
	fclose($proceso);*/
	exec("c:\\AppServ\\php\\php.exe recursivoProceso.php");
	//exec("c:\\xampp\\php\\php.exe recursivoProceso.php");
	fwrite($log, "c:\\AppServ\\php\\php.exe recursivoProceso.php \r\n");
}
fclose($log);

?>
