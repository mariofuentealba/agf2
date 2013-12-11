<?php
class Modelo
{

/*Grupo*/


	public function grillaGrupos($startIndex, $numItems){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT * FROM tipos_empresas LIMIT $startIndex, $numItems")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_TIPO_EMPRESA']=$row[0];
	                     $arr[$i]['nombre']=$row[1];
	                     $arr[$i]['descripcion']=$row[2];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
	    
	    public function countGrupos(){
	    
	            //conectamos con la mysql
	            $con = mysql_connect("localhost","agf","agf");
	                //validamos que la conexion sea exitosa
	                if (!$con)
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
	                    $result = mysql_query("SELECT * FROM tipos_empresas")
	                    or die(mysql_error());
	                    $i=0;
	                    while($row = mysql_fetch_row($result))
	                    {
	                        //almacenamos los registros en la var array
				 $arr['ID_TIPO_EMPRESA']=$row[0];
	                         $arr['nombre']=$row[1];
	                         $arr[$i]['descripcion']=$row[2];
	                     $i++; 
	                    }
	                mysql_close($con);
	                
	            //retornamos el largo del arreglo
	            return count($arr);
	            
	        }
		
		public function insertar($arrInf, $table){
			    
	            //conectamos con la mysql
		    
		    
	            //$con = mysql_connect("localhost","agf","agf");
		    $mysqli = new mysqli("localhost","agf","agf","agf");
	                //validamos que la conexion sea exitosa
	                //if (!$con)
			if (mysqli_connect_errno()) 
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    ///////////////////////mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
			    
			    $sql = "INSERT INTO " . $table . " VALUES (null";
			    for($i = 0; $i < count($arrInf); $i++){
			    	$sql .= ", '" . $arrInf[$i] . "'";
			    }
			    $sql .= ");";
			    
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    $sql2 = str_replace("'", "''", $sql);
			    $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    $mysqli->query($sql);
	                    $ultimo_id = $mysqli->insert_id;
			    
			    
	                    $mysqli->close();
	                //mysql_close($con);
	                
	            //retornamos el largo del arreglo
		  //  $ultimo_id = mysql_insert_id($con);
	            //return $ultimo_id;
		    $arr = array();
		    $arr[0]['ID'] = $ultimo_id;
		    return $arr;
	            
	        }
		
		public function editar($arrInf, $table, $where){
					    
			            //conectamos con la mysql
			            $con = mysql_connect("localhost","agf","agf");
			                //validamos que la conexion sea exitosa
			                if (!$con)
			                {
			                  //si existe error en conexion
			                  die('Error conectando: ' . mysql_error());
			                }
			                    //si no existe error de conexion
			                    //seleccionamos base de datos
			                    mysql_select_db("agf", $con);
			                    
			                    //seleccionamos todos los registros de tabla tb_persona
					    
					    $sql = "UPDATE " . $table . " SET ";
					    
					    foreach($arrInf as $key => $value){
					    	$sql .= $key . " = '" . $value . "', ";
					    }
					    $sql = substr($sql, 0, -2);
					    $sql .= "  WHERE " . $where . ";";
					    $sql2 = str_replace("'", "", $sql);
					    mysql_query("INSERT INTO log values ('" . $sql2 . "');");
			                    $result = mysql_query($sql)
			                    or die(mysql_error());
			                    
			                    
			                mysql_close($con);
			                
			            //retornamos el largo del arreglo
			            return true;
			            
			        }
				
				
				
			public function comboGrupos(){
			        //creando variable array
			        $arr = array();
			        //conectamos con la mysql
			        $con = mysql_connect("localhost","agf","agf");
			            //validamos que la conexion sea exitosa
			            if (!$con)
			            {
			              //si existe error en conexion
			              die('Error conectando: ' . mysql_error());
			            }
			                //si no existe error de conexion
			                //seleccionamos base de datos
			                mysql_select_db("agf", $con);
			                
			                //seleccionamos registros de tabla tb_persona
			                $result = mysql_query("SELECT * FROM tipos_empresas")
			                or die(mysql_error());
			                //el LIMIT se configura con los parametros recibidos
			                //$startIndex
			                //$numItems
			                //EJ. seleccione desde el registro 0 hasta el 10
			                $i=0;
			                while($row = mysql_fetch_row($result))
			                {
			                    //almacenamos los registros en la var array
					     $arr[$i]['ID_TIPO_EMPRESA']=$row[0];
			                     $arr[$i]['nombre']=$row[1];
					     $arr[$i]['descripcion']=$row[2];			                     
			                 $i++; 
			                }
			            //cerramos la conexion con mysql
			            mysql_close($con);
			            
			        //retornamos el arreglo
			        return $arr;
			        
			    }//fin metodo				
/********************************************************************************************************************/	
/****************************SubGrupos*******************************************************************************/

public function comboSubGrupos(){
			        //creando variable array
			        $arr = array();
			        //conectamos con la mysql
			        $con = mysql_connect("localhost","agf","agf");
			            //validamos que la conexion sea exitosa
			            if (!$con)
			            {
			              //si existe error en conexion
			              die('Error conectando: ' . mysql_error());
			            }
			                //si no existe error de conexion
			                //seleccionamos base de datos
			                mysql_select_db("agf", $con);
			                
			                //seleccionamos registros de tabla tb_persona
			                $result = mysql_query("SELECT * FROM subgrupos")
			                or die(mysql_error());
			                //el LIMIT se configura con los parametros recibidos
			                //$startIndex
			                //$numItems
			                //EJ. seleccione desde el registro 0 hasta el 10
			                $i=0;
			                while($row = mysql_fetch_row($result))
			                {
			                    //almacenamos los registros en la var array
					     $arr[$i]['ID_SUBGRUPO']=$row[0];
			                     $arr[$i]['nombre']=$row[1];
					     $arr[$i]['descripcion']=$row[2];			                     
			                 $i++; 
			                }
			            //cerramos la conexion con mysql
			            mysql_close($con);
			            
			        //retornamos el arreglo
			        return $arr;
			        
			    }//fin metodo
			    
			    
	 public function editarSubGrupo($arrInf, $table, $where, $param, $id){
	    					    
            //conectamos con la mysql
            $con = mysql_connect("localhost","agf","agf");
                //validamos que la conexion sea exitosa
                if (!$con)
                {
                  //si existe error en conexion
                  die('Error conectando: ' . mysql_error());
                }
                    //si no existe error de conexion
                    //seleccionamos base de datos
                    mysql_select_db("agf", $con);
                    
                    //seleccionamos todos los registros de tabla tb_persona
		    
		    $sql = "UPDATE " . $table . " SET ";
		    
		    foreach($arrInf as $key => $value){
		    	$sql .= $key . " = '" . $value . "', ";
		    }
		    $sql = substr($sql, 0, -2);
		    $sql .= "  WHERE " . $where . ";";
		    
		    $sql2 = str_replace("'", "", $sql);
		    mysql_query("INSERT INTO log values ('" . $sql2 . "');");
		    $result = mysql_query($sql);
		    $sql = "delete from GRUPOS_SUBGRUPOS WHERE  " . $where . ";";
		    $sql2 = str_replace("'", "", $sql);
		    mysql_query("INSERT INTO log values ('" . $sql2 . "');");
		    mysql_query($sql); 
		    
		    mysql_query("INSERT INTO log values ('" . print_r($param, 1) . "');");
		    
                    $sql = "INSERT INTO GRUPOS_SUBGRUPOS VALUES (" . $param[0] . ", " . $id . ");";
		    $sql2 = str_replace("'", "", $sql);
		    mysql_query("INSERT INTO log values ('" . $sql2 . "');");
                    mysql_query($sql);
                    
                mysql_close($con);
                
            //retornamos el largo del arreglo
            return true;
            
        }


public function insertarSubgrupo($arrInf, $table, $param){
			    
	            //conectamos con la mysql
		    
		    
	            //$con = mysql_connect("localhost","agf","agf");
		    $mysqli = new mysqli("localhost","agf","agf","agf");
	                //validamos que la conexion sea exitosa
	                //if (!$con)
			if (mysqli_connect_errno()) 
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    ///////////////////////mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
			    
			    $sql = "INSERT INTO " . $table . " VALUES (null";
			    for($i = 0; $i < count($arrInf); $i++){
			    	$sql .= ", '" . $arrInf[$i] . "'";
			    }
			    $sql .= ");";
			    
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    
			    $mysqli->query($sql);
	                    $ultimo_id = $mysqli->insert_id;
			    
			    $sql = "INSERT INTO GRUPOS_SUBGRUPOS VALUES (" . $param[0] . ", " . $ultimo_id . ");";
			    $mysqli->query($sql);			    
			    
	                    $mysqli->close();
	                //mysql_close($con);
	                
	            //retornamos el largo del arreglo
		  //  $ultimo_id = mysql_insert_id($con);
	            //return $ultimo_id;
		    $arr = array();
		    $arr[0]['ID'] = $ultimo_id;
		    return $arr;
	            
	        }

public function grillaSubGrupos(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
					
					
					$sql = "SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA  FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo";
					mysql_query("insert into log values ('" . $sql . "');");
	                $result = mysql_query($sql)
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
						$arr[$i]['ID_SUBGRUPO']=$row[0];
	                    $arr[$i]['nombre']=$row[1];
	                    $arr[$i]['descripcion']=$row[2];
						$arr[$i]['ID_TIPO_EMPRESA']=$row[3];
						$i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
	    
	    
	    public function subGrillaSubGrupos($tipo){
	    	        //creando variable array
	    	        $arr = array();
	    	        //conectamos con la mysql
	    	        $con = mysql_connect("localhost","agf","agf");
	    	            //validamos que la conexion sea exitosa
	    	            if (!$con)
	    	            {
	    	              //si existe error en conexion
	    	              die('Error conectando: ' . mysql_error());
	    	            }
	    	                //si no existe error de conexion
	    	                //seleccionamos base de datos
	    	                mysql_select_db("agf", $con);
	    	                
	    	                //seleccionamos registros de tabla tb_persona
	    	                $result = mysql_query("SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA  FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo and ID_TIPO_EMPRESA = " . $tipo . ";")
	    	                or die(mysql_error());
	    	                //el LIMIT se configura con los parametros recibidos
	    	                //$startIndex
	    	                //$numItems
	    	                //EJ. seleccione desde el registro 0 hasta el 10
	    	                $i=0;
	    	                while($row = mysql_fetch_row($result))
	    	                {
	    	                    //almacenamos los registros en la var array
	    			     $arr[$i]['ID_SUBGRUPO']=$row[0];
	    	                     $arr[$i]['nombre']=$row[1];
	    	                     $arr[$i]['descripcion']=$row[2];
	    			     $arr[$i]['ID_TIPO_EMPRESA']=$row[3];
	    	                 $i++; 
	    	                }
	    	            //cerramos la conexion con mysql
	    	            mysql_close($con);
	    	            
	    	        //retornamos el arreglo
	    	        return $arr;
	    	        
	    	    }//fin metodo
	    
	    public function countSubGrupos(){
	    
	            //conectamos con la mysql
	            $con = mysql_connect("localhost","agf","agf");
	                //validamos que la conexion sea exitosa
	                if (!$con)
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
	                    $result = mysql_query("SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo")
	                    or die(mysql_error());
	                    $i=0;
	                    while($row = mysql_fetch_row($result))
	                    {
	                        //almacenamos los registros en la var array
				 $arr[$i]['ID_SUBGRUPO']=$row[0];
	                         $arr[$i]['nombre']=$row[1];
	                         $arr[$i]['descripcion']=$row[2];
				 $arr[$i]['ID_TIPO_EMPRESA']=$row[3];
	                     $i++; 
	                    }
	                mysql_close($con);
	                
	            //retornamos el largo del arreglo
	            return count($arr);
	            
	        }
		
/********************************************************************************************************************/	
/****************************EMPRESA*******************************************************************************/


public function insertarEmpresa($arrInf, $table, $param){
			    
	            //conectamos con la mysql
		    
		    
	            //$con = mysql_connect("localhost","agf","agf");
		    $mysqli = new mysqli("localhost","agf","agf","agf");
	                //validamos que la conexion sea exitosa
	                //if (!$con)
			if (mysqli_connect_errno()) 
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    ///////////////////////mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
			    
				$mysqli->query("INSERT INTO log VALUES ('" . print_r($arrInf, true) . "');");
				
				
				
			    $sql = "INSERT INTO " . $table . " VALUES (null";
			    for($i = 0; $i < count($arrInf); $i++){
			    	$sql .= ", '" . $arrInf[$i] . "'";
			    }
			    $sql .= ", 0);";
			    $sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    
			    $mysqli->query($sql);
	            $ultimo_id = $mysqli->insert_id;
			    
	/*		    $sql = "INSERT INTO GRUPOS_SUBGRUPOS VALUES (" . $param[0] . ", " . $ultimo_id . ");";
				$sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    $mysqli->query($sql);			    
				
				return true;
		*/	    
	                //mysql_close($con);
	                
	            //retornamos el largo del arreglo
		  //  $ultimo_id = mysql_insert_id($con);
	            //return $ultimo_id;
		    $arr = array();
			
			$sql = "INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`, `id_formula`) 
					select null, a.id_tag_agf, " . $ultimo_id . ", b.id_periodo, 'TRIMESTRAL', 0, '1900-01-01', 1, 0
					from tag_agf a, periodos b
					where a.oa = 1";
					
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($sql);


			$sql = "INSERT INTO `empresa_indice`(`id_empresa`, `id_indice_financiero`, `num_formula`, `id_formula`) 
					SELECT " . $ultimo_id . ", id_indice_financiero, 0, id_formula 
					FROM formulas;";
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($sql);
			
			
			$sql = "SELECT b.id_indice_financiero, 
						d.id_empresa, 
						c.id_periodo,						
						(SELECT valor FROM valores WHERE id_tag_agf = a.campo1 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C1,
						(SELECT valor FROM valores WHERE id_tag_agf = a.campo2 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C2,
						(SELECT valor FROM valores WHERE id_tag_agf = a.campo3 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C3,                        
						(SELECT valor FROM valores WHERE id_tag_agf = a.campo4 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C4,         
						(SELECT valor FROM valores WHERE id_tag_agf = a.campo5 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C5, 
						concat(d.rso, ': ', b.nombre), 
						label, 
						formula, 
						a.id_formula, 
						c.ano, 
						c.mes,						
						(SELECT id_valor FROM valores WHERE id_tag_agf = a.campo1 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C1N,
						(SELECT id_valor FROM valores WHERE id_tag_agf = a.campo2 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C2N,
						(SELECT id_valor FROM valores WHERE id_tag_agf = a.campo3 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C3N,                        
						(SELECT id_valor FROM valores WHERE id_tag_agf = a.campo4 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C4N,         
						(SELECT id_valor FROM valores WHERE id_tag_agf = a.campo5 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1) C5N
					FROM formulas a
					   INNER JOIN indices_financieros b 
						ON a.id_indice_financiero = b.id_indice_financiero 
					   INNER JOIN periodos c
					   INNER JOIN empresas d
					WHERE d.id_empresa = " . $ultimo_id . "
						AND a.tipoc1 < 2
						AND a.tipoc2 < 2
						AND a.tipoc3 < 2
						AND a.tipoc4 < 2
						AND a.tipoc5 < 2
										";
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$result = $mysqli->query($sql);
			
			
			$arrResult = array();	
			while($row = $result->fetch_array(MYSQLI_NUM)){
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
				
				$mysqli->query("INSERT INTO log values ('" . $operacion . "');");	
				$evaluacionDiv = explode('/', $operacion);
				if(count($evaluacionDiv) > 1){					
					eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
					if($resultDiv != 0){
						eval( '$res = ' . $operacion . ';');		
					} else {
						$res = 0;
					}
				} else {
					eval( '$res = ' . $operacion . ';');		
				}
				$nuevoValor = (float)$res;
				
				$sql = "INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`, `id_formula`, HIST_FORMULA) 
										VALUES (null,  " . $row[0] . ", " . $row[1] . "," . $row[2] . ", 'TRIMESTRAL', " . $nuevoValor . ",'1900-01-01',2, " . $row[11] . ", '" . $row[14] . "|" . $row[15] . "|" . $row[16] . "|" . $row[17] . "|" . $row[18] . "');";
				$sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				$mysqli->query($sql);
				//$this->insertaCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
			}	
			
			$sql = "SELECT DISTINCT b.id_indice_financiero 
					FROM indices_financieros b 
						INNER JOIN formulas a
							ON a.id_indice_financiero = b.id_indice_financiero
					WHERE (a.tipoc1 > 1
							OR a.tipoc2 > 1
							OR a.tipoc3 > 1
							OR a.tipoc4 > 1
							OR a.tipoc5 > 1)";
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$result = $mysqli->query($sql);
			
			while($rowInd = $result->fetch_array(MYSQLI_NUM)){
			
			
				$sql = "SELECT b.id_indice_financiero, 
					d.id_empresa, 
					c.id_periodo,						
					v.valor C1,
					w.valor C2,
					x.valor C3,                        
					y.valor C4,         
					z.valor C5, 
					concat(d.rso, ': ', b.nombre), 
					label, 
					formula, 
					a.id_formula, 
					c.mes,						
					d.color, d.rso, b.nombre, 				   
					v.id_valor C1H, 
					w.id_valor C2H,
					x.id_valor C3H,
					y.id_valor C4H,
					z.id_valor C5H
				FROM formulas a
					INNER JOIN indices_financieros b 
					 ON a.id_indice_financiero = b.id_indice_financiero					   
					INNER JOIN periodos c
					INNER JOIN empresas d 
					LEFT JOIN valores v ON v.id_tag_agf = a.campo1 
						AND v.tipo = 'TRIMESTRAL' 
						AND v.id_empresa = d.id_empresa                             
						AND v.origen = a.tipoc1                          	
													
						AND v.id_periodo = c.id_periodo
					LEFT JOIN valores w ON w.id_tag_agf = a.campo2 
						AND w.tipo = 'TRIMESTRAL' 
						AND w.id_empresa = d.id_empresa                             
						AND w.origen = a.tipoc2                          	
													
						AND w.id_periodo = c.id_periodo
					LEFT JOIN valores x ON x.id_tag_agf = a.campo3 
						AND x.tipo = 'TRIMESTRAL' 
						AND x.id_empresa = d.id_empresa                             
						AND x.origen = a.tipoc3                          	
						 							
						AND x.id_periodo = c.id_periodo
					LEFT JOIN valores y ON y.id_tag_agf = a.campo4 
						AND y.tipo = 'TRIMESTRAL' 
						AND y.id_empresa = d.id_empresa                             
						AND y.origen = a.tipoc4                          	
													
						AND y.id_periodo = c.id_periodo
					LEFT JOIN valores z ON z.id_tag_agf = a.campo5 
						AND z.tipo = 'TRIMESTRAL' 
						AND z.id_empresa = d.id_empresa                             
						AND z.origen = a.tipoc5                          	
													
						AND z.id_periodo = c.id_periodo					
				WHERE d.id_empresa = " . $ultimo_id . "
						AND b.id_indice_financiero = " . $rowInd[0] . "						
					ORDER BY b.id_indice_Financiero		
					;";  

			
			
				
				$sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				$result2 = $mysqli->query($sql);
				
				
				$arrResult = array();	
				while($row = $result2->fetch_array(MYSQLI_NUM)){
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
					
					//$mysqli->query("INSERT INTO log values ('" . $operacion . "');");	
					$evaluacionDiv = explode('/', $operacion);
					if(count($evaluacionDiv) > 1){					
						eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
						if($resultDiv != 0){
							eval( '$res = ' . $operacion . ';');		
						} else {
							$res = 0;
						}
					} else {
						eval( '$res = ' . $operacion . ';');		
					}
					$nuevoValor = (float)$res;
					
					$sql = "INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`, `id_formula`, hist_formula) 
											VALUES (null,  " . $row[0] . ", " . $row[1] . "," . $row[2] . ", 'TRIMESTRAL', " . $nuevoValor . ",'1900-01-01', 2, " . $row[11] . ", '" . $row[16] . "|" . $row[17] . "|" . $row[18] . "|" . $row[19] . "|" . $row[20] . "');";
					$sql2 = str_replace("'", "''", $sql);
					$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
					$mysqli->query($sql);
					//$this->insertaCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
				}	
			}		
			$mysqli->close();
			//$arr[0]['ID'] = $ultimo_id;
			return true;//$arr;
}

function insertaCascada($nuevoValor, $indice, $empresa, $periodo, $mysqli){
	$sql = "UPDATE valores
					SET
						valor = " . $nuevoValor . "
				WHERE
					origen = 2
				AND
					id_tag_agf = " . $indice ."
				AND 
					id_empresa = " . $empresa . " 
				AND 
					id_periodo = " . $periodo . "
				AND
					origen = 2";
	$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	$mysqli->query($sql);
	$sql = "SELECT  
				b.id_indice_financiero, 
				a.formula,
				'rr',
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo1 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C1,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo2 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C2,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo3 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C3,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo4 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C4,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo5 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C5
			FROM formulas a
				INNER JOIN indices_financieros b ON a.id_formula = b.id_formula 
			WHERE  (a.campo1 = " . $indice . " AND a.tipoc1 = 2) 
				OR (a.campo2 = " . $indice . " AND a.tipoc2 = 2) 
				OR (a.campo3 = " . $indice . " AND a.tipoc3 = 2)
				OR (a.campo4 = " . $indice . " AND a.tipoc4 = 2) 
				OR (a.campo5 = " . $indice . " AND a.tipoc5 = 2)";
	$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	$result = $mysqli->query($sql);
	
	
	
	while($row = $result->fetch_array(MYSQLI_NUM)){
		$operacion = $row[1];

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
		
		//$mysqli->query("INSERT INTO log values ('" . $operacion . "');");	
		eval( "\$res = " . $operacion . ";");		
		$nuevoValor = (float)$res;
		
		$this->actualizarCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
	}	
	return true;
}

		
		public function insertarSubgrupoEmpresa($grupo, $empresas){
					    
			            //conectamos con la mysql
				    
				    
			            //$con = mysql_connect("localhost","agf","agf");
				$mysqli = new mysqli("localhost","agf","agf","agf");
			                //validamos que la conexion sea exitosa
			                //if (!$con)
				if (mysqli_connect_errno()) 
		                {
		                  //si existe error en conexion
		                  die('Error conectando: ' . mysql_error());
		                }
			             
				$sql = "delete from subgrupos_empresas where id_subgrupo = " . $grupo;
				$sql2 = str_replace("'", "", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				$mysqli->query($sql);     
				     
				for($i = 0; $i < count($empresas); $i++){
					$sql = "INSERT INTO subgrupos_empresas VALUES ( " . $grupo . " , " .  $empresas[$i]. " );";
					$mysqli->query($sql);
			                $ultimo_id = $mysqli->insert_id;
					    
					    
				
				}
				    
				    
		                    $mysqli->close();
			              
				    $arr = array();
				    $arr[0]['ID'] = $ultimo_id;
				    return $arr;
			            
			        }
		
public function grillaEmpresa(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT b.`ID_EMPRESA` , `RUT` , `RSO` , `NOMBRE_FANTASIA` , `NOMBRE_BOLSA` , `VALOR_ACCION` , `TIPO_BALANCE` , `TIPO_IFRS` , color
	                FROM `empresas` b ")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_EMPRESA']=$row[0];
			     $arr[$i]['RUT']=$row[1];
	                     $arr[$i]['RSO']=$row[2];
	                     $arr[$i]['NOMBRE_FANTASIA']=$row[3];
			     $arr[$i]['NOMBRE_BOLSA']=$row[4];
			     $arr[$i]['TIPO_BALANCE']=$row[6];			     
			     $arr[$i]['TIPO_IFRS']=$row[7];
			     //$arr[$i]['ID_SUBGRUPO']=$row[8];
			     $arr[$i]['color']=$row[8];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo


	    public function grillaEmpresaSinSubGrupo($id){
	    	        //creando variable array
	    	        $arr = array();
	    	        //conectamos con la mysql
	    	        $con = mysql_connect("localhost","agf","agf");
	    	            //validamos que la conexion sea exitosa
	    	            if (!$con)
	    	            {
	    	              //si existe error en conexion
	    	              die('Error conectando: ' . mysql_error());
	    	            }
	    	                //si no existe error de conexion
	    	                //seleccionamos base de datos
	    	                mysql_select_db("agf", $con);
	    	                
	    	                //seleccionamos registros de tabla tb_persona
							
							$sql = "SELECT  `ID_EMPRESA`, `RUT`, `RSO`, `NOMBRE_FANTASIA`, `NOMBRE_BOLSA`, `VALOR_ACCION`, `TIPO_BALANCE`, `TIPO_IFRS`, `color`, `MONEDA`, `ESTADOS`, `ORIGEN`, `OA`
				    		       FROM Empresas 
						       Where id_empresa not in (select id_empresa from subgrupos_empresas WHERE id_subgrupo = " . $id . ")
						       Order by `NOMBRE_FANTASIA`";
							   $sql2 = str_replace("'", "''", $sql);
						mysql_query("INSERT INTO log values ('" . $sql2 . "');");
	    	                $result = mysql_query($sql)
	    	                or die(mysql_error());
	    	                //el LIMIT se configura con los parametros recibidos
	    	                //$startIndex
	    	                //$numItems
	    	                //EJ. seleccione desde el registro 0 hasta el 10
	    	                $i=0;
	    	                while($row = mysql_fetch_row($result))
	    	                {
	    	                    //almacenamos los registros en la var array
	    			     $arr[$i]['ID_EMPRESA']=$row[0];
	    			     $arr[$i]['RUT']=$row[1];
	    	                     $arr[$i]['RSO']=$row[2];
	    	                     $arr[$i]['NOMBRE_FANTASIA']=$row[3];
	    			     $arr[$i]['NOMBRE_BOLSA']=$row[4];
	    			     $arr[$i]['TIPO_BALANCE']=$row[6];			     
	    			     $arr[$i]['TIPO_IFRS']=$row[7];
				     $arr[$i]['color']=$row[8];
	    	                 $i++; 
	    	                }
	    	            //cerramos la conexion con mysql
	    	            mysql_close($con);
	    	            
	    	        //retornamos el arreglo
	    	        return $arr;
	    	        
	    	    }//fin metodo
			
			
	public function grillaEmpresaDelSubGrupo($cod){
    	        //creando variable array
    	        $arr = array();
    	        //conectamos con la mysql
    	        $con = mysql_connect("localhost","agf","agf");
    	            //validamos que la conexion sea exitosa
    	            if (!$con)
    	            {
    	              //si existe error en conexion
    	              die('Error conectando: ' . mysql_error());
    	            }
    	                //si no existe error de conexion
    	                //seleccionamos base de datos
    	                mysql_select_db("agf", $con);
    	                
    	                //seleccionamos registros de tabla tb_persona
						$sql = "SELECT  `ID_EMPRESA`, `RUT`, `RSO`, `NOMBRE_FANTASIA`, `NOMBRE_BOLSA`, `VALOR_ACCION`, `TIPO_BALANCE`, `TIPO_IFRS`, `color`, `MONEDA`, `ESTADOS`, `ORIGEN`, `OA`  
			    			FROM Empresas 
						Where id_empresa in (select id_empresa from subgrupos_empresas where id_subgrupo = " . $cod . ")";
						$sql2 = str_replace("'", "''", $sql);
						mysql_query("INSERT INTO log values ('" . $sql2 . "');");
						
    	                $result = mysql_query($sql)
    	                or die(mysql_error());
    	                //el LIMIT se configura con los parametros recibidos
    	                //$startIndex
    	                //$numItems
    	                //EJ. seleccione desde el registro 0 hasta el 10
    	                $i=0;
    	                while($row = mysql_fetch_row($result))
    	                {
    	                    //almacenamos los registros en la var array
    			     $arr[$i]['ID_EMPRESA']=$row[0];
    			     $arr[$i]['RUT']=$row[1];
    	                     $arr[$i]['RSO']=$row[2];
    	                     $arr[$i]['NOMBRE_FANTASIA']=$row[3];
    			     $arr[$i]['NOMBRE_BOLSA']=$row[4];
    			     $arr[$i]['TIPO_BALANCE']=$row[6];			     
    			     $arr[$i]['TIPO_IFRS']=$row[7];
			     $arr[$i]['color']=$row[8];
    	                 $i++; 
    	                }
    	            //cerramos la conexion con mysql
    	            mysql_close($con);
    	            
    	        //retornamos el arreglo
    	        return $arr;
    	        
    	    }//fin metodo		

	    
	    public function countEmpresa(){
	    
	            //conectamos con la mysql
	            $con = mysql_connect("localhost","agf","agf");
	                //validamos que la conexion sea exitosa
	                if (!$con)
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
	                    $result = mysql_query("SELECT b.`ID_EMPRESA` , `RUT` , `RSO` , `NOMBRE_FANTASIA` , `NOMBRE_BOLSA` , `VALOR_ACCION` , `TIPO_BALANCE` , `TIPO_IFRS` , color
	                FROM `empresas` b")
	                    or die(mysql_error());
	                    $i=0;
	                    while($row = mysql_fetch_row($result))
	                    {
	                        //almacenamos los registros en la var array
				$arr[$i]['ID_EMPRESA']=$row[0];
							     $arr[$i]['RUT']=$row[1];
					                     $arr[$i]['RSO']=$row[2];
					                     $arr[$i]['NOMBRE_FANTASIA']=$row[4];
							     $arr[$i]['NOMBRE_BOLSA']=$row[6];
							     $arr[$i]['TIPO_BALANCE']=$row[7];			     
							     $arr[$i]['TIPO_IFRS']=$row[8];
	                     	$i++; 
	                    }
	                mysql_close($con);
	                
	            //retornamos el largo del arreglo
	            return count($arr);
	            
	        }		
	


/********************************************************************************************************************/	
/****************************Indices Financieros*******************************************************************************/



		
public function grillaIndicesFinancieros(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
					$sql = "SELECT a.ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, DESCRIPCION, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, formula_desc, rango_superior, rango_inferior,rangos_desc,
							campo1, campo2, campo3, campo4, campo5
	                	                    FROM indices_financieros a, formulas b
	                	                    WHERE a.id_formula = b.id_formula";
	                $result = mysql_query($sql)
	                or die(mysql_error());
					
					$sql2 = str_replace("'", "", $sql);
					mysql_query("INSERT INTO log values ('" . $sql2 . "');");
					
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_INDICE_FINANCIERO']=$row[0];
			     $arr[$i]['id_formula']=$row[1];
	                     $arr[$i]['NOMBRE']=$row[2];
	                     $arr[$i]['DESCRIPCION']=$row[3];
			     $arr[$i]['formula']=$row[4];
			     $arr[$i]['decimales']=$row[5];
			     $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[6];
			     $arr[$i]['formula_desc']=$row[7];
	                     $arr[$i]['rango_superior']=$row[8];
	                     $arr[$i]['rango_inferior']=$row[9];
			     $arr[$i]['rangos_desc']=$row[10];
			     $arr[$i]['campo1']=$row[11];
			     $arr[$i]['campo2']=$row[12];
			     $arr[$i]['campo3']=$row[13];
				 $arr[$i]['campo4']=$row[14];
			     $arr[$i]['campo5']=$row[15];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo


	    		

	    
	    public function countIndicesFinancieros(){
	    
	            //conectamos con la mysql
	            $con = mysql_connect("localhost","agf","agf");
	                //validamos que la conexion sea exitosa
	                if (!$con)
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
	                    $result = mysql_query("SELECT ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, DESCRIPCION, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, formula_desc, rango_superior, rango_inferior,rangos_desc,
	                    							campo1, campo2, campo3 
	                    FROM indices_financieros a, formulas b
	                    WHERE a.id_formula = b.id_formula")
	                    or die(mysql_error());
	                    $i=0;
	                    while($row = mysql_fetch_row($result))
	                    {
	                        //almacenamos los registros en la var array
			     $arr[$i]['ID_INDICE_FINANCIERO']=$row[0];
			     $arr[$i]['id_formula']=$row[1];
	                     $arr[$i]['NOMBRE']=$row[2];
	                     $arr[$i]['DESCRIPCION']=$row[3];
			     $arr[$i]['formula']=$row[4];
			     $arr[$i]['decimales']=$row[5];
			     $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[6];
     			     $arr[$i]['formula_desc']=$row[7];
     	                     $arr[$i]['rango_superior']=$row[8];
     	                     $arr[$i]['rango_inferior']=$row[9];
     			     $arr[$i]['rangos_desc']=$row[10];
     			     $arr[$i]['campo1']=$row[11];
     			     $arr[$i]['campo2']=$row[12];
     			     $arr[$i]['campo3']=$row[13];			     
							     
	                     	$i++; 
	                    }
	                mysql_close($con);
	                
	            //retornamos el largo del arreglo
	            return count($arr);
	            
	        }	
		
		public function comboItems(){
					        //creando variable array
					        $arr = array();
					        //conectamos con la mysql
					        $con = mysql_connect("localhost","agf","agf");
					            //validamos que la conexion sea exitosa
					            if (!$con)
					            {
					              //si existe error en conexion
					              die('Error conectando: ' . mysql_error());
					            }
					                //si no existe error de conexion
					                //seleccionamos base de datos
					                mysql_select_db("agf", $con);
					                
					                //seleccionamos registros de tabla tb_persona
					                $result = mysql_query("SELECT `ID_TAG_AGF`, etiqueta,1 
															FROM tag_agf
															UNION
															SELECT id_indice_financiero, nombre, 2
															from indices_financieros 
															order by 2")
					                or die(mysql_error());
					                //el LIMIT se configura con los parametros recibidos
					                //$startIndex
					                //$numItems
					                //EJ. seleccione desde el registro 0 hasta el 10
					                $i=0;
					                while($row = mysql_fetch_row($result))
					                {
					                    //almacenamos los registros en la var array
							     $arr[$i]['ID_tag_agf']=$row[0];
					                   //  $arr[$i]['nombre']=$row[1];
							     $arr[$i]['etiqueta']=$row[1];
							     //$arr[$i]['componente']=$row[3];
							     $arr[$i]['origen']=$row[2];			                     
					                 $i++; 
					                }
					            //cerramos la conexion con mysql
					            mysql_close($con);
					            
					        //retornamos el arreglo
					        return $arr;
					        
					    }//fin metodo
					    
	public function comboGrupoIndicesFinancieros(){
		//creando variable array
		$arr = array();
		//conectamos con la mysql
		$con = mysql_connect("localhost","agf","agf");
			//validamos que la conexion sea exitosa
			if (!$con)
			{
			  //si existe error en conexion
			  die('Error conectando: ' . mysql_error());
			}
				//si no existe error de conexion
				//seleccionamos base de datos
				mysql_select_db("agf", $con);
				
				//seleccionamos registros de tabla tb_persona
				$result = mysql_query("SELECT * FROM Grupos_Indices_Financieros")
				or die(mysql_error());
				//el LIMIT se configura con los parametros recibidos
				//$startIndex
				//$numItems
				//EJ. seleccione desde el registro 0 hasta el 10
				$i=0;
				while($row = mysql_fetch_row($result))
				{
					//almacenamos los registros en la var array
			 $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[0];
					 $arr[$i]['nombre']=$row[1];
			 $arr[$i]['descripcion']=$row[2];
											 
				 $i++; 
				}
			//cerramos la conexion con mysql
			mysql_close($con);
			
		//retornamos el arreglo
		return $arr;
		
	}//fin metodo
					    			
					    	
	public function insertarIndicesFinancieros($arrInf, $tabla, $arrEmp, $tipo, $formulas, $formulasCampos){
						
	//conectamos con la mysql
		//return 1;		
				
			//$con = mysql_connect("localhost","agf","agf");
		$mysqli = new mysqli("localhost","agf","agf","agf");
				//validamos que la conexion sea exitosa
				//if (!$con)
		if (mysqli_connect_errno()) 
		{
		  //si existe error en conexion
		  die('Error conectando: ' . mysql_error());
		}
					//si no existe error de conexion
					//seleccionamos base de datos
					///////////////////////mysql_select_db("agf", $con);
		//$mysqli->autocommit(FALSE);
					//seleccionamos todos los registros de tabla tb_persona
		$mysqli->query("INSERT INTO log values ('" . print_r($arrInf, 1) . "');");
		$mysqli->query("INSERT INTO log values ('" . $tabla . "');");
		$mysqli->query("INSERT INTO log values ('" . print_r($arrEmp, 1) . "');");		
		$mysqli->query("INSERT INTO log values ('" . $tipo . "');");
		$mysqli->query("INSERT INTO log values ('" . print_r($formulas, 1) . "');");		
		$mysqli->query("INSERT INTO log values ('" . print_r($formulasCampos, 1) . "');");		
		for($i = 0; $i < count($formulasCampos); $i++){
			$formulasCampos[$i] = explode(';', $formulasCampos[$i]);
		}
		
		//exit(0);
		
		
		$sql = "INSERT INTO indices_financieros (`ID_INDICE_FINANCIERO`, `ID_GRUPO_INDICE_FINANCIERO`, 
			`ID_COMPONENTE`, `NOMBRE`, `DESCRIPCION`, `ID_FORMULA`, `FORMULA_DESC`, `RANGO_SUPERIOR`, 
				`RANGO_INFERIOR`, `RANGOS_DESC`, `OA`) 
				VALUES (null, '" . $arrInf[9] . "', 4, '" . $arrInf[0] . "', '" . $arrInf[1] . "', 
				'0', '" . $arrInf[2] . "', '" . $arrInf[5] . "', '" . $arrInf[4] . "', '" . $arrInf[3] . "', 1);";
		$sql2 = str_replace("'", "''", $sql);
		$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
							
		$mysqli->query($sql);			    
		$indiceNuevo = $mysqli->insert_id;
		
		
		
		
		
		$mysqli->query("INSERT INTO log values ('arrInf[6] = " . count($arrInf[6]) . "');");
		$nn = count($formulas);//$arrInf[6]);
		for($ii = 0; $ii < $nn; $ii++){
			$arr = array();
			$arr = $formulasCampos[$ii];//$arrInf[8][$ii];
			$mysqli->query("INSERT INTO log values ('formulasCampos = " . print_r($formulasCampos, true) . "');");
			$mysqli->query("INSERT INTO log values ('arr = " . print_r($arr, true) . "');");
			$formula1 = explode(".", $arr[10]);
			$formula2 = explode(".", $arr[11]);
			$formula3 = explode(".", $arr[12]);
			$formula4 = explode(".", $arr[13]);
			$formula5 = explode(".", $arr[14]);
			
			$formula1[0] = $formula1[0] == 'C' ? 1 : 2;
			$formula2[0] = $formula2[0] == 'C' ? 1 : 2;
			$formula3[0] = $formula3[0] == 'C' ? 1 : 2;
			$formula4[0] = $formula4[0] == 'C' ? 1 : 2;
			$formula5[0] = $formula5[0] == 'C' ? 1 : 2;
			
			if($arr[5] == 'C'){
				$arr[5] = 1;
				$valor1 = ' v.valor C1, ';
				$valorLeft1 = " LEFT JOIN valores v ON v.id_tag_agf = a.campo1 
                            AND v.tipo = 'TRIMESTRAL' 
                            AND v.id_empresa = d.id_empresa                             
                            AND v.origen = a.tipoc1     
							AND v.id_formula =  a.id_formula 							
                            AND v.id_periodo = c.id_periodo ";
			} elseif($arr[5] == 'F'){
				$arr[5] = 2;
			} else {
				$arr[5] = 0;
			}
			
			if($arr[6] == 'C'){
				$arr[6] = 1;
			} elseif($arr[6] == 'F'){
				$arr[6] = 2;
			} else {
				$arr[6] = 0;
			}
			
			if($arr[7] == 'C'){
				$arr[7] = 1;
			} elseif($arr[7] == 'F'){
				$arr[7] = 2;
			} else {
				$arr[7] = 0;
			}
			
			if($arr[8] == 'C'){
				$arr[8] = 1;
			} elseif($arr[8] == 'F'){
				$arr[8] = 2;
			} else {
				$arr[8] = 0;
			}
			
			if($arr[9] == 'C'){
				$arr[9] = 1;
			} elseif($arr[9] == 'F'){
				$arr[9] = 2;
			} else {
				$arr[9] = 0;
			}
			
			$sum = 0;   
			for($i = 0; $i < 5; $i++){
				if($arr[$i] != -1){
					$sum++;
				}
			}   
			
			
			
			$arrInf[6] = str_replace('_', '', $formulas[$ii]);
			
			$sql = "INSERT INTO formulas (`ID_FORMULA`, `CAMPO1`, `CAMPO2`, `CAMPO3`, `CAMPO4`, `CAMPO5`, `tipoc1`, `tipoc2`, 
					`tipoc3`, `tipoc4`, `tipoc5`, `FORMULA`, `CANTIDAD_CAMPOS`, `DECIMALES`, `cod1`, `cod2`, `cod3`, `cod4`, 
					`cod5`, `id_indice_financiero`, `num_formula`) values 
					(null, '" . $arr[0] . "', '" . $arr[1] . "', '" . 
					$arr[2] . "', '" . $arr[3] . "', '" . $arr[4] .
					"', '" . $arr[5] . "', '" . $arr[6] . "', '" . 
					$arr[7] . "', '" . $arr[8] . "', '" . $arr[9]. "', '" . 
					$arrInf[6] . "', '" . $sum . "', '" . $arrInf[7]. "', '" . 
					$arr[10]. "', '" . $arr[11]. "', '" . $arr[12]. "', '" . 
					$arr[13]. "', '" . $arr[14] . "', " . $indiceNuevo . ", " . $ii . " );";
			$sql2 = str_replace("'", "''", $sql);
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($sql);
			$ultimo_id = $mysqli->insert_id;
			
			
			
			if($ii == 0){
				$ultimo = $ultimo_id;
			}
			/*$result = mysql_query($sql)
					or die(mysql_error());*/
						
			
		}
			//$mysqli->query("INSERT INTO log values ('ii = " . $ii . "');");
		$sql = "INSERT INTO `empresa_indice`(`id_empresa`, `id_indice_financiero`, `num_formula`, `id_formula`) 
					SELECT id_empresa, " . $indiceNuevo . ", 0, " . $ultimo . " 
					FROM empresas;";
			$sql2 = str_replace("'", "''", $sql);
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query($sql);
			
		for($i = 0; $i < count($arrEmp); $i++){
			$sql = "INSERT INTO indice_empresa values ('" . $indiceNuevo . "', '" . $arrEmp[$i] . "', '" . $tipo ."');";
			$sql2 = str_replace("'", "''", $sql);
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");				
			$mysqli->query($sql);
		}
		
		$comp1 = ' AND x.id_periodo = c.id_periodo ';
		$comp2 = ' AND x.id_periodo = c.id_periodo ';
		$comp3 = ' AND x.id_periodo = c.id_periodo ';
		$comp4 = ' AND x.id_periodo = c.id_periodo ';
		$comp5 = ' AND x.id_periodo = c.id_periodo ';
			
			//$mysqli->query("INSERT INTO log values ('formula1 = " . print_r($formula1, 1) . "');");
			
		if(count($formula1) > 1){
			switch($formula1[2]){
				case 'NN':
						$comp1 = ' AND x.id_periodo = c.id_periodo ';
						break;
				case 'AN':
						$comp1 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
									FROM periodos m WHERE m.id_periodo = c.id_periodo) ';
						break;
				case 'AA':
						$comp1 = ' AND x.id_periodo        in (SELECT r.id_periodo
									FROM periodos r, periodos p
									WHERE r.ano = p.ano
											  AND r.mes < p.mes
											  AND r.oa = 1
											  AND p.id_periodo = c.id_periodo) ';
						break;
				case 'AC':
					$comp1 = ' AND x.id_periodo        in (SELECT r.id_periodo
							FROM periodos r
							WHERE r.oa = 1
																																														  AND r.orden in 
																																														  (e.orden, e.orden - 1, e.orden - 2,
																																														  e.orden - 3)) ';        
					break;
				case 'AS':
						$comp1 = " AND 'QUERY' ";
						break;        
					
			}
		}
                        
		if(count($formula2) > 1){
			switch($formula2[2]){
				case 'NN':
						$comp2 = ' AND x.id_periodo = c.id_periodo ';
						break;
				case 'AN':
						$comp2 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
									FROM periodos m WHERE m.id_periodo = c.id_periodo) ';
						break;
				case 'AA':
						$comp2 = ' AND x.id_periodo        in (SELECT r.id_periodo
									 FROM periodos r, periodos p
																																																WHERE r.ano = p.ano
																																																		  AND r.mes < p.mes
																																																		  AND r.oa = 1
																																																		  AND p.id_periodo = c.id_periodo) ';
						break;
				case 'AC':
						$comp2 = ' AND x.id_periodo        in (SELECT r.id_periodo
									FROM periodos r
									WHERE r.oa = 1
																																																	  AND r.orden in 
																																																	  (e.orden, e.orden - 1, e.orden - 2,
																																																	  e.orden - 3)) ';        
						break;        
				case 'AS':
						$comp2 = " AND 'QUERY' ";
						break;        
				
			}
		}
                        
		if(count($formula3) > 1){
			switch($formula3[2]){
					case 'NN':
							$comp3 = ' AND x.id_periodo = c.id_periodo ';
							break;
					case 'AN':
							$comp3 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																															FROM periodos m WHERE m.id_periodo = c.id_periodo) ';
							break;
					case 'AA':
							$comp3 = ' AND x.id_periodo        in (SELECT r.id_periodo
																															FROM periodos r, periodos p
																															WHERE r.ano = p.ano
																																	  AND r.mes < p.mes
																																	  AND r.oa = 1
																																	  AND p.id_periodo = c.id_periodo) ';
							break;
					case 'AC':
							$comp3 = ' AND x.id_periodo        in (SELECT r.id_periodo
																															FROM periodos r
																															WHERE r.oa = 1
																																	  AND r.orden in 
																																	  (e.orden, e.orden - 1, e.orden - 2,
																																	  e.orden - 3)) ';        
					break;
					case 'AS':
							$comp3 = " AND 'QUERY' ";
							break;        
			
			}
		}
                        //$mysqli->query("INSERT INTO log values ('" . $formula4[0] . "');");
                        
		if(count($formula4) > 1){
			switch($formula4[2]){
				case 'NN':
						$comp4 = ' AND x.id_periodo = c.id_periodo ';
						break;
				case 'AN':
						$comp4 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
									FROM periodos m WHERE m.id_periodo = c.id_periodo) ';
						break;
				case 'AA':
						$comp4 = ' AND x.id_periodo        in (SELECT r.id_periodo
																FROM periodos r, periodos p
																WHERE r.ano = p.ano
																		  AND r.mes < p.mes
																		  AND r.oa = 1
																		  AND p.id_periodo = c.id_periodo) ';
						break;
				case 'AC':
						$comp4 = ' AND x.id_periodo        in (SELECT r.id_periodo
																FROM periodos r
																WHERE r.oa = 1
																		  AND r.orden in 
																		  (e.orden, e.orden - 1, e.orden - 2,
																		  e.orden - 3)) ';        
						break;
				case 'AS':
						$comp4 = " AND 'QUERY' ";
						break;        
				
			}
		}
                        
		if(count($formula5) > 1){
			switch($formula5[2]){
				case 'NN':
						$comp5 = ' AND x.id_periodo = c.id_periodo ';
						break;
				case 'AN':
						$comp5 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																														FROM periodos m WHERE m.id_periodo = c.id_periodo) ';
						break;
				case 'AA':
						$comp5 = ' AND x.id_periodo        in (SELECT r.id_periodo
																														FROM periodos r, periodos p
																														WHERE r.ano = p.ano
																																  AND r.mes < p.mes
																																  AND r.oa = 1
																																  AND p.id_periodo = c.id_periodo) ';
						break;
				case 'AC':
						$comp5 = ' AND x.id_periodo        in (SELECT r.id_periodo
																														FROM periodos r
																														WHERE r.oa = 1
																																  AND r.orden in 
																																  (e.orden, e.orden - 1, e.orden - 2,
																																  e.orden - 3)) ';        
						break;        
				case 'AS':
						$comp5 = " AND 'QUERY' ";
						break;        
		
			}
		}
			
			
			
			
					$sql = "SELECT b.id_indice_financiero, 
					d.id_empresa, 
					c.id_periodo,						
					v.valor C1,
					w.valor C2,
					x.valor C3,                        
					y.valor C4,         
					z.valor C5, 
					concat(d.rso, ': ', b.nombre), 
					label, 
					formula, 
					a.id_formula, 
					c.mes,						
					d.color, d.rso, b.nombre, 				   
					v.id_valor C1H, 
					w.id_valor C2H,
					x.id_valor C3H,
					y.id_valor C4H,
					z.id_valor C5H
				FROM formulas a
					INNER JOIN indices_financieros b 
					 ON a.id_indice_financiero = b.id_indice_financiero					   
					INNER JOIN periodos c
					INNER JOIN empresas d 
					LEFT JOIN valores v ON v.id_tag_agf = a.campo1 
						AND v.tipo = 'TRIMESTRAL' 
						AND v.id_empresa = d.id_empresa                             
						AND v.origen = a.tipoc1                          	
													
						AND v.id_periodo = c.id_periodo
					LEFT JOIN valores w ON w.id_tag_agf = a.campo2 
						AND w.tipo = 'TRIMESTRAL' 
						AND w.id_empresa = d.id_empresa                             
						AND w.origen = a.tipoc2                          	
													
						AND w.id_periodo = c.id_periodo
					LEFT JOIN valores x ON x.id_tag_agf = a.campo3 
						AND x.tipo = 'TRIMESTRAL' 
						AND x.id_empresa = d.id_empresa                             
						AND x.origen = a.tipoc3                          	
						 							
						AND x.id_periodo = c.id_periodo
					LEFT JOIN valores y ON y.id_tag_agf = a.campo4 
						AND y.tipo = 'TRIMESTRAL' 
						AND y.id_empresa = d.id_empresa                             
						AND y.origen = a.tipoc4                          	
													
						AND y.id_periodo = c.id_periodo
					LEFT JOIN valores z ON z.id_tag_agf = a.campo5 
						AND z.tipo = 'TRIMESTRAL' 
						AND z.id_empresa = d.id_empresa                             
						AND z.origen = a.tipoc5                          	
													
						AND z.id_periodo = c.id_periodo	
				WHERE b.id_indice_financiero = " . $indiceNuevo . "
					;";  
	
			
			
			
			

			
					
					
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");			
			
			$result = $mysqli->query($sql);
					
			$mysqli->query("INSERT INTO log values ('Nº de rows = " . $result->num_rows . "');");
			
			$i = 0;
			$formula = '';
			$operacion = array();
			//$arrInf = array();	
			while($row = $result->fetch_array(MYSQLI_NUM))
			{
						//almacenamos los registros en la var array
				/* $mysqli->query("INSERT INTO log values ('" . print_r($row, 1) . "');");
				 $arr[$i]['id_tag_agf']=$row[0];
				 $arr[$i]['id_empresa']=$row[1];
						 $arr[$i]['id_periodo']=$row[2];	     */
				$operacion = $row[10];
				$mysqli->query("INSERT INTO log values ('operacion = " . $operacion . "');");	 
				if(!isset($row[3]))
				$row[3] = 0;
				//$mysqli->query("INSERT INTO log values ('r3(C1) = " . $row[3] . "');");	
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
				
				$mysqli->query("INSERT INTO log values ('operacion = " . $operacion . "');");	
				$res = 0;
				$evaluacionDiv = explode('/', $operacion);
				if(count($evaluacionDiv) > 1){					
					eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
					if($resultDiv != 0){
						eval( '$res = ' . $operacion . ';');		
					} else {
						$res = 0;
					}
				} else {
					eval( '$res = ' . $operacion . ';');		
				}
				//$mysqli->query("INSERT INTO log values ('operacion = " . $operacion . "');");	
				$mysqli->query("INSERT INTO log values ('res = " . $res . "');");	
				
					
					
				$sql = "INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`, `id_formula`, `hist_formula`) 
				VALUES (null," . $indiceNuevo . "," . $row[1] . "," . $row[2] . ",'TRIMESTRAL'," . $res . ",'2013',2, " . $row[11] . ", '" . $row[16] . "|" . $row[17] . "|" . $row[18] . "|" . $row[19] . "|" . $row[20] . "');";
				$sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");			
				$mysqli->query($sql);
			}	
				
										
				


		
		$sql = "UPDATE indices_financieros 
				SET `id_formula` =  " . $ultimo . "
				WHERE id_indice_financiero = " . $indiceNuevo . ";";
		$sql2 = str_replace("'", "''", $sql);
		$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
		$mysqli->query($sql);	
				
		//$arr[0]['ID'] = $ultimo_id;
		
		return $ultimo;
	   			            
	}
	
	   	public function editarIndicesFinancieros($arrInf2, $table, $where){
	   					    
	   	//conectamos con la mysql
		   
	   			    
	            //$con = mysql_connect("localhost","agf","agf");
		    $mysqli = new mysqli("localhost","agf","agf","agf");
	                //validamos que la conexion sea exitosa
	                //if (!$con)
			//$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$arrInf = array();
   			foreach($arrInf2 as $key => $value){
			    	$arrInf[$key] = $value;
			    }	    
			$mysqli->query("INSERT INTO log values ('" . print_r($arrInf, 1) . "');");
			
			if (mysqli_connect_errno()) 
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    ///////////////////////mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
			    
			    $sum = 0;   
			    for($i = 1; $i < 6 ; $i++){
			    	if($arrInf['campo' . $i] != -1){

						$sum++;
					}
			    }   
			    
			    $sql = "select id_formula from indices_financieros where ". $where .";";
			    $mysqli->query("INSERT INTO log values ('" . $sql . "');");
			    
			    $result = $mysqli->query($sql);			    		
			    $row = $result->fetch_array(MYSQLI_NUM);
			    $mysqli->query("INSERT INTO log values ('" . print_r($result, 1) . "');");
			    	    
			    $sql = "delete from formulas where id_formula = " . $row[0] .";";
			    $sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    				     
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    
			    $mysqli->query($sql);			    
			    $a = isset($arrInf['campo1']) ? $arrInf['campo1'] : -1;
			    $b = isset($arrInf['campo2']) ? $arrInf['campo2'] : -1;
			    $c = isset($arrInf['campo3']) ? $arrInf['campo3'] : -1;
			    
			    $sql = "INSERT INTO formulas values (null, '" . $a . "', '" . $b . "', '" . $c . "', 0, 0, '" . $arrInf['formula'] . "', '" . $sum . "', '" . $arrInf['decimales'] . "');";
			    $sql2 = str_replace("'", "", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    				     
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    
			    $mysqli->query($sql);
	                    $ultimo_id = $mysqli->insert_id;
			    
			    $sql = "update indices_financieros 
						SET ID_GRUPO_INDICE_FINANCIERO = '" . $arrInf['ID_GRUPO_INDICE_FINANCIERO'] . "', 
							nombre = '" . $arrInf['NOMBRE'] . "',  
							descripcion ='" . $arrInf['DESCRIPCION'] . "', 
							id_formula = '" . $ultimo_id . "', 
							formula_desc ='" . $arrInf['formula_desc'] . "', 
							rango_superior = '" . (int)$arrInf['rango_superior'] . "', 
							rango_inferior' = " . (int)$arrInf['rango_inferior'] . "', 
							rangos_desc = '" . $arrInf['rangos_desc'] . "' 
						where " . $where. ";";
			    $sql2 = str_replace("'", "", $sql);
			    $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			       				
			    $mysqli->query($sql);			    
			    
	                    $mysqli->close();
	                //mysql_close($con);
	                
	            //retornamos el largo del arreglo
		  //  $ultimo_id = mysql_insert_id($con);
	            //return $ultimo_id;
		    $arr = array();
		    $arr[0]['ID'] = $ultimo_id;
		    return $arr;
	   			            
	}
	
	
public function grillaGrupoIndices(){
	     $arr = array();
	     	        //conectamos con la mysql
			$con = mysql_connect("localhost","agf","agf");
				//validamos que la conexion sea exitosa
				if (!$con)
				{
				  //si existe error en conexion
				  die('Error conectando: ' . mysql_error());
				}
					//si no existe error de conexion
					//seleccionamos base de datos
					mysql_select_db("agf", $con);
					
					//seleccionamos registros de tabla tb_persona
					$result = mysql_query("SELECT `ID_GRUPO_INDICE_FINANCIERO`, `NOMBRE`, `DESCRIPCION` FROM grupos_indices_financieros")
					or die(mysql_error());
					//el LIMIT se configura con los parametros recibidos
					//$startIndex
					//$numItems
					//EJ. seleccione desde el registro 0 hasta el 10
					$i=0;
					while($row = mysql_fetch_row($result))
					{
						//almacenamos los registros en la var array
						 $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[0];
						 $arr[$i]['nombre']=$row[1];
						 $arr[$i]['descripcion']=$row[2];
						 $i++; 
					}
				//cerramos la conexion con mysql
				mysql_query("INSERT INTO log VALUES ('" . print_r($arr, true) . "');");
				mysql_close($con);
				
			//retornamos el arreglo
			return $arr;
			
		}//fin metodo
		
function grillaGrupoIndices2(){
	     $arr = array();
	     	        //conectamos con la mysql
			$con = mysql_connect("localhost","agf","agf");
				//validamos que la conexion sea exitosa
				if (!$con)
				{
				  //si existe error en conexion
				  die('Error conectando: ' . mysql_error());
				}
					//si no existe error de conexion
					//seleccionamos base de datos
					mysql_select_db("agf", $con);
					
					//seleccionamos registros de tabla tb_persona
					$result = mysql_query("SELECT `ID_GRUPO_INDICE_FINANCIERO`, `NOMBRE`, `DESCRIPCION` FROM grupos_indices_financieros")
					or die(mysql_error());
					//el LIMIT se configura con los parametros recibidos
					//$startIndex
					//$numItems
					//EJ. seleccione desde el registro 0 hasta el 10
					$i=0;
					while($row = mysql_fetch_row($result))
					{
						//almacenamos los registros en la var array
						 $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[0];
						 $arr[$i]['nombre']=$row[1];
						 $arr[$i]['descripcion']=$row[2];
						 $i++; 
					}
				//cerramos la conexion con mysql
				mysql_query("INSERT INTO log VALUES ('" . print_r($arr, true) . "');");
				mysql_close($con);
				
			//retornamos el arreglo
			return $arr;
			
		}//fin metodo
	     	    
	     	    public function countGrupoIndices(){
	     	    
	     	            //conectamos con la mysql
	     	            $con = mysql_connect("localhost","agf","agf");
	     	                //validamos que la conexion sea exitosa
	     	                if (!$con)
	     	                {
	     	                  //si existe error en conexion
	     	                  die('Error conectando: ' . mysql_error());
	     	                }
	     	                    //si no existe error de conexion
	     	                    //seleccionamos base de datos
	     	                    mysql_select_db("agf", $con);
	     	                    
	     	                    //seleccionamos todos los registros de tabla tb_persona
	     	                    $result = mysql_query("SELECT * FROM grupos_indices_financieros")
	     	                    or die(mysql_error());
	     	                    $i=0;
	     	                    while($row = mysql_fetch_row($result))
	     	                    {
	     	                        //almacenamos los registros en la var array
	     				 $arr['ID_GRUPO_INDICE_FINANCIERO']=$row[0];
	     	                         $arr['nombre']=$row[1];
	     	                         $arr[$i]['descripcion']=$row[2];
	     	                     $i++; 
	     	                    }
	     	                mysql_close($con);
	     	                
	     	            //retornamos el largo del arreglo
	     	            return count($arr);
	     	            
	     	        }
			     
			     
public function grillaMonedas($startIndex, $numItems){
	     $arr = array();
	     	        //conectamos con la mysql
	     	        $con = mysql_connect("localhost","agf","agf");
	     	            //validamos que la conexion sea exitosa
	     	            if (!$con)
	     	            {
	     	              //si existe error en conexion
	     	              die('Error conectando: ' . mysql_error());
	     	            }
	     	                //si no existe error de conexion
	     	                //seleccionamos base de datos
	     	                mysql_select_db("agf", $con);
	     	                
	     	                //seleccionamos registros de tabla tb_persona
	     	                $result = mysql_query("SELECT id, nombre, codigo, valor_defecto,
	     	                CASE operacion
	     	                WHEN '*'
	     	                THEN 'Multiplicar'
	     	                WHEN '/'
	     	                THEN 'Dividir'
	     	                END as op, signo, cantidad_decimal
	     	                FROM monedas LIMIT $startIndex, $numItems")
	     	                or die(mysql_error());
	     	                //el LIMIT se configura con los parametros recibidos
	     	                //$startIndex
	     	                //$numItems
	     	                //EJ. seleccione desde el registro 0 hasta el 10
	     	                $i=0;
	     	                while($row = mysql_fetch_array($result))
	     	                {
	     	                    //almacenamos los registros en la var array
	     			     $arr[$i]['id']=$row['id'];
	     	                     $arr[$i]['nombre']=$row['nombre'];
	     	                     $arr[$i]['codigo']=$row['codigo'];
	     			     $arr[$i]['valor_defecto']=$row['valor_defecto'];
	     	                     $arr[$i]['operacion']=$row['op'];
	     	                     $arr[$i]['signo']=$row['signo'];
	     			     $arr[$i]['cantidad_decimal']=$row['cantidad_decimal'];	     	                     
	     	                 $i++; 
	     	                }
	     	            //cerramos la conexion con mysql
	     	            mysql_close($con);
	     	            
	     	        //retornamos el arreglo
	     	        return $arr;
	     	        
	     	    }//fin metodo
	     	    
	     	    public function countMonedas(){
	     	    
	     	            //conectamos con la mysql
	     	            $con = mysql_connect("localhost","agf","agf");
	     	                //validamos que la conexion sea exitosa
	     	                if (!$con)
	     	                {
	     	                  //si existe error en conexion
	     	                  die('Error conectando: ' . mysql_error());
	     	                }
	     	                    //si no existe error de conexion
	     	                    //seleccionamos base de datos
	     	                    mysql_select_db("agf", $con);
	     	                    
	     	                    //seleccionamos todos los registros de tabla tb_persona
	     	                    $result = mysql_query("SELECT * FROM monedas")
	     	                    or die(mysql_error());
	     	                    $i=0;
	     	                    while($row = mysql_fetch_row($result))
	     	                    {
	     	                        //almacenamos los registros en la var array
	     				 $arr['ID_MONEDA']=$row[0];	     	                         
	     	                     $i++; 
	     	                    }
	     	                mysql_close($con);
	     	                
	     	            //retornamos el largo del arreglo
	     	            return count($arr);
	     	            
	     	        }
	
	public function grillaTodasEmpresa(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT a.`ID_EMPRESA` , `RUT` , `RSO` , `NOMBRE_FANTASIA` , `NOMBRE_BOLSA` , `VALOR_ACCION` , `TIPO_BALANCE` , `TIPO_IFRS` , a.`ID_SUBGRUPO`
	                FROM `subgrupos_empresas` a, `empresas` b
	                WHERE a.`ID_EMPRESA` = b.`ID_EMPRESA`")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_EMPRESA']=$row[0];
			     $arr[$i]['RUT']=$row[1];
	                     $arr[$i]['RSO']=$row[2];
	                     $arr[$i]['NOMBRE_FANTASIA']=$row[3];
			     $arr[$i]['NOMBRE_BOLSA']=$row[4];
			     $arr[$i]['TIPO_BALANCE']=$row[6];			     
			     $arr[$i]['TIPO_IFRS']=$row[7];
			     $arr[$i]['ID_SUBGRUPO']=$row[8];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo			

	public function grillaTodosGrupos(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT * FROM tipos_empresas")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_TIPO_EMPRESA']=$row[0];
	                     $arr[$i]['nombre']=$row[1];
	                     $arr[$i]['descripcion']=$row[2];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
	    
	public function grillaTodoSubGrupos(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT a.ID_SUBGRUPO, nombre, descripcion, ID_TIPO_EMPRESA  FROM subgrupos a, grupos_subgrupos b where a.id_subgrupo = b.id_subgrupo")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_SUBGRUPO']=$row[0];
	                     $arr[$i]['nombre']=$row[1];
	                     $arr[$i]['descripcion']=$row[2];
			     $arr[$i]['ID_TIPO_EMPRESA']=$row[3];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo	
	    
public function grillaTodosGrupoIndices(){
	     $arr = array();
	     	        //conectamos con la mysql
	     	        $con = mysql_connect("localhost","agf","agf");
	     	            //validamos que la conexion sea exitosa
	     	            if (!$con)
	     	            {
	     	              //si existe error en conexion
	     	              die('Error conectando: ' . mysql_error());
	     	            }
	     	                //si no existe error de conexion
	     	                //seleccionamos base de datos
	     	                mysql_select_db("agf", $con);
	     	                
	     	                //seleccionamos registros de tabla tb_persona
	     	                $result = mysql_query("SELECT * FROM grupos_indices_financieros")
	     	                or die(mysql_error());
	     	                //el LIMIT se configura con los parametros recibidos
	     	                //$startIndex
	     	                //$numItems
	     	                //EJ. seleccione desde el registro 0 hasta el 10
	     	                $i=0;
	     	                while($row = mysql_fetch_row($result))
	     	                {
	     	                    //almacenamos los registros en la var array
	     			     $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[0];
	     	                     $arr[$i]['nombre']=$row[1];
	     	                     $arr[$i]['descripcion']=$row[2];
	     	                 $i++; 
	     	                }
	     	            //cerramos la conexion con mysql
	     	            mysql_close($con);
	     	            
	     	        //retornamos el arreglo
	     	        return $arr;
	     	        
	     	    }//fin metodo	    
			 
	public function grillaTodoIndicesFinancieros(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT a.ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, DESCRIPCION, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, formula_desc, rango_superior, rango_inferior,rangos_desc,
							campo1, campo2, campo3
	                	                    FROM indices_financieros a, formulas b
	                	                    WHERE a.id_formula = b.id_formula")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_INDICE_FINANCIERO']=$row[0];
			     $arr[$i]['id_formula']=$row[1];
	                     $arr[$i]['NOMBRE']=$row[2];
	                     $arr[$i]['DESCRIPCION']=$row[3];
			     $arr[$i]['formula']=$row[4];
			     $arr[$i]['decimales']=$row[5];
			     $arr[$i]['ID_GRUPO_INDICE_FINANCIERO']=$row[6];
			     $arr[$i]['formula_desc']=$row[7];
	                     $arr[$i]['rango_superior']=$row[8];
	                     $arr[$i]['rango_inferior']=$row[9];
			     $arr[$i]['rangos_desc']=$row[10];
			     $arr[$i]['campo1']=$row[11];
			     $arr[$i]['campo2']=$row[12];
			     $arr[$i]['campo3']=$row[13];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
	    
	function comboEmpresa(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT `ID_EMPRESA` , `RUT` , `RSO` , `NOMBRE_FANTASIA` , `NOMBRE_BOLSA` , `VALOR_ACCION` , `TIPO_BALANCE` , `TIPO_IFRS`, color 
	                	                FROM `empresas` 
	                ")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['ID_EMPRESA']=$row[0];
			     $arr[$i]['RUT']=$row[1];
	                     $arr[$i]['RSO']=$row[2];
	                     $arr[$i]['NOMBRE_FANTASIA']=$row[3];
			     $arr[$i]['NOMBRE_BOLSA']=$row[4];
			     $arr[$i]['TIPO_BALANCE']=$row[6];			     
			     $arr[$i]['TIPO_IFRS']=$row[7];
			     $arr[$i]['color']=$row[8];
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
	    
	    
	function valores($principal, $idEmpresas, $idPeriodos, $formulas, $op){//
	        //creando variable array
	    $arr  = array();
		$arr2 = array();
		$arr3 = array();
		
		
		
	        //conectamos con la mysql
		if($idPeriodos == 'AND a.id_periodo in (0)'){
			$idPeriodos=' and d.mes <> 0 ';
		}
			
	    $mysqli = new mysqli("localhost","agf","agf","agf");
	            //validamos que la conexion sea exitosa
		if (mysqli_connect_errno()) 
		{
		  //si existe error en conexion
		  die('Error conectando: ' . mysql_error());
		}
                //si no existe error de conexion
                //seleccionamos base de datos
               // $op = 'Trimestral';
       $mysqli->query("INSERT INTO log values ('$principal, $idEmpresas, $idPeriodos, $formulas, $op');");		
		
		$comp1 = ' AND x.id_periodo = c.id_periodo ';
		$comp2 = ' AND x.id_periodo = c.id_periodo ';
		$comp3 = ' AND x.id_periodo = c.id_periodo ';
		$comp4 = ' AND x.id_periodo = c.id_periodo ';
		$comp5 = ' AND x.id_periodo = c.id_periodo ';
		$f = explode("b.id_indice_financiero in (", $formulas);
		$f = explode(")", $f[1]);
		$f = explode(",", $f[0]);
		$arrResult = array();
		$ind = 0;
		
		$e = explode(":", $idEmpresas);
		$ee = count(explode(",", $e[0]));
		
		//$mysqli->query("INSERT INTO log values ('" . print_r($f, true) . "');");		
		$jj = 0;
		for($j = 1; $j < count($f) ; $j++, $jj++){
			$arrEmpresas = array();
			$sql = "SELECT `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`
									FROM `formulas` a, `indices_financieros` b
									WHERE a.`ID_FORMULA` = b.`ID_FORMULA` 
										AND b.`id_indice_financiero` = " . $f[$j] . ";";
										
			$sql2 = str_replace("'", "''", $sql);
	       // $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");									
			$result = $mysqli->query($sql);	
										
			while($row = $result->fetch_array(MYSQLI_NUM)){
				$formula1 = explode(".", $row[0]);
				$formula2 = explode(".", $row[1]);
				$formula3 = explode(".", $row[2]);
				$formula4 = explode(".", $row[3]);
				$formula5 = explode(".", $row[4]);
				//$mysqli->query("INSERT INTO log values ('" . print_r($formula1, 1) . "');");		
				$formula1[0] = $formula1[0] == 'C' ? 1 : 2;
				$formula2[0] = $formula2[0] == 'C' ? 1 : 2;
				$formula3[0] = $formula3[0] == 'C' ? 1 : 2;
				$formula4[0] = $formula4[0] == 'C' ? 1 : 2;
				$formula5[0] = $formula5[0] == 'C' ? 1 : 2;
	
				$comp1 = ' AND x.id_periodo = c.id_periodo ';
				$comp2 = ' AND x.id_periodo = c.id_periodo ';
				$comp3 = ' AND x.id_periodo = c.id_periodo ';
				$comp4 = ' AND x.id_periodo = c.id_periodo ';
				$comp5 = ' AND x.id_periodo = c.id_periodo ';
				
				if(count($formula1) > 1){
					switch($formula1[2]){
						case 'NN':
							$comp1 = ' AND x.id_periodo = c.id_periodo ';
							break;
						case 'AN':
							$comp1 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																			FROM periodos m WHERE m.id_periodo = a.id_periodo) ';
							break;
						case 'AA':
							$comp1 = ' AND x.id_periodo	in (SELECT r.id_periodo
																			FROM periodos r, periodos p
																			WHERE r.ano = p.ano
																				  AND r.mes < p.mes
																				  AND r.oa = 1
																				  AND p.id_periodo = a.id_periodo) ';
							break;
						case 'AC':
						$comp1 = ' AND x.id_periodo	in (SELECT r.id_periodo
																		FROM periodos r
																		WHERE r.oa = 1
																			  AND r.orden in 
																			  (e.orden, e.orden - 1, e.orden - 2,
																			  e.orden - 3)) ';	
						break;	
						case 'AS':
							$comp1 = " AND 'QUERY' ";
							break;	
					
					}
				}
				
				if(count($formula2) > 1){
					switch($formula2[2]){
						case 'NN':
							$comp2 = ' AND x.id_periodo = c.id_periodo ';
							break;
						case 'AN':
							$comp2 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																			FROM periodos m WHERE m.id_periodo = a.id_periodo) ';
							break;
						case 'AA':
							$comp2 = ' AND x.id_periodo	in (SELECT r.id_periodo
																			FROM periodos r, periodos p
																			WHERE r.ano = p.ano
																				  AND r.mes < p.mes
																				  AND r.oa = 1
																				  AND p.id_periodo = a.id_periodo) ';
							break;
						case 'AC':
						$comp2 = ' AND x.id_periodo	in (SELECT r.id_periodo
																		FROM periodos r
																		WHERE r.oa = 1
																			  AND r.orden in 
																			  (e.orden, e.orden - 1, e.orden - 2,
																			  e.orden - 3)) ';	
						break;	
						case 'AS':
							$comp2 = " AND 'QUERY' ";
							break;	
					
					}
				}
				
				if(count($formula3) > 1){
					switch($formula3[2]){
						case 'NN':
							$comp3 = ' AND x.id_periodo = c.id_periodo ';
							break;
						case 'AN':
							$comp3 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																			FROM periodos m WHERE m.id_periodo = a.id_periodo) ';
							break;
						case 'AA':
							$comp3 = ' AND x.id_periodo	in (SELECT r.id_periodo
																			FROM periodos r, periodos p
																			WHERE r.ano = p.ano
																				  AND r.mes < p.mes
																				  AND r.oa = 1
																				  AND p.id_periodo = a.id_periodo) ';
							break;
						case 'AC':
						$comp3 = ' AND x.id_periodo	in (SELECT r.id_periodo
																		FROM periodos r
																		WHERE r.oa = 1
																			  AND r.orden in 
																			  (e.orden, e.orden - 1, e.orden - 2,
																			  e.orden - 3)) ';	
						break;
						case 'AS':
							$comp3 = " AND 'QUERY' ";
							break;	
					
					}
				}
				//$mysqli->query("INSERT INTO log values ('" . $formula4[0] . "');");
				
				if(count($formula4) > 1){
					switch($formula4[2]){
						case 'NN':
							$comp4 = ' AND x.id_periodo = c.id_periodo ';
							break;
						case 'AN':
							$comp4 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																			FROM periodos m WHERE m.id_periodo = a.id_periodo) ';
							break;
						case 'AA':
							$comp4 = ' AND x.id_periodo	in (SELECT r.id_periodo
																			FROM periodos r, periodos p
																			WHERE r.ano = p.ano
																				  AND r.mes < p.mes
																				  AND r.oa = 1
																				  AND p.id_periodo = a.id_periodo) ';
							break;
						case 'AC':
						$comp4 = ' AND x.id_periodo	in (SELECT r.id_periodo
																		FROM periodos r
																		WHERE r.oa = 1
																			  AND r.orden in 
																			  (e.orden, e.orden - 1, e.orden - 2,
																			  e.orden - 3)) ';	
						break;	
						case 'AS':
							$comp4 = " AND 'QUERY' ";
							break;	
					
					}
				}
				
				if(count($formula5) > 1){
					switch($formula5[2]){
						case 'NN':
							$comp5 = ' AND x.id_periodo = c.id_periodo ';
							break;
						case 'AN':
							$comp5 = ' AND x.id_periodo = (SELECT (SELECT MAX(id_periodo) FROM periodos WHERE orden = m.orden - 1) 
																			FROM periodos m WHERE m.id_periodo = a.id_periodo) ';
							break;
						case 'AA':
							$comp5 = ' AND x.id_periodo	in (SELECT r.id_periodo
																			FROM periodos r, periodos p
																			WHERE r.ano = p.ano
																				  AND r.mes < p.mes
																				  AND r.oa = 1
																				  AND p.id_periodo = a.id_periodo) ';
							break;
						case 'AC':
						$comp5 = ' AND x.id_periodo	in (SELECT r.id_periodo
																		FROM periodos r
																		WHERE r.oa = 1
																			  AND r.orden in 
																			  (e.orden, e.orden - 1, e.orden - 2,
																			  e.orden - 3)) ';	
						break;	
						case 'AS':
							$comp5 = " AND QUERY ";
							break;	
					
					}
				}
			
				
				$sql = "SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, 
							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, 
							ano year, label, concat(b.rso, ': ', c.nombre) nombre_final, 
							1 graf,a.`ID_EMPRESA`, a.hist_formula, mes
						FROM `valores` a 								
							INNER JOIN empresas b
								ON a.id_empresa = b.id_empresa									
							INNER JOIN indices_financieros c
								ON a.id_tag_agf = c.id_indice_financiero									
							INNER JOIN periodos d
								ON a.id_periodo = d.id_periodo		
							INNER JOIN empresa_indice e
								ON e.id_empresa = b.id_empresa
								AND e.id_formula = a.id_formula
						WHERE a.`ID_TAG_AGF` = " . $row[5] . "
							AND a.origen = 2
							AND b.id_empresa in (" . $e[$jj] . " " . $idPeriodos . "
						order by 8, 14, 2;";

				$sqlCmp = "SELECT a.`ID_TAG_AGF`, rso, color, a.`VALOR`, 
							c.nombre indice, a.`ID_PERIODO`, 0 nro_grafico, 
							ano year, label,  concat(b.rso, ': ', c.nombre) nombre_final, 
							1 graf,a.`ID_EMPRESA`, a.hist_formula,mes
						FROM `valores` a 								
							INNER JOIN empresas b
								ON a.id_empresa = b.id_empresa									
							INNER JOIN indices_financieros c
								ON a.id_tag_agf = c.id_indice_financiero									
							INNER JOIN periodos d
								ON a.id_periodo = d.id_periodo									
							INNER JOIN empresa_indice e
								ON e.id_empresa = b.id_empresa
								AND e.id_formula = a.id_formula
						WHERE a.`ID_TAG_AGF` = " . $row[5] . "							
							AND a.origen = 2					
							AND b.id_empresa = " . $principal . " " . $idPeriodos . "
						order by 8, 14, 2;";
					 
			}
			
			$sql2 = str_replace("'", "''", $sql);
	       // $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");			
		
			$result = $mysqli->query($sql)
			or die(mysql_error());
			
			$sql2 = str_replace("'", "''", $sqlCmp);
	       // $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");			
			
			$resultCmp = $mysqli->query($sqlCmp)
			or die(mysql_error());
			$i = 0;
			$formula = '';
			$operacion = array();
			$arrInf = array();
			$arr = array();
			$arrF = array();
			$arr2 = array();
			$arrF2 = array();
			$arr3 = array();
			$arrF3 = array();
			$rowCmp = $resultCmp->fetch_array(MYSQLI_NUM);
			
			while($row2 = $result->fetch_array(MYSQLI_NUM))
	        {
				
				if($row2[8] != $rowCmp[8]){
					$rowCmp = $resultCmp->fetch_array(MYSQLI_NUM);
					
				}
				
				//$mysqli->query("INSERT INTO log values ('rowCmp = " . print_r($rowCmp, true) . "');");		
				//$mysqli->query("INSERT INTO log values ('row2 = " . print_r($row2, true) . "');");		

				$arr[$i]['id_tag_agf']=$row2[0];
			    $arr[$i]['id_empresa'] = $row2[11];
	            $arr[$i]['id_periodo']=$row2[5];	     
			     
				$arr[$i]['valor'] = (float)$row2[3];
				//$mysqli->query("INSERT INTO log values ('" . $res . "');");	
				$arr[$i]['nombre_final']=$row2[9];
				$arr[$i]['label'] = $row2[8];			
				$arr[$i]['color'] = $row2[2];
				$arr[$i]['graf'] = 1;	
				$arr[$i]['rso'] = $row2[1];
				$arr[$i]['indice'] = $row2[4];
				$arr[$i]['year'] = $row2[7];
				$arr[$i]['nro_grafico'] = $jj;
				$campos = array();
				$campos = explode('|', $row2[12]);
				
				
				for($w = 0; $w < count($campos); $w++){
					if($campos[$w] != ''){
						$swArr = true;
						$campo = array();
						$campo[0] = $campos[$w];
						$s = 0;
						while($swArr && $s < count($campo)){
							
							
							$sqlReq = "SELECT a.origen
										FROM valores a 
										WHERE a.id_valor = " . $campo[$s] . "
											;";
							$sql2 = str_replace("'", "''", $sqlReq);
						//	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");			
							$resultReq = $mysqli->query($sqlReq);							
							$rOrigen = $resultReq->fetch_array(MYSQLI_NUM);
						//	$mysqli->query("INSERT INTO log values ('ORIGEN = " . $rOrigen[0] . "');");			
							if($rOrigen[0] == 1){
								$s++;							
								//$mysqli->query("INSERT INTO log values ('S = " . $s . " y COUNT: " . count($campo) . "');");			
								//$mysqli->query("INSERT INTO log values ('campo = " . print_r($campo, true) . "');");	
							} else {
								$sqlReq = "SELECT a.origen, a.hist_formula
											FROM valores a 
												INNER JOIN empresa_indice b
												ON a.id_formula = b.id_formula
											WHERE a.id_valor = " . $campo[$s] . "
												;";
								$sql2 = str_replace("'", "''", $sqlReq);
							//	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");			
								$resultReq = $mysqli->query($sqlReq);
								
							//	$mysqli->query("INSERT INTO log values ('NRO ROWS: " . $resultReq->num_rows . "');");		
								
								if($resultReq->num_rows == 0){
									$swArr = false;
									break;
								} else {
									$rOrigen = $resultReq->fetch_array(MYSQLI_NUM);
									//$mysqli->query("INSERT INTO log values ('ORIGEN = " . print_r($rOrigen, true) . "');");		
									$arrPre = explode("|", $rOrigen[1]);
									$arrDef = array();
									for($y = 0; $y < 5; $y++){
										if($arrPre[$y] != ""){
											$arrDef[count($arrDef)] = $arrPre[$y];
										}										
									}
									$campo = array_merge($campo, $arrDef);		
									$s++;
								}
							}
							
							
						}
					}
					
					if(!$swArr){
						break;
					}		
				}
				
				if($swArr){
					$arrF[count($arrF)] = $arr[$i];
					//$mysqli->query("INSERT INTO log values ('" . print_r($arrF, true) . "');");	
					$arr2[$i]['id_tag_agf']=$row2[0];
				    $arr2[$i]['id_empresa']=$row2[11];
		            $arr2[$i]['id_periodo']=$row2[5];	     
				    if($rowCmp[3] != 0){
						$arr2[$i]['valor'] = (float)($row2[3]/$rowCmp[3]);
					} else {
						$arr2[$i]['valor'] = (float)0;
					}
					
					//$mysqli->query("INSERT INTO log values ('" . $res . "');");	
					$arr2[$i]['nombre_final']=$row2[9];
					$arr2[$i]['label'] = $row2[8];			
					$arr2[$i]['color'] = $row2[2];
					$arr2[$i]['graf'] = 2;	
					$arr2[$i]['rso'] = $row2[1];
					$arr2[$i]['indice'] = $row2[4];
					$arr2[$i]['year'] = $row2[7];
					$arr2[$i]['nro_grafico'] = $jj;
					
					
					
				//	$mysqli->query("INSERT INTO log values ('ARR2: " . print_r($arr2, true) . "');");	
					
					
					$num = count(explode(',', $e[$jj])) - 1;
					
					//$mysqli->query("INSERT INTO log values ('" .($i - $num) . "');");	
					//$mysqli->query("INSERT INTO log values ('" .print_r($e, 1) . " num = $num');");	
					if($i - $num + 1 > 0){
					//$mysqli->query("INSERT INTO log values (' empresa : " .$row[8] . " ');");	
						$arr3[$i]['id_tag_agf']=$row2[0];
					    $arr3[$i]['id_empresa']=$row2[11];
			            $arr3[$i]['id_periodo']=$row2[5];	   			    
						$arr3[$i]['nombre_final']=$row2[9];
						$arr3[$i]['label'] = $row2[8];			
						$arr3[$i]['color'] = $row2[2];
						$arr3[$i]['graf'] = 3;		
						$arr3[$i]['rso'] = $row2[1];
						$arr3[$i]['indice'] = $row2[4];
						$arr3[$i]['year'] = $row2[7];
						$arr3[$i]['nro_grafico'] = $jj;
						if($arr[$i - $num]['valor'] == 0){
							$arr3[$i]['valor'] = (float)0;
						//	$mysqli->query("INSERT INTO log values (' Indice : " .($i - $num) . " es 0  empresa : " .$row[8] . " ');");	
						} else {
							$arr3[$i]['valor'] = (float)((($arr[$i]['valor']/$arr[$i - $num]['valor']) - 1) * 100);
						//	$mysqli->query("INSERT INTO log values (' $res/" .$arr[$i - $num]['valor'] .  " empresa : " .$row[8] . "');");	
						}
						
					
					}				
				}	
				$i++;
	        }		
			//$mysqli->query("INSERT INTO log values ('" . print_r($arr, 1) . "');");	
			
			
			$result = array_merge($arrF, $arr2, $arr3);    
			$arrResult[$ind++] = $result; 	
		    /*$mysqli->query("INSERT INTO log values ('" . print_r($arr, 1) . "');");
		    $mysqli->query("INSERT INTO log values ('" . print_r($arr2, 1) . "');");
		    $mysqli->query("INSERT INTO log values ('" . print_r($result, 1) . "');");*/
			
		}
				
		$result2 = array();
		$s = 0;
	/*	for($i = 0; $i < count($result); $i++){
			for($j = 0; $j < count($f) - 1; $j++){
				$result2[$s++] = $arrResult[$j][$i];
			}
		}
        $mysqli->query("INSERT INTO log values ('" . print_r($result, 1) . "');");						 
		$mysqli->query("INSERT INTO log values ('" . print_r($result2, 1) . "');");						 
*/		
	    
	    //$mysqli->query("INSERT INTO log values ('" . print_r($arrResult, 1) . "');");
	     
        $mysqli->close();
        
        //retornamos el arreglo
        //return $result2;
		
		return $arrResult;
	        
	}//fin metodo

