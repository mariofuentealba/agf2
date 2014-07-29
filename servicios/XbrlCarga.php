<?php
class XbrlCarga{

	public function insertarValor($xmlParam, $contextos){//$etiqueta, $valor, $rut, $periodo){
		
		try { 
		//return 'hola' ;
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');	
			$con->beginTransaction(); 		
			
			
			
			
			$log = fopen('xbrl\\log.txt', 'a');				
			

			if(isset($contextos)){
			
				$sql = "exec [agf].[dbo].[sp_xbrl_insertar_contextos] ?";
			
				fwrite($log, "\r\n\r\n\r\n\r\n\r\n ENTRANDO A GRABAR exec [agf].[dbo].[sp_xbrl_insertar_contextos]\r\n" . print_r($contextos, true) . "\r\n\r\n\r\n\r\n\r\n");
				
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmt = $con->prepare($sql);				
				$stmt->bindParam(1, $contextos); 
				$stmt->execute();
			
			}

			
			$sql = "exec [agf].[dbo].[sp_xbrl_insertar_valores] ?";
			
			fwrite($log, "\r\n\r\n\r\n\r\n\r\n ENTRANDO A GRABAR exec [dbo].[sp_xbrl_insertar_valores]\r\n" . print_r($xmlParam, true) . "\r\n\r\n\r\n\r\n\r\n");
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			$stmt = $con->prepare($sql);				
			$stmt->bindParam(1, $xmlParam->xmlParam); 
			$stmt->execute();
			$con->commit();
			return '' . $xmlParam->xmlParam;
			
		        
		     			
		} catch( PDOExecption $e ) {
			
			print "Error!: " . $e->getMessage() . "</br>";
			fwrite($log, "\r\n\r\n\r\n\r\n\r\nError!: " . $e->getMessage());
			$con->rollback();
			return "bien";//$xmlParam->xmlParam;
		    
		} 	

		unset($con); 
		unset($stmt);
		fclose($log);
		
		
		
		return "mal 2";//$xmlParam->xmlParam;
	}
	
	public function descargaSVS($periodo){		
		$ArchivoRemoto = "";
		ini_set('max_execution_time', 0);
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
	
	public function cargaEmpresas($periodo){
	
		
		
		ini_set('max_execution_time', 0);
		
		$arr = explode("-", $periodo);
		$per = array($arr[0]);
		$anio = array($arr[1]);
		$arrRut = '<Resp>';
		$xml = "<Ruts>";
		$rutsProcesados = array();
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
				
				$rutsProcesados[count($rutsProcesados)] = $bufer[0];
				
				/*$url = str_replace("::", "&", $url);
				fwrite($f, $url . "\r\n");
				fwrite($resp, $url . "\r\n");		*/
				
				
				for(; $s < $nn; $s++){
					if(preg_match_all('/ *<\/tr>.*/', $datos[$s], $arr)){
						break;
					}
				}
			} 			
			
		}
		fclose($f);
		fclose($resp);
		
		$xml .= "</Ruts>";
		
		
		
		fwrite($log, count($rutsProcesados) . "-cantidad\r\n");
		for($i = 0; $i < count($rutsProcesados); $i++){
			$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/consulta_busqueda.php?entidad_web=G&valor=" . $rutsProcesados[$i];
			
			$useragent="Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.1) Gecko/20061204 Firefox/2.0.0.1";
			$ch = curl_init();
			// set user agent
			curl_setopt($ch, CURLOPT_USERAGENT, $useragent);
			curl_setopt ($ch, CURLOPT_URL, $ArchivoRemoto);
			curl_setopt ($ch, CURLOPT_HEADER, 0);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, TRUE);
			
			$datos = curl_exec ($ch);
			
