USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_procesa_formulas_complejas]    Script Date: 06/03/2014 11:45:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description:    <Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_procesa_formulas_complejas] 
    -- Add the parameters for the stored procedure here
    
    @idInd  int,
    @idEmp  int
    
AS
BEGIN
    SELECT a.id_indice_financiero, 
                        a.id_empresa, 
                        a.id_periodo,                        
                        v.valor C1,
                        w.valor C2,
                        x.valor C3,                        
                        y.valor C4,         
                        z.valor C5, 
                        a.rso + ': ' + a.nombre ,
                        label, 
                        formula, 
                        a.id_formula, 
                        a.mes,                        
                        a.color, a.rso, a.nombre,                    
                        v.id_valor C1H, 
                        w.id_valor C2H,
                        x.id_valor C3H,
                        y.id_valor C4H,
                        z.id_valor C5H
                    FROM view_ind_form a 
                        LEFT JOIN valores v ON v.id_tag_agf = a.campo1 
                            AND v.tipo = 'TRIMESTRAL' 
                            AND v.id_empresa = a.id_empresa                             
                            AND v.origen = a.tipoc1 
                            AND v.id_periodo = a.id_periodo
                        LEFT JOIN valores w ON w.id_tag_agf = a.campo2 
                            AND w.tipo = 'TRIMESTRAL' 
                            AND w.id_empresa = a.id_empresa                             
                            AND w.origen = a.tipoc2                                                
                            AND w.id_periodo = a.id_periodo
                        LEFT JOIN valores x ON x.id_tag_agf = a.campo3 
                            AND x.tipo = 'TRIMESTRAL' 
                            AND x.id_empresa = a.id_empresa                             
                            AND x.origen = a.tipoc3                                                         
                            AND x.id_periodo = a.id_periodo
                        LEFT JOIN valores y ON y.id_tag_agf = a.campo4 
                            AND y.tipo = 'TRIMESTRAL' 
                            AND y.id_empresa = a.id_empresa                             
                            AND y.origen = a.tipoc4                                                    
                            AND y.id_periodo = a.id_periodo
                        LEFT JOIN valores z ON z.id_tag_agf = a.campo5 
                            AND z.tipo = 'TRIMESTRAL' 
                            AND z.id_empresa = a.id_empresa                             
                            AND z.origen = a.tipoc5     
                                                        
                            AND z.id_periodo = a.id_periodo                    
                    WHERE a.id_empresa = @idEmp
                            AND a.id_indice_financiero = @idInd                        
                        ORDER BY a.id_indice_Financiero    
END
