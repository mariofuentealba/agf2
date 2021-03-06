USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_rescata_empresas]    Script Date: 08/31/2014 18:56:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_rescata_indices] 
	-- Add the parameters for the stored procedure here
	
	--exec [dbo].[sp_rescata_empresas] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SELECT indices_financieros.id_indice_financiero,nombre, id_grupo_indice_financiero,(select formula from formulas f where f.ID_FORMULA = indices_financieros.ID_FORMULA) formula, id_formula ,
			(SELECT [id_formula],[CAMPO1],[CAMPO2],[CAMPO3],[CAMPO4],[CAMPO5]
					  ,[tipoc1],[tipoc2],[tipoc3],[tipoc4],[tipoc5],[formula]      
					  ,[cod1],[cod2],[cod3],[cod4],[cod5],[num_formula],case WHEN indices_financieros.ID_FORMULA = formulas.ID_FORMULA then 'true' else 'false' end defaults
			 FROM formulas
			 WHERE formulas.id_indice_financiero = indices_financieros.ID_INDICE_FINANCIERO
			 FOR XML AUTO, TYPE,ROOT('Formulas'))
FROM indices_financieros --inner join formulas f on  f.ID_FORMULA = 	indices_financieros.ID_FORMULA
FOR XML AUTO, TYPE,ROOT('IndicesFinancieros')
    

    
    
	
  
  
  
  
  
END
