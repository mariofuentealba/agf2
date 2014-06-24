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
	
	
		//return '<Resp><rut>90249000</rut><rut>96572920</rut><rut>96582180</rut><rut>76202136</rut><rut>96518240</rut><rut>89900400</rut><rut>81290800</rut><rut>93039000</rut><rut>96684990</rut><rut>76143636</rut><rut>96591040</rut><rut>90269000</rut><rut>96815680</rut><rut>91999000</rut><rut>61105000</rut><rut>90088000</rut><rut>90659000</rut><rut>82038300</rut><rut>76109779</rut><rut>96519000</rut><rut>92552000</rut><rut>76149618</rut><rut>96911570</rut><rut>93845000</rut><rut>96816290</rut><rut>90256000</rut><rut>91596000</rut><rut>90380000</rut><rut>96686870</rut><rut>92317000</rut><rut>99566540</rut><rut>76003557</rut><rut>96751830</rut><rut>93767000</rut><rut>76034728</rut><rut>76322590</rut><rut>99573420</rut><rut>81062300</rut><rut>96858900</rut><rut>96989050</rut><rut>61703000</rut><rut>76005049</rut><rut>96626570</rut><rut>96756320</rut><rut>61106000</rut><rut>99595990</rut><rut>96559620</rut><rut>76085862</rut><rut>96972220</rut><rut>79797990</rut><rut>96563820</rut><rut>96809970</rut><rut>90274000</rut><rut>96756300</rut><rut>96804330</rut><rut>96516150</rut><rut>91196000</rut><rut>96960970</rut><rut>96511810</rut><rut>96972300</rut><rut>76496130</rut><rut>76038659</rut><rut>76023435</rut><rut>93501000</rut><rut>76188962</rut><rut>96803710</rut><rut>93508000</rut><rut>96601710</rut><rut>93470000</rut><rut>96972780</rut><rut>61113000</rut><rut>90286000</rut><rut>76172904</rut><rut>96783540</rut><rut>99589230</rut><rut>99569020</rut><rut>96765170</rut><rut>96769070</rut><rut>96993150</rut><rut>81689800</rut><rut>96843170</rut><rut>96787910</rut><rut>96875230</rut><rut>82912300</rut><rut>96766340</rut><rut>92242000</rut><rut>91126000</rut><rut>96621750</rut><rut>96756330</rut><rut>61960100</rut><rut>96955500</rut><rut>99541380</rut><rut>83017600</rut><rut>76480310</rut><rut>96992030</rut><rut>95819000</rut><rut>76081215</rut><rut>96932010</rut><rut>96678790</rut><rut>96758230</rut><rut>91335000</rut><rut>76406900</rut><rut>92512000</rut><rut>99551480</rut><rut>96576660</rut><rut>96785590</rut><rut>96761990</rut><rut>60503000</rut><rut>76102955</rut><rut>92347000</rut><rut>91836000</rut><rut>99513410</rut><rut>96639280</rut><rut>81826800</rut><rut>99530250</rut><rut>99579730</rut><rut>94050000</rut><rut>96574040</rut><rut>70016330</rut><rut>96882560</rut><rut>96846610</rut><rut>79558200</rut><rut>96806010</rut><rut>96784400</rut><rut>87634600</rut><rut>96980650</rut><rut>96634320</rut><rut>96753330</rut><rut>91577000</rut><rut>96948880</rut><rut>90856000</rut><rut>81086500</rut><rut>92287000</rut><rut>96781140</rut><rut>61960300</rut><rut>92108000</rut><rut>61956700</rut><rut>76022072</rut><rut>76073164</rut><rut>96912880</rut><rut>76073162</rut><rut>96777540</rut><rut>76527570</rut><rut>96966250</rut><rut>61604000</rut><rut>90414000</rut><rut>96872980</rut><rut>61216000</rut><rut>96563620</rut><rut>61959100</rut><rut>96964310</rut><rut>96963440</rut><rut>99575550</rut><rut>96666140</rut><rut>93727000</rut><rut>96767630</rut><rut>91400000</rut><rut>90212000</rut><rut>96603740</rut><rut>99543100</rut><rut>76381570</rut><rut>96579330</rut><rut>93711000</rut><rut>90146000</rut><rut>96756340</rut><rut>96667040</rut><rut>90689000</rut><rut>93830000</rut><rut>96501440</rut><rut>96852100</rut><rut>99040000</rut><rut>96850960</rut><rut>76661770</rut><rut>91694000</rut><rut>96873140</rut><rut>96555360</rut><rut>96802690</rut><rut>96644280</rut><rut>76672100</rut><rut>96530900</rut><rut>61945700</rut><rut>61950900</rut><rut>76175211</rut><rut>96756310</rut><rut>90818000</rut><rut>76036521</rut><rut>96660790</rut><rut>90831000</rut><rut>76048177</rut><rut>73968300</rut><rut>92051000</rut><rut>76650830</rut><rut>76020458</rut><rut>93065000</rut><rut>95816000</rut><rut>91253000</rut><rut>96506770</rut><rut>99518380</rut><rut>91262000</rut><rut>76488180</rut><rut>96790570</rut><rut>96556310</rut><rut>90209000</rut><rut>60806000</rut><rut>99549940</rut><rut>96632170</rut><rut>96690790</rut><rut>96556790</rut><rut>90154000</rut><rut>91643000</rut><rut>81385800</rut><rut>96542300</rut><rut>61951300</rut><rut>76012676</rut><rut>96896990</rut><rut>96528740</rut><rut>94478000</rut><rut>76005001</rut><rut>91559000</rut><rut>61219000</rut><rut>76045822</rut><rut>76150653</rut><rut>86247400</rut><rut>91834000</rut><rut>61946300</rut><rut>93628000</rut><rut>96640360</rut><rut>96566900</rut><rut>91755000</rut><rut>61952700</rut><rut>96667560</rut><rut>96513630</rut><rut>96836390</rut><rut>96579410</rut><rut>81271100</rut><rut>94082000</rut><rut>96813520</rut><rut>99558780</rut><rut>96811060</rut><rut>96809690</rut><rut>94660000</rut><rut>96439000</rut><rut>91237000</rut><rut>92970000</rut><rut>90035000</rut><rut>91705000</rut><rut>90160000</rut><rut>92013000</rut><rut>96766600</rut><rut>90042000</rut><rut>93834000</rut><rut>76963470</rut><rut>96861280</rut><rut>91482000</rut><rut>95134000</rut><rut>91344000</rut><rut>96766110</rut><rut>76096382</rut><rut>96529340</rut><rut>96532830</rut><rut>61704000</rut><rut>99580930</rut><rut>76165311</rut><rut>96511530</rut><rut>76196718</rut><rut>76116242</rut><rut>90690000</rut><rut>90596000</rut><rut>90320000</rut><rut>96566940</rut><rut>96512190</rut><rut>91123000</rut><rut>77274820</rut><rut>96947020</rut><rut>96528990</rut><rut>96514410</rut><rut>96541920</rut><rut>96542120</rut><rut>96541870</rut><rut>96723320</rut><rut>91143000</rut><rut>96945440</rut><rut>96885880</rut><rut>90310000</rut><rut>96722460</rut><rut>89996200</rut><rut>90299000</rut><rut>61808000</rut><rut>96579800</rut><rut>77750920</rut><rut>70016160</rut><rut>91337000</rut><rut>92047000</rut><rut>90081000</rut><rut>93458000</rut><rut>93838000</rut><rut>90749000</rut><rut>90743000</rut><rut>94139000</rut><rut>93007000</rut><rut>96792430</rut><rut>76675290</rut><rut>76072469</rut><rut>92165000</rut><rut>90331000</rut><rut>91350000</rut><rut>80860400</rut><rut>96551730</rut><rut>96561560</rut><rut>91021000</rut><rut>90227000</rut><rut>96874030</rut><rut>79768170</rut><rut>99513400</rut><rut>99598300</rut><rut>96719210</rut><rut>88221200</rut><rut>86963200</rut><rut>96569460</rut><rut>96513200</rut><rut>99010000</rut><rut>92448000</rut><rut>70285500</rut><rut>76017019</rut><rut>90694000</rut><rut>96817230</rut><rut>94840000</rut><rut>76555400</rut><rut>99521950</rut><rut>96929880</rut><rut>94272000</rut><rut>96717620</rut><rut>76129263</rut><rut>89150900</rut><rut>96512200</rut><rut>84356800</rut><rut>96818910</rut><rut>96762780</rut><rut>96971830</rut><rut>96893820</rut><rut>96970380</rut><rut>90412000</rut><rut>76838140</rut><rut>96579730</rut><rut>92604000</rut><rut>87756500</rut><rut>99588230</rut><rut>96635700</rut><rut>96596540</rut><rut>82777100</rut><rut>91553000</rut><rut>90222000</rut><rut>96511150</rut><rut>76309510</rut><rut>76762250</rut><rut>98001200</rut><rut>96602640</rut><rut>98000400</rut><rut>98000000</rut><rut>96684580</rut><rut>96847360</rut><rut>98001000</rut><rut>76016541</rut><rut>96604380</rut><rut>89862200</rut><rut>94270000</rut><rut>99586130</rut><rut>93473000</rut><rut>96708470</rut><rut>96655860</rut><rut>99503280</rut><rut>92434000</rut><rut>98000100</rut><rut>92580000</rut><rut>92544000</rut><rut>91297000</rut><rut>93281000</rut><rut>76046791</rut><rut>88006900</rut><rut>90413000</rut><rut>91041000</rut><rut>96505760</rut><rut>87845500</rut><rut>90635000</rut><rut>96672160</rut><rut>91144000</rut><rut>94627000</rut><rut>90266000</rut><rut>86547900</rut><rut>96538080</rut><rut>85741000</rut><rut>96819300</rut><rut>91550000</rut><rut>93930000</rut><rut>94271000</rut><rut>91081000</rut><rut>96504980</rut><rut>96800570</rut><rut>83628100</rut></Resp>';
		ini_set('max_execution_time', 0);
		
		$arr = explode("-", $periodo);
		$per = array($arr[0]);
		$anio = array($arr[1]);
		$arrRut = '<Resp>';
		if($j < 0){
			exec("c:\\AppServ\\php\\php.exe recursivoProceso.php");
			//exec("c:\\xampp\\php\\php.exe recursivoProceso.php");
			//exit;
		}
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
		
		while(!feof($dat)){
			
			$xbrl = fgets($dat);
			
			$rut = explode("rut=", $xbrl);
			$rut = explode("&mm", $rut[1]);
			
			if(isset($ruts[$rut])){
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
