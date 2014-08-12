
truncate table indices_financieros
truncate table formulas 
truncate table empresa_indice
truncate table valores


SELECT TOP 1000 [ID_VALOR]
      ,[ID_TAG_AGF]
      ,[ID_EMPRESA]
      ,[ID_PERIODO]
      ,[tipo]
      ,[VALOR]
      ,[DT_MODIFICACION]
      ,[origen]
      ,[id_formula]
      ,[hist_formula]
  FROM [agf].[dbo].[valores]
  where  origen = 2
  
  
 begin tran 
 INSERT INTO indices_financieros (ID_GRUPO_INDICE_FINANCIERO, 
					NOMBRE, ID_FORMULA, OA) 
						VALUES ('1', 'Prueba', 
						'0', 1);

select *
from indices_financieros


INSERT INTO formulas (CAMPO1, CAMPO2, CAMPO3, CAMPO4, CAMPO5, tipoc1, tipoc2, 
							tipoc3, tipoc4, tipoc5, FORMULA, CANTIDAD_CAMPOS, DECIMALES, cod1, cod2, cod3, cod4, 
							cod5, id_indice_financiero, num_formula) values 
							('2', '-1', '-1', '-1', '-1', '1', '0', '0', '0', '0', 'C1*2', '1', '', 'C.1.Cierre Trimestre Actual', 'no', 'no', 'no', 'no', 1, 0 );
select *
from formulas


INSERT INTO empresa_indice(id_empresa, id_indice_financiero, num_formula, id_formula) 
							SELECT id_empresa, 1, 0, 1 
							FROM empresas;




SELECT b.id_indice_financiero, 
						d.id_empresa, 
						c.id_periodo,						
						v.valor C1,
						w.valor C2,
						x.valor C3,                        
						y.valor C4,         
						z.valor C5, 
						d.rso + ': ' +  b.nombre, 
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
						CROSS JOIN periodos c
						CROSS JOIN empresas d 
						LEFT JOIN valores v ON v.id_tag_agf = a.campo1 
							AND v.tipo = 'Cierre Trimestre Actual' 
							AND v.id_empresa = d.id_empresa                             
							AND v.origen = a.tipoc1                          	
														
							AND v.id_periodo = c.id_periodo
						LEFT JOIN valores w ON w.id_tag_agf = a.campo2 
							AND w.tipo = 'Cierre Trimestre Actual' 
							AND w.id_empresa = d.id_empresa                             
							AND w.origen = a.tipoc2                          	
														
							AND w.id_periodo = c.id_periodo
						LEFT JOIN valores x ON x.id_tag_agf = a.campo3 
							AND x.tipo = 'Cierre Trimestre Actual' 
							AND x.id_empresa = d.id_empresa                             
							AND x.origen = a.tipoc3                          	
														
							AND x.id_periodo = c.id_periodo
						LEFT JOIN valores y ON y.id_tag_agf = a.campo4 
							AND y.tipo = 'Cierre Trimestre Actual' 
							AND y.id_empresa = d.id_empresa                             
							AND y.origen = a.tipoc4                          	
														
							AND y.id_periodo = c.id_periodo
						LEFT JOIN valores z ON z.id_tag_agf = a.campo5 
							AND z.tipo = 'Cierre Trimestre Actual' 
							AND z.id_empresa = d.id_empresa                             
							AND z.origen = a.tipoc5                          	
														
							AND z.id_periodo = c.id_periodo	
					WHERE b.id_indice_financiero = 1
						;




SELECT b.id_indice_financiero, 
						d.id_empresa, 
						c.id_periodo,						
						v.valor C1,
						w.valor C2,
						x.valor C3,                        
						y.valor C4,         
						z.valor C5, 
						d.rso + ': ' +  b.nombre, 
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
						CROSS JOIN periodos c
						CROSS JOIN empresas d 
						LEFT JOIN valores v ON v.id_tag_agf = a.campo1 
							AND v.tipo = 'Cierre Trimestre Actual' 
							AND v.id_empresa = d.id_empresa                             
							AND v.origen = a.tipoc1                          	
														
							AND v.id_periodo = c.id_periodo
						LEFT JOIN valores w ON w.id_tag_agf = a.campo2 
							AND w.tipo = 'Cierre Trimestre Actual' 
							AND w.id_empresa = d.id_empresa                             
							AND w.origen = a.tipoc2                          	
														
							AND w.id_periodo = c.id_periodo
						LEFT JOIN valores x ON x.id_tag_agf = a.campo3 
							AND x.tipo = 'Cierre Trimestre Actual' 
							AND x.id_empresa = d.id_empresa                             
							AND x.origen = a.tipoc3                          	
														
							AND x.id_periodo = c.id_periodo
						LEFT JOIN valores y ON y.id_tag_agf = a.campo4 
							AND y.tipo = 'Cierre Trimestre Actual' 
							AND y.id_empresa = d.id_empresa                             
							AND y.origen = a.tipoc4                          	
														
							AND y.id_periodo = c.id_periodo
						LEFT JOIN valores z ON z.id_tag_agf = a.campo5 
							AND z.tipo = 'Cierre Trimestre Actual' 
							AND z.id_empresa = d.id_empresa                             
							AND z.origen = a.tipoc5                          	
														
							AND z.id_periodo = c.id_periodo	
					WHERE b.id_indice_financiero = 1
						;



rollback