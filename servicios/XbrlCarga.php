<?php
class XbrlCarga{

	public function insertarValor($xmlParam){//$etiqueta, $valor, $rut, $periodo){
	
		/*try { 
			//$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
			$sql = "INSERT INTO [agf].[dbo].[valoresResp]
						   ([ID_TAG_AGF]
						   ,[ID_EMPRESA]
						   ,[ID_PERIODO]
						   ,[tipo]
						   ,[VALOR]
						   ,[DT_MODIFICACION]
						   ,[origen]
						   ,[id_formula]
						   ,[hist_formula])
					 VALUES
						   (<ID_TAG_AGF, int,>
						   ,<ID_EMPRESA, int,>
						   ," . $periodo . "
						   ," . $ . "
						   ," . $valor ."
						   ,'1900-01-01'
						   ,<origen, int,>
						   ,0
						   ,null)";
			
			
			$sql2 = str_replace("'", "''", $sql);		
			try {
		        $con->beginTransaction(); 
				$stmt = $con->prepare("INSERT INTO logs values ('" . $sql2 . "');");
				$stmt->execute();
				$stmt = $con->prepare($sql);
				$stmt->execute();
				$con->commit(); 
				$ultimo_id = $con->lastInsertId();
				$arr = array();
				$arr[0]['ID'] = $ultimo_id;
				return $arr;
			} catch(PDOExecption $e) {
		        $con->rollback();
		        print "Error!: " . $e->getMessage() . "</br>";
				return 0;
		    } 			
		} catch( PDOExecption $e ) {
		    print "Error!: " . $e->getMessage() . "</br>";
			return 0;
		} 	

		unset($con); 
		unset($stmt);
		*/
		
		return $xmlParam->xmlParam;
	}

}
?>