			curl_close ($ch);
			$datos = explode("\n", $datos);
			fwrite($log, count($datos) . "------------------cantidad\r\n");
			$registro = new stdClass();	
			$registro->rut = trim(strip_tags($datos[120]));
			$registro->nombre = trim(strip_tags($datos[122]));
			$registro->tipoEntidad = trim(strip_tags($datos[123]));
			$registro->vigencia = trim(strip_tags($datos[124]));
			$arrRut .= '<rut id="' . $registro->rut . '" nombre="' . $registro->nombre . '" tipoEntidad="' . $registro->tipoEntidad . '" vigencia="' . $registro->vigencia . '"/>';
			fwrite($log, print_r($registro, true) . "\r\n");

		}
		
		$arrRut .= '</Resp>';
		//fwrite($log, $arrRut . "\r\n\r\n\r\n\r\n");
		try {
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');	
			$con->beginTransaction(); 
			$sql = "exec sp_xbrl_empresas ?";
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			$stmt = $con->prepare($sql);	
			$arrRut2 = $arrRut;
			$arrRut2 = str_replace("&", "::", $arrRut2);
			$stmt->bindParam(1, $arrRut2); 
			$stmt->execute();
			
		
			
			$con->commit();
			fwrite($log, "\r\n\r\nRETORNANDO\r\n\r\n");
			fwrite($log, $arrRut2 . "\r\n\r\n\r\n\r\n");
			fwrite($log, "\r\n\r\n" . $arrRut . "\r\n\r\n\r\n\r\n");
			return $arrRut;
		} catch(PDOExecption $e) {
			$con->rollback();
			print "Error!: " . $e->getMessage() . "</br>";
			//return "bien";//$xmlParam->xmlParam;
		} 			
		

		unset($con); 
		unset($stmt);
		fclose($log);
		
		
	}
	
	
	public function preparaCarga($periodo){
	
		
		
		ini_set('max_execution_time', 0);
		
		$arr = explode("-", $periodo);
		$per = array($arr[0]);
		$anio = array($arr[1]);

		$xml = "<Ruts>";
		$rutsProcesados = array();
		$i = 0;
		$j = 0;
		
		$log = fopen("xbrl\\" . 'log.txt', 'a');
		$ArchivoRemoto = "http://www.svs.cl/institucional/mercados/novedades_envio_sa_ifrs.php?mm_ifrs=" . $per[$j] . "&aa_ifrs=" . $anio[$i] . "";
		fwrite($log, "PAGINA A CONSULTAR LINKS :: " . $ArchivoRemoto . "\r\n");
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
		fwrite($log, "LINEAS OBTENIDAS::" . count($datos) . "\r\n");
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
				
				$url = "http://www.svs.cl/institucional/inc/inf_financiera/ifrs/safec_ifrs_verarchivo.php?auth=&send=&rut=" . $bufer[0] . "&mm=" . $bufer[1] . "&aa=" . $bufer[2] . "&archivo=" . $bufer[0] . "_" . $bufer[2] . $bufer[1] . "_" . $bufer[3] . ".zip&desc_archivo=Estados financieros (XBRL)&tipo_archivo=XBRL";
				$xml .= '<rut id="' . $bufer[0] . '" url="' . str_replace("&", "::", $url) . '" periodo="' . $periodo . '"/>';
				//$rutsProcesados[count($rutsProcesados)] = $bufer[0];
				//$xml .= '<rut id="' . $bufer[0] . '" url="' . $url . '" periodo="' . $periodo . '"/>';
				$url = str_replace("::", "&", $url);
				fwrite($f, $url . "\r\n");
				fwrite($resp, $url . "\r\n");		
				fwrite($log, "PAGINA DE DESCARGA :: " . $url . "\r\n");
				
				
				for(; $s < $nn; $s++){
					if(preg_match_all('/ *<\/tr>.*/', $datos[$s], $arr)){
						break;
					}
				}
			} 			
			
		}
		fclose($f);
		fclose($resp);
		
		$xml .= "</Ruts>";
		
		fwrite($log, "exec sp_xbrl_extraccion '" . $xml . "'\r\n");
		
		try { 
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
							
			try {
		        $con->beginTransaction(); 
				$sql = "exec sp_xbrl_extraccion ?";
				
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmt = $con->prepare($sql);				
				$stmt->bindParam(1, $xml); 
				$stmt->execute();
				
			
				
				$con->commit();
			} catch(PDOExecption $e) {
		        $con->rollback();
		        print "Error!: " . $e->getMessage() . "</br>";
				//return "bien";//$xmlParam->xmlParam;
		    } 			
		} catch( PDOExecption $e ) {
		    print "Error!: " . $e->getMessage() . "</br>";
			//return "mal 1";//$xmlParam->xmlParam;
		} 	
		
		
		//fwrite($log, $arrRut . "\r\n\r\n\r\n\r\n");
			
		

		unset($con); 
		unset($stmt);
		fclose($log);
		
		
	}
	
	
	
	
	
	
	
	public function descargaSeleccion($data, $periodo){
		$ruts = '';
		$dataPre = $data;
		$data = explode(";", $data);
		$log = fopen('xbrl\\log.txt', 'a');
		$ruts = '<Tags periodo="' . $periodo . '">';
		for($i = 0; $i < count($data); $i++){
			$ruts .= '<tag rut="' . $data[$i] . '" />';
		}
		$ruts .= '</Tags>';
		
		fwrite($log, "***********************************************************************\r\n");
		fwrite($log, "descargaSeleccion:\r\n");
		fwrite($log, "DATAPRE::" . $dataPre . "\r\n");
		fwrite($log, "PERIODO::" . $periodo . "\r\n");
		
		try {
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');	
			
			$sql = "exec sp_xbrl_rescata_extraccion ?";
			fwrite($log, "sp_xbrl_rescata_extraccion '" . $ruts . "'\r\n");
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			$stmt = $con->prepare($sql);	
			
			$stmt->bindParam(1, $ruts); 
			$stmt->execute();
			
			
			$salida = '';
			$row = $stmt->fetch();
			
			//
			fwrite($log, "RESPUESTA::" . print_r($row, true) . "\r\n");
			if($row[0] == '0'){				
				fwrite($log, "PAG NO CARGADA\r\n");
				$this->preparaCarga($periodo);
				fwrite($log, "this->preparaCarga($periodo)\r\n");
			}
			$log2 = fopen('xbrl\\log3.txt', 'a');
			fwrite($log2, "$dataPre\r\n");
			fwrite($log2, "$periodo\r\n");
			
			fwrite($log, "C:\\xampp\\php\\php.exe C:\\xampp\\htdocs\\ProcesaXml2\\procesoRecursivo.php " . $dataPre . " " . $periodo . "\r\n");
			$salida = shell_exec("C:\\xampp\\php\\php.exe C:\\xampp\\htdocs\\ProcesaXml2\\procesoRecursivo.php " . $dataPre . " " . $periodo);
			//shell_exec("..\\..\\php5\\php.exe ..\\recursivo.php 0 0 0 0");
			
			$salida = explode(";;;;;;;", $salida);
			
			fwrite($log, "SALIDA :: " . count($salida) . "\r\n");

			fclose($log2);
			return $salida;
			
			
		} catch(PDOExecption $e) {
			$con->rollback();
			print "Error!: " . $e->getMessage() . "</br>";
			//return "bien";//$xmlParam->xmlParam;
		} 		
		fclose($log);
	}
	
	
	public function rescataEmpresas(){
		
		try { 
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
							
			
			$sql = "exec sp_xbrl_rescata_empresas";
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			$stmt = $con->prepare($sql);				
			
			$stmt->execute();
			$log = fopen('xbrl\\log2.txt', 'a');
			$data = $stmt->fetch();
			fwrite($log, "RETORNO::" . $data[0] . "\r\n");
			
			
			
			if($data[0] == '0'){
				fwrite($log, "RETORNO:: CON ZEROSSS" . $data[0] . "\r\n");				
				return $this->cargaEmpresas('03-2014');
			} else {
				return '' . $data[0];
			}
			fclose($log);
			
			
			 			
		} catch( PDOExecption $e ) {
		    print "Error!: " . $e->getMessage() . "</br>";
			return "mal 1";//$xmlParam->xmlParam;
		} 	

		unset($con); 
		unset($stmt);
		
		
		
	}
	
	
	public function insertarErrorFormato($xmlParam){//$etiqueta, $valor, $rut, $periodo){
		
		try { 
		//return 'hola' ;
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');	
			$con->beginTransaction(); 		
			
			
			
			
			
			

			$sql = "exec [agf].[dbo].[sp_xbrl_insertar_error_formato] ?";
			
			
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			$stmt = $con->prepare($sql);				
			$stmt->bindParam(1, $xmlParam); 
			$stmt->execute();
			$con->commit();
			return '' . $xmlParam;
			
		        
		     			
		} catch( PDOExecption $e ) {
			
			print "Error!: " . $e->getMessage() . "</br>";
		
			$con->rollback();
			return "bien";//$xmlParam->xmlParam;
		    
		} 	

		unset($con); 
		unset($stmt);
		
		
		
		
		return "mal 2";//$xmlParam->xmlParam;
	}
	
	public function insertarEmpresas2($xmlParam){//$etiqueta, $valor, $rut, $periodo){
		
		try { 
		//return 'hola' ;
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');	
			$con->beginTransaction(); 		
			
			
			
			
			
			

			$sql = "exec [dbo].[sp_insertar_empresas]  ?";
			
			
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $xmlParam . "');");
			$stmtlog->execute();
			
			$stmt = $con->prepare($sql);				
			$stmt->bindParam(1, $xmlParam); 
			$stmt->execute();
			
			$ultimo_id = $con->lastInsertId();
			
			/*$arr = array();
				//Ingresa valores para todos los tag ingresados de tipo xbrl y estimadores manuales
				$sql = "exec spInsertaValoresItemEmpresaNueva ?";
				
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmt = $con->prepare($sql);				
				$stmt->bindParam(1, $ultimo_id); 
				$stmt->execute();

				//Carga las formulas por default para la nueva empresa
				$sql = "INSERT INTO empresa_indice(id_empresa, id_indice_financiero, num_formula, id_formula) 
						SELECT " . $ultimo_id . ", id_indice_financiero, 0, id_formula 
						FROM formulas;";
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmt = $con->prepare($sql);
				$stmt->execute();
				$sql = "sp_rescata_formula_simple ? ";
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmtq = $con->prepare($sql);
				$stmtq->bindParam(1, $ultimo_id);
				$stmtq->execute();
				$arrResult = array();	
				while($row = $stmtq->fetch()){
					$operacion = $row[10];
					if(!isset($row[3]))
						$row[3] = 0;
					$operacion = str_replace('C1', '(' . $row[3] . ')', $operacion);
					if(!isset($row[4]))
						$row[4] = 0;
					$operacion = str_replace('C2', '(' . $row[4] . ')', $operacion);
					if(!isset($row[5]))			
						$row[5] = 0;
					$operacion = str_replace('C3', '(' . $row[5] . ')', $operacion);
					if(!isset($row[6]))
						$row[6] = 0;
					$operacion = str_replace('C4', '(' . $row[6] . ')', $operacion);
					if(!isset($row[7]))
						$row[7] = 0;
					$operacion = str_replace('C5', '(' . $row[7] . ')', $operacion);

						
					$evaluacionDiv = explode('/', $operacion);
					if(count($evaluacionDiv) > 1){					
						@eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
						if($resultDiv != 0){
							@eval( '$res = ' . $operacion . ';');		
						} else {
							$res = 0;
						}
					} else {
					$stmtlog = $con->prepare("INSERT INTO logs values ('RES = " . $operacion . ";');");
					$stmtlog->execute();
						@eval( '$res = ' . $operacion . ';');		
					}
					$nuevoValor = (float)$res;					
					$sql = "INSERT INTO valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula, HIST_FORMULA) 
											VALUES (" . $row[0] . ", " . $row[1] . "," . $row[2] . ", 'TRIMESTRAL', " . $nuevoValor . ",'1900-01-01',2, " . $row[11] . ", '" . $row[14] . "|" . $row[15] . "|" . $row[16] . "|" . $row[17] . "|" . $row[18] . "');";
					$sql2 = str_replace("'", "''", $sql);
					$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
					$stmtlog->execute();
					$stmt = $con->prepare($sql);
					$stmt->execute();
					//$this->insertaCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
				}	

				$sql = "exec sp_rescata_formulas_complejas";
				$sql2 = str_replace("'", "''", $sql);
				$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmtlog->execute();
				$stmtq = $con->prepare($sql);
				$stmtq->execute();			
				while($rowInd = $stmtq->fetch()){	

					//$stmtlog = $con->prepare("INSERT INTO logs values ('INDICE PROCESADO = " . $rowInd[0] . "');");
					//$stmtlog->execute();
					$sql = "exec sp_procesa_formulas_complejas ?, ?";	
					$sql2 = str_replace("'", "''", $sql);
					$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
					$stmtlog->execute();
					$stmtq2 = $con->prepare($sql);
					$stmtq2->bindParam(1,  $rowInd[0]); 
					$stmtq2->bindParam(2, $ultimo_id); 
					$stmtq2->execute();			
					$arrResult = array();	
					while($row = $stmtq2->fetch()){
						$operacion = $row[10];
						if(!isset($row[3]))
							$row[3] = 0;
						$operacion = str_replace('C1', '(' . $row[3] . ')', $operacion);
						if(!isset($row[4]))
							$row[4] = 0;
						$operacion = str_replace('C2', '(' . $row[4] . ')', $operacion);
						if(!isset($row[5]))			
							$row[5] = 0;
						$operacion = str_replace('C3', '(' . $row[5] . ')', $operacion);
						if(!isset($row[6]))
							$row[6] = 0;
						$operacion = str_replace('C4', '(' . $row[6] . ')', $operacion);
						if(!isset($row[7]))
							$row[7] = 0;
						$operacion = str_replace('C5', '(' . $row[7] . ')', $operacion);

							
						$evaluacionDiv = explode('/', $operacion);
						if(count($evaluacionDiv) > 1){					
							@eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
							if($resultDiv != 0){
								@eval( '$res = ' . $operacion . ';');		
							} else {
								$res = 0;
							}
						} else {
							@eval( '$res = ' . $operacion . ';');		
						}
						$nuevoValor = (float)$res;

						$sql = "INSERT INTO valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula, hist_formula) 
												VALUES (" . $row[0] . ", " . $row[1] . "," . $row[2] . ", 'TRIMESTRAL', " . $nuevoValor . ",SYSDATETIME(), 2, " . $row[11] . ", '" . $row[16] . "|" . $row[17] . "|" . $row[18] . "|" . $row[19] . "|" . $row[20] . "');";
						$sql2 = str_replace("'", "''", $sql);
						$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
						$stmtlog->execute();
						$stmtins = $con->prepare($sql);
						$stmtins->execute();
						//$this->insertaCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
					}	
				}	*/
				$con->commit();
				/*$stmtlog = $con->prepare("INSERT INTO logs values ('TERMINE');");
				$stmtlog->execute();*/
				return true;//$arr;
			
		        
		     			
		} catch( PDOExecption $e ) {
			
			print "Error!: " . $e->getMessage() . "</br>";
		
			$con->rollback();
			return "bien";//$xmlParam->xmlParam;
		    
		} 	

		unset($con); 
		unset($stmt);
		
		
		
		
		return "mal 2";//$xmlParam->xmlParam;
	}
	
	public function actualizaEmpresa($id, $color){//$etiqueta, $valor, $rut, $periodo){
		
		try { 
		//return 'hola' ;
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');	
			$con->beginTransaction(); 			

			$sql = "UPDATE empresas SET color =  " . $color . " WHERE id_empresa = " . $id . "";
			
			
			
			$sql2 = str_replace("'", "''", $sql);
			$stmtlog = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
			$stmtlog->execute();
			
			$stmt = $con->prepare($sql);				
			//$stmt->bindParam(2, $id); 
			//$stmt->bindParam(1, $color); 
			$stmt->execute();
			
			$con->commit();
			/*$stmtlog = $con->prepare("INSERT INTO logs values ('TERMINE');");
			$stmtlog->execute();*/
			return true;//$arr;
			
		        
		     			
		} catch( PDOExecption $e ) {
			
			print "Error!: " . $e->getMessage() . "</br>";
		
			$con->rollback();
			return "bien";//$xmlParam->xmlParam;
		    
		} 	

		unset($con); 
		unset($stmt);
		
		
		
		
		return "mal 2";//$xmlParam->xmlParam;
	}
	
}
?>
