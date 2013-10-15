<?php

$mysqli = new mysqli("localhost","agf","agf","agf");
$sql = "SELECT `id_indice`, `id_tag_agf`, `id_formula`, id FROM `masivo` WHERE `id` = 7";
$result = $mysqli->query($sql); 

while($row = $result->fetch_array(MYSQLI_NUM)){
                $data['id_indice'] = $row[0];
                $data['id_tag_agf'] = $row[1];
                $data['id_formula'] = $row[2];
                $data['id_proceso'] = $row[3];
}
 
$sql = "DELETE FROM `formulario_item` WHERE `id_tag_agf` = " . $data['id_tag_agf'];
$mysqli->query($sql); 

$sql = "DELETE FROM `formulas` WHERE `ID_FORMULA` = " . $data['id_formula'];
$mysqli->query($sql); 

$sql = "DELETE FROM `indices_financieros` WHERE `ID_INDICE_FINANCIERO` = " . $data['id_indice'];
$mysqli->query($sql); 

$sql = "DELETE FROM `indice_empresa` WHERE `ID_INDICE` = " . $data['id_indice'];
$mysqli->query($sql);

$sql = "DELETE FROM `tag_agf` WHERE `ID_TAG_AGF` = " . $data['id_tag_agf'];
$mysqli->query($sql); 

$sql = "DELETE FROM `valores` WHERE `ID_TAG_AGF` = " . $data['id_tag_agf'];
$mysqli->query($sql); 

$sql = "DELETE FROM `masivo` WHERE `ID` = " . $data['id_proceso'];
$mysqli->query($sql);
?>