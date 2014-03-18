<?php
include("adodb/adodb.inc.php");  
$conexion = ADONewConnection('odbc_mssql');  
$datos = "Driver={ SQL Server };Server=localhost;Database=agf;";  
$conexion -> Connect($datos, 'wotan', 'cuculiche');
$resultado->$conexion->Execute("select * from agenda_procesos");  
/* Ejecutamos la consulta para recuperar los registros */  
  
if(!$resultado)  
    print $conexion->ErrorMsg( );  
    /* Declaramos un if en caso de que la consulta no se haya ejecutado bien, para que nos muestre el error */  
else {  
    while(!$resultado->EOF) {  
        /* Ejecutamos un ciclo de tipo While que realizará las operaciones hasta que el resultado de la consulta (los registros rescatados) llegue al EOF o End of File (final de los registros recuperados) */  
  
        print $resultado->fields[0]."<br>";  
        print $resultado->fields[1]."<br>";  
        print $resultado->fields[2]."<br>";  
  
        /* Imprimimos el resultado de la consulta. Al rescatar los registros, cada campo se agrega a un arreglo llamado fields, en el que se irán situando los campos en el orden que se rescataron */  
          
        $resultado->MoveNext( );  
        /* Avanzamos a la fila siguiente */  
    }  
}  
  
$resultado->Close( );  
$conexion->Close( );  