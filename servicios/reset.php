<?php
include "modelo.php";

$m = new Modelo;

$emp = array(1, 2, 3, 4, 5, 6);
$m->carga();
$tag = array(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);

$valor = array(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
);

//$m->insertarValor(array(1, 1, 30, 30));
$d = 0;
for($i = 0; $i < 12; $i++){
	for($j = 0; $j < 6; $j++){
		$m->insertarValor(array($tag[$i], $emp[$j], 30, $valor[$d++]));
	}
}



/*
$m->carga();

$per = array(13, 14, 15, 16, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 28, 29, 30, 31, 32, 33, 34, 35); 


$valor = array(17174,21761,21147,33711,18537,30099,25990,45137,24900,34345,34041,54803,31761,40160,37194,56287,33146,44619,0,0,0,0,0,0);
$mysqli = new mysqli("localhost","agf","agf","agf");
//$m->insertarValor(array(1, 1, 30, 30));
$d = 0;
for($i = 0; $i < 24; $i++){
	
	$mysqli->query("INSERT INTO `valores`(`ID_VALOR`, `ID_TAG_AGF`, `ID_EMPRESA`, `ID_PERIODO`, `tipo`, `VALOR`, `DT_MODIFICACION`, `origen`, `id_formula`, `hist_formula`) VALUES (null,1,6," . $per[$i] . ",'Trimestral'," . $valor[$i] . ",null,1,0,null);");
	
}



*/

