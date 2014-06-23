<?php
class XbrlCarga{

	public function insertarValor($xmlParam){//$etiqueta, $valor, $rut, $periodo){
	
		try { 
			//$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
							
			try {
		        $con->beginTransaction(); 
				$sql = "exec sp_xbrl_insertar_valores ?";
				
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmt = $con->prepare($sql);				
				$stmt->bindParam(1, $xmlParam->xmlParam); 
				$stmt->execute();
				return $xmlParam->xmlParam;
			} catch(PDOExecption $e) {
		        $con->rollback();
		        print "Error!: " . $e->getMessage() . "</br>";
				return "bien";//$xmlParam->xmlParam;
		    } 			
		} catch( PDOExecption $e ) {
		    print "Error!: " . $e->getMessage() . "</br>";
			return "mal 1";//$xmlParam->xmlParam;
		} 	

		unset($con); 
		unset($stmt);
		
		
		
		
		return "mal 2";//$xmlParam->xmlParam;
	}
	
	public function descargaSVS($periodo){
		$ArchivoRemoto = "";
		$arr = explode("-", $periodo);
		$per = $arr[0];
		$anio = $arr[1];
		$log2 = fopen('log2.txt', 'a');
		fwrite($log2, "hoolla\r\n");
		fclose($log2);
		
		 
		for($i = 0; $i < count($anio); $i++){
			for($j = 0; $j < count($per); $j++){
				$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/novedades_envio_sa_ifrs.php?mm_ifrs=" . $per[$j] . "&aa_ifrs=" . $anio[$i] . "";
				$datos = file_get_contents($ArchivoRemoto)
				or die("<br />No se puede leer el archivo remoto<br />");
				
				$ArchivoLocal = "DATA" . $per[$j] . ""  . $anio[$i] . ".txt";

				
				
				file_put_contents($ArchivoLocal, $datos)
				or die("<br />No se puede escribir el archivo local<br />");
				
				$f = fopen("DATA" . $per[$j] . ""  . $anio[$i] . ".txt", 'r');
				
				$bufer = '';
				$log = fopen('log.txt', 'a');
				$tabla = fopen('tabla.txt', 'a');
				while(!feof($f)) {
					$bufer = fgets($f);
					if(preg_match_all('/ *<table.*/', $bufer, $arr)){
						break;
					}
				}
				
				
				while(!feof($f)) {
					$bufer = fgets($f);
					if(preg_match_all('/ *<\/table.*/', $bufer, $arr)){
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
				//echo "<br />El archivo [$ArchivoRemoto] fue copiado a [$ArchivoLocal]<br />";
			}
			
			
		 }
		return true;
	}

}
?>
