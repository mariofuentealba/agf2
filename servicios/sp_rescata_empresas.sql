USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_rescata_empresas]    Script Date: 07/27/2014 21:31:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE [dbo].[sp_rescata_empresas] 
	-- Add the parameters for the stored procedure here
	
	--exec [dbo].[sp_rescata_empresas] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    declare @cant int
    
    select @cant = COUNT(*)
    from [agf].[dbo].[xbrl_empresas] 
    
    
    if @cant > 0
    begin
		SELECT empresa.ID_EMPRESA idInterno
			  ,empresa.[rut] id
			  ,empresa.[rso] nombre
			  ,empresa.[tipoEntidad]
			  ,empresa.[vigencia]
			  ,(select ID_SUBGRUPO from subgrupos_empresas subgrupo where subgrupo.ID_EMPRESA = empresa.ID_EMPRESA FOR XML AUTO, TYPE,ROOT('SubGrupos')	)
		  FROM [agf].[dbo].[empresas] as empresa inner join subgrupos_empresas s on empresa.ID_EMPRESA = s.ID_EMPRESA				
			FOR XML AUTO, TYPE,ROOT('Empresas')	 
    end
    else
    begin
		select 0 
    
    end
    
    
	
  
  
  
  
  
END
