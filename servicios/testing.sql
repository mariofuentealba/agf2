
truncate table indices_financieros
truncate table formulas 
truncate table empresa_indice
truncate table valores
truncate table xbrl_empresas
truncate table dbo.xbrl_extraccion


truncate table logs
truncate table tag_agf

select *
from tag_agf



select *
from formulas





select *
from logs


SELECT id_valor, valor       FROM valores       WHERE id_empresa = 237         AND id_periodo = 14         AND id_tag_agf = 270         AND origen = 1        AND tipo = 'Cierre Trimestre Actual'

UPDATE valores        
SET valor = 300        
WHERE id_empresa = 237         
	AND id_periodo = 14         
	AND id_tag_agf = 270         
	AND origen = 1        
	AND tipo = 'Cierre Trimestre Actual'

UPDATE v         
SET v.valor =  150 + v.valor        
from valores v       
WHERE id_empresa = 237         
	AND id_periodo = 14         
	AND id_tag_agf = 270         
	AND origen = 1        
	AND tipo <> 'Cierre Trimestre Actual'

SELECT id_valor, id_formula, hist_formula       
FROM valores       
WHERE id_empresa = 237         
	AND id_periodo = 14             
	AND origen = 2       
ORDER BY 1;

SELECT *
  FROM [agf].[dbo].[valores] nolock
  where  ID_TAG_AGF = 4
  ORDER BY tipo

SELECT *
FROM [agf].[dbo].[valores] v 
	INNER JOIN tag_agf t ON v.ID_TAG_AGF = t.ID_TAG_AGF
	INNER JOIN periodos p ON p.ID_PERIODO = v.ID_PERIODO
	inner join xbrl_tag x ON x.id = t.id_xbrl
where x.id = 3


select *
from xbrl_tag t 
		inner join (select id_tag, min(id_traduccion) id_traduccion
					from xbrl_tag_traduccion
					group by id_tag) tt on t.id = tt.id_tag
		inner join xbrl_traduccion tr on tt.id_traduccion = tr.id



select *
from xbrl_taxonomia

  

SELECT TOP 1000 [empresa]
      ,[periodo]
  FROM [agf].[dbo].[log_error_carga]
  
  truncate table [agf].[dbo].[log_error_carga]  
  
  
SELECT p.label, COUNT(*)
FROM [agf].[dbo].[valores] v 
	INNER JOIN tag_agf t ON v.ID_TAG_AGF = t.ID_TAG_AGF
	INNER JOIN periodos p ON p.ID_PERIODO = v.ID_PERIODO
GROUP BY p.label

SELECT [ID_PERIODO]
      ,[label]
      ,[ANO]
      ,[MES]
      ,[OA]
      ,[orden]
      ,[mask]
  FROM [agf].[dbo].[periodos]

  
  
  select *
from formulario_item

SELECT (select nombre + '(' + origen + ')'          
		from tag_agf b          
		where  b.id_tag_agf = a.id_tag_agf) nombre ,       
	   (select valor       
	    from valores c       
	    where c.id_empresa = a.id_empresa        
			and c.tipo = 'Cierre Trimestre Actual'        
			and origen = 1       
			and c.id_periodo =        13 
			and c.id_tag_agf = a.id_tag_agf) valor,  
		nun_item, id_tag_agf                                  
FROM formulario_item a      
where a.id_empresa = 237            
	AND a.estado = 'A'               
order by  nun_item     



UPDATE valores        
SET valor = 55        
WHERE id_empresa = 237         
	AND id_periodo = 13         
	AND id_tag_agf = 2         
	AND origen = 1        
	AND tipo = 'Cierre Trimestre Actual'                
  
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


rollback




delete from tag_agf h
where h.




SELECT a.ID_INDICE_FINANCIERO,a.id_formula,NOMBRE, formula, decimales, ID_GRUPO_INDICE_FINANCIERO, 
							campo1, campo2, campo3, campo4, campo5
	                	                    FROM indices_financieros a, formulas b
	                	                    WHERE a.id_formula = b.id_formula
	                	                    
	                	                    
	                	                    
	                	                    
	                	                    select * from valores