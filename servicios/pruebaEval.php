<?php
/*$val = (float)0;
eval('
$c1 = ' . $val . ';
$res = $c1/(0.00);
echo $res;');*/

$operacion = '(0.00)/(0.00)';
				
				$evaluacionDiv = explode('/', $operacion);
				if(count($evaluacionDiv) > 1){
					echo '$resultDiv = ' . $evaluacionDiv[1] . ';';
					eval('$resultDiv = ' . $evaluacionDiv[1] . ';');
					if($resultDiv != 0){
						eval( '$res = ' . $operacion . ';');		
					} else {
						$res = 0;
					}
				} else {
					eval( '$res = ' . $operacion . ';');		
				}

echo $res;