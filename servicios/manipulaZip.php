<?php

include_once("pclzip-2-8-2\\pclzip.lib.php");
 
$zip = new PclZip("Estados_financieros_(XBRL)91337000_201312.zip");
 
if (($list = $zip->listContent()) == 0) {
        die("Error : ".$zip->errorInfo(true));
}
 
for ($i=0; $i<sizeof($list); $i++) {
        for(reset($list[$i]); $key = key($list[$i]); next($list[$i])) {
                echo "Archivo $i / [$key] = ".$list[$i][$key]."<br>";
        }
        echo "<br>";
}



 
if ($zip->extract(PCLZIP_OPT_PATH, "Estados_financieros_(XBRL)91337000_201312",
PCLZIP_OPT_REMOVE_PATH, "install/release") == 0) {
        die("Error : ".$zip->errorInfo(true));
}



?>
