<?php
class Modelo2
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
			    $sql2 = str_replace("'", "", $sql);
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

public function grillaSubGrupos($startIndex, $numItems){
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
	                $result = mysql_query("SELECT * FROM subgrupos LIMIT $startIndex, $numItems")
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
	                    $result = mysql_query("SELECT * FROM subgrupos")
	                    or die(mysql_error());
	                    $i=0;
	                    while($row = mysql_fetch_row($result))
	                    {
	                        //almacenamos los registros en la var array
				 $arr['ID_SUBGRUPO']=$row[0];
	                         $arr['nombre']=$row[1];
	                         $arr[$i]['descripcion']=$row[2];
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

public function grillaEmpresa($startIndex, $numItems){
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
	                $result = mysql_query("SELECT  *  FROM Empresas LIMIT $startIndex, $numItems")
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
	                    $result = mysql_query("SELECT * FROM Empresas")
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
	
}
?>