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
		//$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/novedades_envio_sa_ifrs.php?mm_ifrs=" . $per[$j] . "&aa_ifrs=" . $anio[$i] . "";
		$ArchivoRemoto = "http://www.google.cl";
		$datos = file_get_contents($ArchivoRemoto)
		or die("No se puede leer el archivo remoto");
		
		$ArchivoLocal = "DATA" . $per[$j] . ""  . $anio[$i] . ".txt";

		
		file_put_contents($ArchivoLocal, $datos)
		or die("No se puede escribir el archivo local");
	 
		// Mostramos un mensaje de confirmacion
		echo "El archivo [$ArchivoRemoto] fue copiado a [$ArchivoLocal]<br />";
	}
	
	
 }
 
 
 
/*http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?
auth=&send=&rut=99530250&mm=12&aa=2013&archivo=99530250_201312_C.zip&desc_archivo=Estados%20financieros%20(XBRL)&tipo_archivo=XBRL */
 
// definimos el nombre de la copia local
// Escribimos los datos en el archivo local

 
?>
