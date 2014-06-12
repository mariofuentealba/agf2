<?php
// incrementamos el limite de ejecucion para este script
/*ini_set('max_execution_time', 600);
 
// definimos la URL del archivo a descargar
$ArchivoRemoto = "http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?auth=&send=&rut=96947020&mm=12&aa=2013&archivo=96947020_201312_C.zip&desc_archivo=Estados%20financieros%20(XBRL)&tipo_archivo=XBRL";
 
//http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?
//auth=&send=&rut=99530250&mm=12&aa=2013&archivo=99530250_201312_C.zip&desc_archivo=Estados%20financieros%20(XBRL)&tipo_archivo=XBRL 
 
// definimos el nombre de la copia local
$ArchivoLocal = "el_mio.zip";
 
// Leemos el archivo remoto
$datos = file_get_contents($ArchivoRemoto)
    or die("No se piede leer el archivo remoto");
 
// Escribimos los datos en el archivo local
file_put_contents($ArchivoLocal, $datos)
    or die("No se puede escribir el archivo local");
 
// Mostramos un mensaje de confirmacion
echo "El archivo [$ArchivoRemoto] fue copiado a [$ArchivoLocal]";*/
 
 ini_set('max_execution_time', 600);
 
// definimos la URL del archivo a descargar
$ArchivoRemoto = "";
 
 $per = array('03', '06', '09', '12');
 $anio = array(2013, 2014);
 
 for($i = 0; $i < count($anio); $i++){
	for($j = 0; $j < count($per); $j++){
		$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/novedades_envio_sa_ifrs.php?mm_ifrs=" . $per[$j] . "&aa_ifrs=" . $anio[$i] . "";
		//$ArchivoRemoto = "http://www.google.cl";
		print_r($ArchivoRemoto );
		$datos = file_get_contents($ArchivoRemoto)
		or die("<br />No se puede leer el archivo remoto<br />");
		
		$ArchivoLocal = "DATA" . $per[$j] . ""  . $anio[$i] . ".txt";

		
		
		file_put_contents($ArchivoLocal, $datos)
		or die("<br />No se puede escribir el archivo local<br />");
		
		$f = fopen("DATA" . $per[$j] . ""  . $anio[$i] . ".txt", 'r');
		
		//preg_match_all("/<table.*/", $datos, $arr);
		//print_r($arr);
		$bufer = '';
		$log = fopen('log.txt', 'a');
		$tabla = fopen('tabla.txt', 'a');
		while(!feof($f)) {
			$bufer = fgets($f);
			//echo "<br />" . $bufer . "<br />";
			
			//preg_match_all('/.*<table.*/', $bufer, $arr);
			
			//print_r($arr);
			if(preg_match_all('/ *<table.*/', $bufer, $arr)){
				//echo "<br />" . $bufer . "<br />";
				//fwrite($log, $bufer."\r\n");
				break;
			}
		}
		
		
		while(!feof($f)) {
			$bufer = fgets($f);
			//echo "<br />" . $bufer . "<br />";
			
			//preg_match_all('/.*<table.*/', $bufer, $arr);
			
			if(preg_match_all('/ *<\/table.*/', $bufer, $arr)){
				//echo "<br />" . $bufer . "<br />";
				//fwrite($log, $bufer . "\r\n");
				break;
			}
			
			
			if(preg_match_all('/ *<td><a href=\'.*/', $bufer, $arr)){
				//print_r($arr);
				$bufer = str_replace("<td><a href='", "", $bufer);
				$bufer = trim($bufer);
				$bufer = explode("'>", $bufer);
				fwrite($tabla, 'http://www.svs.cl/institucional/mercados/' . $bufer[0]."\r\n");
				
				$xbrl = file_get_contents('http://www.svs.cl/institucional/mercados/' . $bufer[0])
				or die("<br />No se puede leer el archivo remoto [xbrl]<br />");
				
				/*file_put_contents("pagina.txt", $xbrl)
				or die("<br />No se puede escribir el archivo local<br />");*/
				$otr = fopen("pagina.txt", 'a');
				fwrite($otr, $xbrl . "\r\n");
				
				/*$doc = new DOMDocument();
				$doc->loadHTML($xbrl);*/
				
				$xbrl = explode("\n", $xbrl);
				fwrite($log, print_r($xbrl, true) . "\r\n");
				
				fwrite($otr, "----------\r\n");
				fclose($otr);
				
				while(!feof($f)){
					$bufer = fgets($f);
					if(preg_match_all('/ *<\/tr>.*/', $bufer, $arr)){
						break;
					}
				}
			}
			
			
			//print_r($arr);
			
		}
		
		fwrite($tabla, "-------------\r\n");
		fclose($f);
		fclose($log);
		fclose($tabla);
		
	/*	$doc = new DOMDocument();
		$doc->loadHTML($datos);
		print_r($doc);*/
	 
		// Mostramos un mensaje de confirmacion
		echo "<br />El archivo [$ArchivoRemoto] fue copiado a [$ArchivoLocal]<br />";
	}
	
	
 }
 
 
 /*$encontrado = preg_match_all('/id="tabla_resultado".*</table>/', $datos, $coincidencias, PREG_OFFSET_CAPTURE);

if ($encontrado) {
    print "<pre>"; print_r($coincidencias); print "</pre>\n";
    print "<p>Se han encontrado $encontrado coincidencias.</p>\n";
    foreach ($coincidencias[0] as $coincide) {
        print "<p>Cadena: '$coincide[0]' - Posición: $coincide[1]</p>\n";
    }
} else {
    print "<p>No se han encontrado coincidencias.</p>\n";
}
 */
 
 
/*http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?
auth=&send=&rut=99530250&mm=12&aa=2013&archivo=99530250_201312_C.zip&desc_archivo=Estados%20financieros%20(XBRL)&tipo_archivo=XBRL */
 
// definimos el nombre de la copia local
// Escribimos los datos en el archivo local

 
?>
