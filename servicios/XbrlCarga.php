<?php
class XbrlCarga{

	public function insertarValor($xmlParam){//$etiqueta, $valor, $rut, $periodo){
	
		try { 
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
							
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
		ini_set('max_execution_time', 20);
		$arr = explode("-", $periodo);
		$per = array($arr[0]);
		$anio = array($arr[1]);
		$ru = fopen("xbrlBR/" . 'rut.txt', 'a');
		$arrRut = '<Resp>';
		for($i = 0; $i < count($anio); $i++){
			for($j = 0; $j < count($per); $j++){
				$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/novedades_envio_sa_ifrs.php?mm_ifrs=" . $per[$j] . "&aa_ifrs=" . $anio[$i] . "";
				$datos = file_get_contents($ArchivoRemoto)
				or die("<br />No se puede leer el archivo remoto<br />");
				
				$ArchivoLocal = "DATA" . $per[$j] . ""  . $anio[$i] . ".txt";

				
				
				file_put_contents("xbrlBR/" . $ArchivoLocal, $datos)
				or die("<br />No se puede escribir el archivo local<br />");
				
				$f = fopen("xbrlBR/" . "DATA" . $per[$j] . ""  . $anio[$i] . ".txt", 'r');
				
				$bufer = '';
				$log = fopen("xbrlBR/" . 'log.txt', 'a');
				$tabla = fopen("xbrlBR/" . 'tabla.txt', 'a');
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
						$rut = explode("rut=", $bufer[0]);
						$rut = explode("&rut_inc", $rut[1]);
						fwrite($ru, $rut[0] . "\r\n"); 
						$arrRut .= '<rut>' . $rut[0] . '</rut>';
						fwrite($tabla, 'http://www.svs.cl/institucional/mercados/' . $bufer[0]."\r\n");
						
						$xbrl = file_get_contents('http://www.svs.cl/institucional/mercados/' . $bufer[0])
						or die("<br />No se puede leer el archivo remoto [xbrl]<br />");
						
						
						$otr = fopen("xbrlBR/" . "pagina.txt", 'a');
						fwrite($otr, $xbrl . "\r\n");
						
						
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
				
			}
			
			
		}
		fclose($ru);
		
		
		$arrRut .= '</Resp>';
		//return '<Resp><rut>19</rut><rut>27</rut></Resp>';
		return $arrRut;
	}
	
	public function recursivo($periodo){
	
	
		
		ini_set('max_execution_time', 0);
		
		$arr = explode("-", $periodo);
		$per = array($arr[0]);
		$anio = array($arr[1]);
		$arrRut = '<Resp>';
		
		$i = 0;
		$j = 0;
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
		$f = fopen("xbrl\\" . "DATA" . $per[$j] . "" . $anio[$i] . ".txt", 'a');
		$resp = fopen("xbrl\\" . "DATA.txt", 'a');
		$datos = explode("\n", $datos);
		for($s = 0; $s < count($datos); $s++){
			if(preg_match_all('/ *<table.*/', $datos[$s], $arr)){	
				break;
			}
		}
		//echo --$s . " de " . count($datos) . "\n";
		$nn = count($datos);
		$log = fopen("xbrl\\" . 'log.txt', 'a');
		fwrite($log, count($datos) . "-------------------------------------------------------\r\n");
		//fwrite($resp, "-------------------------------------------------------\r\n");
		for(; $s < $nn; $s++){	
			//print_r($datos[$s]);
			if(preg_match_all('/ *<\/table.*/', $datos[$s], $arr)){	
				//echo "salida: " . $s . "\n";
				break;
			}
			if(preg_match_all('/ *<td><a href=\'.*/', $datos[$s], $arr)){
				//print_r($arr);
				//fwrite($log, $datos[$s] . "\r\n");
				$bufer = str_replace("<td><a href='", "", $datos[$s]);
				$bufer = trim($bufer);
				$bufer = explode("'>", $bufer);
				$bufer = $bufer[0];
				$bufer2 = explode("&", $bufer);
				
				$aux = explode("=", $bufer2[3]);
				$aux1 = explode("=", $bufer2[9]);
				$aux2 =  explode("=", $bufer2[10]);
				$aux3 = explode("=", $bufer2[11]);
				$bufer = array($aux[1], $aux1[1], $aux2[1], $aux3[1]);//, explode("=", $bufer2[9])[1], explode("=", $bufer2[10])[1], explode("=", $bufer2[11])[1]);
				$arrRut .= '<rut>' . $bufer[0] . '</rut>';
				$url = "http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?auth=&send=&rut=" . $bufer[0] . "&mm=" . $bufer[1] . "&aa=" . $bufer[2] . "&archivo=" . $bufer[0] . "_" . $bufer[2] . $bufer[1] . "_" . $bufer[3] . ".zip&desc_archivo=Estados financieros (XBRL)&tipo_archivo=XBRL";
			
				fwrite($f, $url . "\r\n");
				fwrite($resp, $url . "\r\n");		
				
				
				for(; $s < $nn; $s++){
					if(preg_match_all('/ *<\/tr>.*/', $datos[$s], $arr)){
						break;
					}
				}
			} 			
			
		}
		fclose($f);
		fclose($resp);
		
		
		
		/*$arrRut .= '</Resp>';
		fwrite($log, "$arrRut\r\n");
		fclose($log);
		return $arrRut;*/


		
		$arrRut .= '</Resp>';
		fwrite($log, "$arrRut\r\n");
		fclose($log);
		
		//return '<Resp><rut>19</rut><rut>27</rut></Resp>';
		return $arrRut;
	}
	
	public function descargaSeleccion($data){
		$dat = fopen("xbrl\\" . "DATA.txt", "r");
		$re =  fopen("xbrl\\" . "DATARE.txt", "w");
		$log = fopen("xbrl\\" . 'log.txt', 'a');
		//$ruts = stdClass();
		$ruts = array();
		$data = explode(";", $data);
		
		for($i = 0; $i < count($data); $i++){
			$ruts[$data[$i]] = $data[$i];
		}
		
		fwrite($log, print_r($ruts, true) . "\r\n");
		
		
		while(!feof($dat)){
			
			$xbrl = fgets($dat);
			
			$rut = explode("rut=", $xbrl);
			$rut = explode("&mm", $rut[1]);
			
			if(@isset($ruts[$rut])){
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
			
			
			
		}
		fclose($dat);
		fclose($re);

		$dat =  fopen("xbrl\\" . "DATARE.txt", "r");

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
		return true;
	}
	
	public function manipulaZip($data){
		include_once("..\\pclzip-2-8-2\\pclzip.lib.php");
 
		$zip = new PclZip("Estados_financieros_(XBRL)91337000_201312.zip");
		 
		if (($list = $zip->listContent()) == 0) {
				die("Error : ".$zip->errorInfo(true));
		}
		 
		for ($i=0; $i<sizeof($list); $i++) {
				for(reset($list[$i]); $key = key($list[$i]); next($list[$i])) {
						//echo "Archivo $i / [$key] = ".$list[$i][$key]."<br>";
				}
				//echo "<br>";
		}



		 
		if ($zip->extract(PCLZIP_OPT_PATH, "Estados_financieros_(XBRL)91337000_201312",
		PCLZIP_OPT_REMOVE_PATH, "install/release") == 0) {
				die("Error : ".$zip->errorInfo(true));
		}
	
	}
	
}
?>
