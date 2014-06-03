USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_rescata_formula_simple]    Script Date: 06/03/2014 11:44:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description:    <Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_rescata_formula_simple]
    -- Add the parameters for the stored procedure here
    @idEmp int
    
AS
BEGIN
    SELECT b.ID_INDICE_FINANCIERO, d.ID_EMPRESA, c.ANO,
                            (SELECT valor FROM valores WHERE id_tag_agf = a.campo1 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C1,
                            (SELECT valor FROM valores WHERE id_tag_agf = a.campo2 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C2,
                            (SELECT valor FROM valores WHERE id_tag_agf = a.campo3 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C3,
                            (SELECT valor FROM valores WHERE id_tag_agf = a.campo4 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C4,
                            (SELECT valor FROM valores WHERE id_tag_agf = a.campo5 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C5,
                            d.RSO + ': ' + b.NOMBRE, label, a.FORMULA, a.ID_FORMULA, c.ANO, c.MES ,
                            (SELECT id_valor FROM valores WHERE id_tag_agf = a.campo1 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C1N,
                            (SELECT id_valor FROM valores WHERE id_tag_agf = a.campo2 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C2N,
                            (SELECT id_valor FROM valores WHERE id_tag_agf = a.campo3 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C3N,
                            (SELECT id_valor FROM valores WHERE id_tag_agf = a.campo4 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C4N,                 
                            (SELECT id_valor FROM valores WHERE id_tag_agf = a.campo5 AND id_empresa = d.id_empresa AND id_periodo = c.id_periodo AND origen = 1 AND tipo = 'TRIMESTRAL') C5N
                        FROM formulas a, indices_financieros b, periodos c, empresas d 
                        WHERE d.id_empresa = @idEmp
                            AND a.id_indice_financiero = b.id_indice_financiero
                            AND a.tipoc1 < 2
                            AND a.tipoc2 < 2
                            AND a.tipoc3 < 2
                            AND a.tipoc4 < 2
                            AND a.tipoc5 < 2
                                            


END
