<?php
class ComponentesFormula
{
	public function comboItems(){
		try {					        
			$arr = array();
			$con = new PDO('sqlsrv:Server=WOTAN-PC;Database=agf');	 
			//$con = new PDO('sqlsrv:Server=MFUENTEALBA\WOTAN;Database=agf');			
		/*	$stmt = $con->prepare("SELECT [id_tag] as id
									  ,(select traduccion from xbrl_traduccion where id = [id_traduccion]) as etiqueta,1 as origen, (select distinct tipo from xbrl_contexto where isnull(tipo, '0') <> '0' FOR XML AUTO, TYPE) as Contextos
								  FROM [agf].[dbo].[xbrl_tag_traduccion] as tag_agf 
								  FOR XML AUTO, TYPE,ROOT('XBRL')");*/
								  
								  
			$stmt = $con->prepare("SELECT [ID_TAG_AGF] as id
									  ,etiqueta,1 as origen, 
									  (select distinct tipo 	
										from xbrl_contexto where isnull(tipo, '0') <> '0' FOR XML AUTO, TYPE) as Contextos,
										origen as tipo
								  FROM [agf].[dbo].[tag_agf] as tag_agf 
								  where origen = 'XBRL'
								  FOR XML AUTO, TYPE,ROOT('XBRL')");					  
								  
			$stmt->execute();
			$i=0;
			$return = "<Resp>";
			$row = $stmt->fetch()[0];
			$return .= $row;
			
			
			$stmt = $con->prepare("SELECT [ID_TAG_AGF] as id
									  ,etiqueta,1 as origen, 
									  (select distinct tipo 	
										from xbrl_contexto where isnull(tipo, '0') <> '0' FOR XML AUTO, TYPE) as Contextos,
										origen as tipo
								  FROM [agf].[dbo].[tag_agf] as tag_manual 
								  where origen = 'MANUAL'
								  FOR XML AUTO, TYPE,ROOT('XBRL')");					  
								  
			$stmt->execute();
			
			
			$row = $stmt->fetch()[0];
			$return .= $row;
			
			$stmt = $con->prepare("SELECT id_indice_financiero id, nombre as etiqueta, 2 as origen
									from indices_financieros
									FOR XML AUTO, TYPE,ROOT('INDICE')");
			$stmt->execute();
			$row = $stmt->fetch()[0];
			$return .= $row;
			
			$return .= "</Resp>";
			
			return $return;
		} catch( PDOExecption $e ) {
			print "Error!: " . $e->getMessage() . "</br>";
			return 0;
		} 	
		unset($con); 
		unset($stmt);
	}


}
?>
