USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_rescata_formulas_complejas]    Script Date: 06/03/2014 11:44:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description:    <Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_rescata_formulas_complejas] 
    -- Add the parameters for the stored procedure here
    
    
    
AS
BEGIN
    SELECT DISTINCT b.id_indice_financiero 
                        FROM indices_financieros b 
                            INNER JOIN formulas a
                                ON a.id_indice_financiero = b.id_indice_financiero
                        WHERE (a.tipoc1 > 1
                                OR a.tipoc2 > 1
                                OR a.tipoc3 > 1
                                OR a.tipoc4 > 1
                                OR a.tipoc5 > 1)
END