function periodos(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query("SELECT `ID_periodo` , `label` , `oa`, ano, mes
	                	                FROM `periodos`
						order by  ano, mes
	                ")
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['id_periodo']=$row[0];
			     $arr[$i]['RSO']=$row[1];
	                     $arr[$i]['oa']=$row[2];
	                   
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
	    
	    
	    
	    
public function grillaAgf(){
	     $arr = array();
	     	        //conectamos con la mysql
	     	        $con = mysql_connect("localhost","agf","agf");
	     	            //validamos que la conexion sea exitosa
	     	            if (!$con)
	     	            {
	     	              //si existe error en conexion
	     	              die('Error conectando: ' . mysql_error());
	     	            }
	     	                //si no existe error de conexion
	     	                //seleccionamos base de datos
	     	                mysql_select_db("agf", $con);
	     	                
	     	                //seleccionamos registros de tabla tb_persona
	     	                $result = mysql_query("SELECT id_tag_agf, nombre, etiqueta, origen	     	                
	     	                FROM tag_agf order by nombre")
	     	                or die(mysql_error());
	     	                //el LIMIT se configura con los parametros recibidos
	     	                //$startIndex
	     	                //$numItems
	     	                //EJ. seleccione desde el registro 0 hasta el 10
	     	                $i=0;
	     	                while($row = mysql_fetch_array($result))
	     	                {
	     	                    //almacenamos los registros en la var array
	     			     $arr[$i]['id_tag_agf']=$row['id_tag_agf'];
	     	                     $arr[$i]['nombre']=$row['nombre'];
	     	                     $arr[$i]['etiqueta']=$row['etiqueta'];
	     			     $arr[$i]['origen']=$row['origen'];	     	                     
	     	                 $i++; 
	     	                }
	     	            //cerramos la conexion con mysql
	     	            mysql_close($con);
	     	            
	     	        //retornamos el arreglo
	     	        return $arr;
	     	        
	     	    }//fin metodo
	     	    
	     	    public function countAgf(){
	     	    
	     	            //conectamos con la mysql
	     	            $con = mysql_connect("localhost","agf","agf");
	     	                //validamos que la conexion sea exitosa
	     	                if (!$con)
	     	                {
	     	                  //si existe error en conexion
	     	                  die('Error conectando: ' . mysql_error());
	     	                }
	     	                    //si no existe error de conexion
	     	                    //seleccionamos base de datos
	     	                    mysql_select_db("agf", $con);
	     	                    
	     	                    //seleccionamos todos los registros de tabla tb_persona
	     	                    $result = mysql_query("SELECT * FROM monedas")
	     	                    or die(mysql_error());
	     	                    $i=0;
	     	                    while($row = mysql_fetch_row($result))
	     	                    {
	     	                        //almacenamos los registros en la var array
	     				 $arr['ID_MONEDA']=$row[0];	     	                         
	     	                     $i++; 
	     	                    }
	     	                mysql_close($con);
	     	                
	     	            //retornamos el largo del arreglo
	     	            return count($arr);
	     	            
	     	        }
public function insertarItem($arrInf, $table, $empresa){
			    
	            //conectamos con la mysql
		    
		    
	            //$con = mysql_connect("localhost","agf","agf");
		    $mysqli = new mysqli("localhost","agf","agf","agf");
	                //validamos que la conexion sea exitosa
	                //if (!$con)
			if (mysqli_connect_errno()) 
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    ///////////////////////mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
			    
			    $sql = "INSERT INTO " . $table . " VALUES (null";
			    for($i = 0; $i < count($arrInf); $i++){
			    	$sql .= ", '" . $arrInf[$i] . "'";
			    }
			    $sql .= ");";
			    
	                    /*$result = mysql_query($sql)
	                    or die(mysql_error());*/
			    $sql2 = str_replace("'", "", $sql);
			    $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    $mysqli->query($sql);
	            $ultimo_id = $mysqli->insert_id;
			    
			    $sql = "select count(*) from formulario_item WHERE id_empresa = " . $empresa;
			    $result = $mysqli->query($sql);			    		
			    $r = $result->fetch_array(MYSQLI_NUM);
			    /*if(!isset(mysql_fetch_row($result))){
			    	$r = array();
			    	$r[0] = 0;
			    } else {
			    	$r = mysql_fetch_row($result);
			    }*/
			    $mysqli->query("INSERT INTO log values ('" . print_r($r[0], 1) . "');");
			   
			   
			    $sql = "INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) VALUES (" . $empresa . ", " . $ultimo_id . ", '1900-01-01', " . $r[0] . ");";
			    $sql2 = str_replace("'", "", $sql);
			    $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			    $result = $mysqli->query($sql);
	                    
	               
			    $arr = array();
			    $arr[0]['ID'] = $ultimo_id;
			
				$sql = "INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`) 
				select null, " . $ultimo_id .", id_empresa, id_periodo, 'TRIMESTRAL', 0.00, '1900-01-01', 1
				from periodos a inner join empresas
				";
				$mysqli->query($sql);
				$sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				$mysqli->close();
				
			
		    //return $ultimo_id;
	            
	        }
		
		
public function insertarItemExistente($empresa, $idTag){
			    
	            //conectamos con la mysql
		    
		    
	            //$con = mysql_connect("localhost","agf","agf");
		    $mysqli = new mysqli("localhost","agf","agf","agf");
	                //validamos que la conexion sea exitosa
	                //if (!$con)
			if (mysqli_connect_errno()) 
	                {
	                  //si existe error en conexion
	                  die('Error conectando: ' . mysql_error());
	                }
	                    //si no existe error de conexion
	                    //seleccionamos base de datos
	                    ///////////////////////mysql_select_db("agf", $con);
	                    
	                    //seleccionamos todos los registros de tabla tb_persona
			    
			    
			    $sql = "select count(*) from formulario_item WHERE id_empresa = " . $empresa;
			    $result = $mysqli->query($sql);			    		
			    $r = $result->fetch_array(MYSQLI_NUM);
			    /*if(!isset(mysql_fetch_row($result))){
			    	$r = array();
			    	$r[0] = 0;
			    } else {
			    	$r = mysql_fetch_row($result);
			    }*/
			    
				
				$sql = "SELECT count(*)
						FROM formulario_item
						WHERE `id_empresa` = " . $empresa . "
							AND estado = 'A'
							AND `id_tag_agf` = " . $idTag;
				$result = $mysqli->query($sql);			    		
			    $r2 = $result->fetch_array(MYSQLI_NUM);
				
				$mysqli->query("INSERT INTO log values ('" . print_r($r2, true) . "');");
				if($r2[0] == 0){
					$sql = "INSERT INTO formulario_item (`id_empresa`, `id_tag_agf`, `fecha_insert`, `nun_item`) 
						VALUES (" . $empresa . ", " . $idTag . ", '1900-01-01', " . $r[0] . ");";
				    $sql2 = str_replace("'", "''", $sql);
				    $mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				    $result = $mysqli->query($sql);
		            
				}
				$mysqli->close();
			    
	                //mysql_close($con);
	                
	            //retornamos el largo del arreglo
		  //  $ultimo_id = mysql_insert_id($con);
	            //return $ultimo_id;
		  
		    return true;
	            
	        }		
		
	    
public function insertarValor($arrInf){
			    
	         
	$mysqli = new mysqli("localhost","agf","agf","agf");
		   
	if (mysqli_connect_errno()) 
	{	 
		die('Error conectando: ' . mysql_error());
	}
	
	$mysqli->query("INSERT INTO log values ('" . print_r($arrInf, true) . "');");	  
	
	$sql = "SELECT id_tag_agf 
			FROM tag_agf 
			WHERE (nombre like '" . $arrInf[0] . "') 
				or (concat(nombre,'(', origen, ')') like '" . $arrInf[0] . "')";
	$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	$result = $mysqli->query($sql);			    		
	$r = $result->fetch_array(MYSQLI_NUM);	
	$arrInf[0] = $r[0];
	
	$sql = "SELECT id_valor, valor
			FROM valores
			WHERE id_empresa = " . $arrInf[1] . " 
				AND id_periodo = " . $arrInf[2] . " 
				AND	id_tag_agf = " .  $arrInf[0] . " 
				AND	origen = 1";		
		
	$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	$result = $mysqli->query($sql);	

	$r = $result->fetch_array(MYSQLI_NUM);	
	
	if($r[1] == $arrInf[3]){
		return true;
	}
		
	$sql = "UPDATE valores 
			SET valor = " . $arrInf[3] . " 
			WHERE id_empresa = " . $arrInf[1] . " 
				AND id_periodo = " . $arrInf[2] . " 
				AND	id_tag_agf = " .  $arrInf[0] . " 
				AND	origen = 1";		
		
	$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	$mysqli->query($sql);	

	
	
	$sql = "SELECT id_valor, id_formula, hist_formula
			FROM valores
			WHERE id_empresa = " . $arrInf[1] . " 
				AND id_periodo = " . $arrInf[2] . " 				
				AND	origen = 2
			ORDER BY 1;";		
		
	$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	$result = $mysqli->query($sql);	
	
	while($row = $result->fetch_array(MYSQLI_NUM)){
		$arrCampos = explode("|", $row[2]);
		for($y = 0; $y < 5; $y++){
			if($arrCampos[$y] != ''){
				$arrCampos[$y] = " AND c" . ($y + 1) . ".id_valor = " . $arrCampos[$y] . " ";
			}
		}
		$sql = "SELECT  
				b.id_indice_financiero, 
				a.formula,
				a.id_formula,
				c1.valor C1,
				c2.valor C2,
				c3.valor C3,
				c4.valor C4,
				c5.valor C5
			FROM formulas a
				INNER JOIN indices_financieros b 
					ON a.id_indice_financiero = b.id_indice_financiero 
				LEFT JOIN valores c1
					ON c1.id_tag_agf = a.campo1 AND c1.id_empresa = " . $arrInf[1] . " AND c1.id_periodo = " . $arrInf[2] . " AND c1.origen = a.tipoc1 " . $arrCampos[0] . "
				LEFT JOIN valores c2
					ON c2.id_tag_agf = a.campo2 AND c2.id_empresa = " . $arrInf[1] . " AND c2.id_periodo = " . $arrInf[2] . " AND c2.origen = a.tipoc2" . $arrCampos[1] . "
				LEFT JOIN valores c3
					ON c3.id_tag_agf = a.campo3 AND c3.id_empresa = " . $arrInf[1] . " AND c3.id_periodo = " . $arrInf[2] . " AND c3.origen = a.tipoc3" . $arrCampos[2] . "
				LEFT JOIN valores c4
					ON c4.id_tag_agf = a.campo4 AND c4.id_empresa = " . $arrInf[1] . " AND c4.id_periodo = " . $arrInf[2] . " AND c4.origen = a.tipoc4" . $arrCampos[3] . "
				LEFT JOIN valores c5
					ON c5.id_tag_agf = a.campo5 AND c5.id_empresa = " . $arrInf[1] . " AND c5.id_periodo = " . $arrInf[2] . " AND c5.origen = a.tipoc5" . $arrCampos[4] . "					
			WHERE  a.id_formula = " . $row[1] . "";
			
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$resultRow = $mysqli->query($sql);	
			
			while($row2 = $resultRow->fetch_array(MYSQLI_NUM)){
				$operacion = $row2[1];

				if(!isset($row2[3]))
					$row2[3] = 0;
				$operacion = str_replace('C1', '(' . $row2[3] . ')', $operacion);
				if(!isset($row2[4]))
					$row2[4] = 0;
				$operacion = str_replace('C2', '(' . $row2[4] . ')', $operacion);
				if(!isset($row2[5]))			
					$row2[5] = 0;
				$operacion = str_replace('C3', '(' . $row2[5] . ')', $operacion);
				if(!isset($row2[6]))
					$row2[6] = 0;
				$operacion = str_replace('C4', '(' . $row2[6] . ')', $operacion);
				if(!isset($row2[7]))
					$row2[7] = 0;
				$operacion = str_replace('C5', '(' . $row2[7] . ')', $operacion);
				
				//$mysqli->query("INSERT INTO log values ('" . $operacion . "');");	
				$evaluacionDiv = explode('/', $operacion);
				if(count($evaluacionDiv) > 1){					
					eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
					if($resultDiv != 0){
						eval( '$res = ' . $operacion . ';');		
					} else { 
						$res = 0;
					}
				} else {
					eval( '$res = ' . $operacion . ';');		
				}
				$nuevoValor = (float)$res;
				$sql = "UPDATE valores 
						SET valor = " . $nuevoValor . " 
						WHERE id_valor = " . $row[0] . ";";
				$sql2 = str_replace("'", "''", $sql);
				$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
				$mysqli->query($sql);
				
				//$this->actualizarCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
			}	
	
	}	
	$mysqli->close();			
	return true;
	            
}

function actualizarCascada($nuevoValor, $indice, $empresa, $periodo, $mysqli){
	$sql = "UPDATE valores
					SET
						valor = " . $nuevoValor . "
				WHERE
					origen = 2
				AND
					id_tag_agf = " . $indice ."
				AND 
					id_empresa = " . $empresa . " 
				AND 
					id_periodo = " . $periodo . "
				AND
					origen = 2";
	/*$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");*/
	$mysqli->query($sql);
	$sql = "SELECT  
				b.id_indice_financiero, 
				a.formula,
				'rr',
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo1 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C1,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo2 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C2,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo3 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C3,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo4 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C4,
				(SELECT valor FROM valores WHERE id_tag_agf = a.campo5 AND id_empresa = " . $empresa . " AND id_periodo = " . $periodo . " AND origen = 2) C5
			FROM formulas a
				INNER JOIN indices_financieros b ON a.id_formula = b.id_formula 
			WHERE  (a.campo1 = " . $indice . " AND a.tipoc1 = 2) 
				OR (a.campo2 = " . $indice . " AND a.tipoc2 = 2) 
				OR (a.campo3 = " . $indice . " AND a.tipoc3 = 2)
				OR (a.campo4 = " . $indice . " AND a.tipoc4 = 2) 
				OR (a.campo5 = " . $indice . " AND a.tipoc5 = 2)";
	/*$sql2 = str_replace("'", "''", $sql);
	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");*/
	$result = $mysqli->query($sql);
	
	
	
	while($row = $result->fetch_array(MYSQLI_NUM)){
		$operacion = $row[1];

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
		
		//$mysqli->query("INSERT INTO log values ('" . $operacion . "');");	
		eval( "\$res = " . $operacion . ";");		
		$nuevoValor = (float)$res;
		
		$this->actualizarCascada($nuevoValor, $row[0], $arrInf[1], $arrInf[2], $mysqli);
	}	
	return true;
}

function valores2($empresa, $periodo){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                //si no existe error de conexion
	                //seleccionamos base de datos
	                mysql_select_db("agf", $con);
	                
	                //seleccionamos registros de tabla tb_persona
			$sql = "SELECT (select concat(nombre, '(', origen, ')') 
					from tag_agf b 
					where  b.id_tag_agf = a.id_tag_agf) `nombre` , 
					(select valor 
					from valores c 
					where c.id_empresa = a.id_empresa 
						and c.tipo = 'TRIMESTRAL' 
						and origen = 1
						and c.id_periodo = 
						" . $periodo. " and c.id_tag_agf = a.id_tag_agf) valor,  nun_item, id_tag_agf
                	                FROM `formulario_item` a
					where a.id_empresa = " . $empresa . "
					      AND a.estado = 'A'									
					order by  nun_item
				                ";
			$sql2 = str_replace("'", "''", $sql);
			mysql_query("INSERT INTO log values ('" . $sql2 . "');");	
	                $result = mysql_query($sql)
	                or die(mysql_error());
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
			     $arr[$i]['nombre']=$row[0];
			     $arr[$i]['valor']=$row[1];
			     $arr[$i]['id_tag_agf']=$row[3];	                     
	                   
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo		

	    function deleteFormularioItem($empresa, $tagAgf){
	    	$mysqli = new mysqli("localhost","agf","agf","agf");
                if (mysqli_connect_errno()) 
                {
                  die('Error conectando: ' . mysql_error());
                }
            	$sql = "UPDATE formulario_item SET estado = 'E' WHERE id_empresa = '" . $empresa . "' AND id_tag_agf = " . $tagAgf . ";";
	        $sql2 = str_replace("'", "''", $sql);
	    	$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
	   	$result = $mysqli->query($sql);		
	    	$mysqli->close();
		return true;
	    }
		
		function insertarConfig($arrInf){
			    
	        $mysqli = new mysqli("localhost","agf","agf","agf");
            if (mysqli_connect_errno()) 
			{
			  //si existe error en conexion
			  die('Error conectando: ' . mysql_error());
			}
	            
			    
			$sql = "DELETE FROM configexport";
			$mysqli->query($sql);			    		
			$sql = "";
			for($i = 0; $i < count($arrInf); $i++){
				$sql = "INSERT INTO configexport VALUES ('" . $arrInf[$i] . "');";
				$mysqli->query($sql);	
				
			}	
			$sql2 = str_replace("'", "''", $sql);
			$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
			$mysqli->query("INSERT INTO log values ('" . print_r($arrInf, 1) . "');");
			$mysqli->close();        
		    return true;
	            
	    }
		
		function indicesFinancieros(){
	        //creando variable array
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
	                
	                mysql_select_db("agf", $con);
	                $sql = "SELECT a.id_indice_financiero, a.nombre,
							CASE isnull( b.id_indice )
							WHEN TRUE THEN 0
							ELSE b.id_indice
							END AS oa, b.id_indice
							FROM `indices_financieros` a
							LEFT JOIN configexport b ON a.id_indice_financiero = b.id_indice";
	                //seleccionamos registros de tabla tb_persona
	                $result = mysql_query($sql)
	                or die(mysql_error());
					$sql2 = str_replace("'", "''", $sql);
					mysql_query("INSERT INTO log values ('" . $sql2 . "');");
	                //el LIMIT se configura con los parametros recibidos
	                //$startIndex
	                //$numItems
	                //EJ. seleccione desde el registro 0 hasta el 10
	                $i=0;
	                while($row = mysql_fetch_row($result))
	                {
	                    //almacenamos los registros en la var array
					     $arr[$i]['id_indice_financiero']=$row[0];
					     $arr[$i]['nombre']=$row[1];
	                     $arr[$i]['oa']=$row[2];
	                   
	                 $i++; 
	                }
	            //cerramos la conexion con mysql
	            mysql_close($con);
	            
	        //retornamos el arreglo
	        return $arr;
	        
	    }//fin metodo
		
		function listEmpresa($id){
			$where = "";
	        if($id == 0){
				$sql = "SELECT a.`ID_EMPRESA` , `RUT` , `RSO` , `NOMBRE_FANTASIA` , `NOMBRE_BOLSA` , `VALOR_ACCION` , `TIPO_BALANCE` , 
						`TIPO_IFRS`, color, 0 as oa
						FROM `empresas` a 
						";
			} else {
				$sql = "SELECT a.`ID_EMPRESA` , `RUT` , `RSO` , `NOMBRE_FANTASIA` , `NOMBRE_BOLSA` , `VALOR_ACCION` , `TIPO_BALANCE` , 
						`TIPO_IFRS`, color, CASE isnull( b.id_empresa )
						WHEN TRUE THEN 0
						ELSE b.id_indice
						END AS oa
						FROM `empresas` a LEFT JOIN `indice_empresa` b ON a.id_empresa = b.id_empresa									
						WHERE b.id_indice = " . $id;
			}
	        $arr = array();
	        //conectamos con la mysql
	        $con = mysql_connect("localhost","agf","agf");
	            //validamos que la conexion sea exitosa
	            if (!$con)
	            {
	              //si existe error en conexion
	              die('Error conectando: ' . mysql_error());
	            }
				mysql_select_db("agf", $con);
				
				
				$result = mysql_query($sql)
				or die(mysql_error());
				$i=0;
				while($row = mysql_fetch_row($result))
				{
					 $arr[$i]['ID_EMPRESA']=$row[0];
					 $arr[$i]['RUT']=$row[1];
					 $arr[$i]['RSO']=$row[2];
					 $arr[$i]['NOMBRE_FANTASIA']=$row[3];
					 $arr[$i]['NOMBRE_BOLSA']=$row[4];
					 $arr[$i]['TIPO_BALANCE']=$row[6];			     
					 $arr[$i]['TIPO_IFRS']=$row[7];
					 $arr[$i]['color']=$row[8];
					 $arr[$i]['oa']=$row[9];
					 $i++; 
				}
			mysql_close($con);
	            
	        return $arr;
	        
	    }//fin metod
		
		function listSubgrupo($id){
			$where = "";
	        if($id == 0){
				$sql = "SELECT a.*, 0 AS oa 
						FROM subgrupos a";
			} else {
				$sql = "SELECT a.*, CASE isnull( b.id_subgrupo )
						WHEN TRUE THEN 0
						ELSE b.id_subgrupo
						END AS oa 
						FROM subgrupos a LEFT JOIN indice_subgrupo_empresa b On a.id_subgrupo = b.id_subgrupo 
						WHERE b.id_indice = " . $id;
			}
	         //creando variable array
				$arr = array();
				//conectamos con la mysql
				$con = mysql_connect("localhost","agf","agf");
			//validamos que la conexion sea exitosa
			if (!$con)
			{
			  //si existe error en conexion
			  die('Error conectando: ' . mysql_error());
			}
				//si no existe error de conexion
				//seleccionamos base de datos
				mysql_select_db("agf", $con);
				
				//seleccionamos registros de tabla tb_persona
				$result = mysql_query($sql)
				or die(mysql_error());
				//el LIMIT se configura con los parametros recibidos
				//$startIndex
				//$numItems
				//EJ. seleccione desde el registro 0 hasta el 10
				$i=0;
				while($row = mysql_fetch_row($result))
				{
					//almacenamos los registros en la var array
					$arr[$i]['ID_SUBGRUPO']=$row[0];
					$arr[$i]['nombre']=$row[1];
					$arr[$i]['descripcion']=$row[2];			                     
					$arr[$i]['oa']=$row[3];			                     
					$i++; 
				}
			//cerramos la conexion con mysql
			mysql_close($con);
				
			//retornamos el arreglo
			return $arr;
	        
	   }//fin metod
		
	function parametrosGrafico(){
		$mysqli = new mysqli("localhost","agf","agf","agf");
		if (mysqli_connect_errno()) 
		{
		  die('Error conectando: ' . mysql_error());
		}
		$sql = "SELECT a.id_indice_financiero, a.nombre, c.id_empresa, c.RSO, 0, ID_GRUPO_INDICE_FINANCIERO
				FROM indices_financieros a inner join 
					 indice_empresa b on id_indice_financiero = id_indice inner join 
					 empresas c on b.id_empresa = c.id_empresa
				WHERE b.tipo = 0					
				UNION
				SELECT a.id_indice_financiero, a.nombre, c.id_subgrupo, c.nombre, 1,ID_GRUPO_INDICE_FINANCIERO
				FROM indices_financieros a inner join 
					 indice_empresa b on a.id_indice_financiero = b.id_indice inner join 
					 subgrupos c on b.id_empresa = c.id_subgrupo
				WHERE b.tipo <> 0
				ORDER BY 1;";
		$sql2 = str_replace("'", "''", $sql);
		$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
		$result = $mysqli->query($sql);		
		$i = 0;
		$arr = array();
		$mysqli->query("INSERT INTO log values ('" . $result->num_rows . "');");
		while($row = $result->fetch_array(MYSQLI_NUM)){
			$arr[$i]['id_indice']=$row[0];
			$arr[$i]['indice']=$row[1];
			$arr[$i]['id_empGrupo']=$row[2];
			$arr[$i]['rso']=$row[3];
			$arr[$i]['tipo']=$row[4];
			$arr[$i]['grupo']=$row[5];			
			$i++;
		}
		$mysqli->close();   
		return $arr;     
	}	   

	function deleteIndiceFinanciero($id){
		$mysqli = new mysqli("localhost","agf","agf","agf");
		if (mysqli_connect_errno()) 
		{
		  die('Error conectando: ' . mysql_error());
		}
		$sql = "DELETE FROM indices_financieros Where id_indice_financiero = " . $id . ";";
		$sql2 = str_replace("'", "''", $sql);
		$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
		$result = $mysqli->query($sql);		
		
		$mysqli->close();   
		return true;     
	}
	
	function rescataFormulas($indice, $empresa){
		$mysqli = new mysqli("localhost","agf","agf","agf");
		if (mysqli_connect_errno()) 
		{
		  die('Error conectando: ' . mysql_error());
		}
		$sql = "SELECT a.`ID_FORMULA`, 
               CASE  when a.tipoc1 = 1
               THEN (select nombre from tag_agf b where b.ID_TAG_AGF = a.campo1 and b.oa = a.tipoc1) 
               ELSE (select nombre from indices_financieros b where b.id_indice_financiero = a.campo1) END as `CAMPO1N`,  
               CASE  when a.tipoc2 = 1
               THEN (select nombre from tag_agf b where b.ID_TAG_AGF = a.campo2 and b.oa = a.tipoc2) 
               ELSE (select nombre from indices_financieros b where b.id_indice_financiero = a.campo2) END as `CAMPO2N`, 
               CASE  when a.tipoc3 = 1
               THEN (select nombre from tag_agf b where b.ID_TAG_AGF = a.campo3 and b.oa = a.tipoc3) 
               ELSE (select nombre from indices_financieros b where b.id_indice_financiero = a.campo3) END as `CAMPO3N`, 
               CASE  when a.tipoc4 = 1
               THEN (select nombre from tag_agf b where b.ID_TAG_AGF = a.campo4 and b.oa = a.tipoc4) 
               ELSE (select nombre from indices_financieros b where b.id_indice_financiero = a.campo4) END as `CAMPO4N`, 
               CASE  when a.tipoc5 = 1
               THEN (select nombre from tag_agf b where b.ID_TAG_AGF = a.campo5 and b.oa = a.tipoc5) 
               ELSE (select nombre from indices_financieros b where b.id_indice_financiero = a.campo5) END as `CAMPO5N`, 
               `CAMPO1`,
               `CAMPO2`,
               `CAMPO3`,
               `CAMPO4`,
               `CAMPO5`,
               `tipoc1`, `tipoc2`, `tipoc3`, `tipoc4`, `tipoc5`, `FORMULA`, 
               `cod1`, `cod2`, `cod3`, `cod4`, `cod5`, a.`id_indice_financiero`, a.`num_formula` ,
               CASE when x.id_formula IS NULL THEN '' ELSE 'Activa' END
				  as selected
               FROM `formulas` a LEFT JOIN empresa_indice x
					ON x.id_indice_financiero = a.id_indice_financiero 
						AND x.id_formula = a.id_formula
						AND x.id_empresa = " . $empresa . "
               WHERE a.id_indice_financiero = " . $indice . "
					;";
		$sql2 = str_replace("'", "''", $sql);
		$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
		$result = $mysqli->query($sql);		
		$arr = array();
		$i = 0;
		while($row = $result->fetch_array(MYSQLI_NUM)){
			$arr[$i]['id_formula'] = $row[0];
			$arr[$i]['campo1n'] = $row[1];
			$arr[$i]['campo2n'] = $row[2];
			$arr[$i]['campo3n'] = $row[3];
			$arr[$i]['campo4n'] = $row[4];
			$arr[$i]['campo5n'] = $row[5];
			$arr[$i]['campo1'] = $row[6];
			$arr[$i]['campo2'] = $row[7];
			$arr[$i]['campo3'] = $row[8];
			$arr[$i]['campo4'] = $row[9];
			$arr[$i]['campo5'] = $row[10];
			$arr[$i]['tipoc1'] = $row[11];
			$arr[$i]['tipoc2'] = $row[12];
			$arr[$i]['tipoc3'] = $row[13];
			$arr[$i]['tipoc4'] = $row[14];
			$arr[$i]['tipoc5'] = $row[15];
			$arr[$i]['formula'] = $row[16];
			$arr[$i]['cod1'] = $row[17];
			$arr[$i]['cod2'] = $row[18];
			$arr[$i]['cod3'] = $row[19];
			$arr[$i]['cod4'] = $row[20];
			$arr[$i]['cod5'] = $row[21];
			$arr[$i]['id_indice_financiero'] = $row[22];
			$arr[$i]['num_formula'] = $row[23];
			$arr[$i]['sel'] = $row[24];
			$i++;
		}
		$mysqli->close();   
		return $arr;     
	}
	
	function actualizaEmpresaIndice($indice, $empresa, $numFormula, $formula){
		$mysqli = new mysqli("localhost","agf","agf","agf");
		if (mysqli_connect_errno()) 
		{
		  die('Error conectando: ' . mysql_error());
		}
		$sql = "UPDATE empresa_indice 
				SET num_formula = " . $numFormula . ", 
					id_formula = " . $formula . " 
				Where id_indice_financiero = " . $indice . " 
					AND id_empresa = " . $empresa . ";";
		$sql2 = str_replace("'", "''", $sql);
		$mysqli->query("INSERT INTO log values ('" . $sql2 . "');");
		$result = $mysqli->query($sql);		
		
		$mysqli->close();   
		return true;     
	}

}
?>