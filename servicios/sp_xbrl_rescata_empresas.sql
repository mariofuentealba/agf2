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
ALTER PROCEDURE [dbo].[sp_xbrl_rescata_empresas] 
	-- Add the parameters for the stored procedure here
	
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
		SELECT [id] idInterno
			  ,rut.[rut] id
			  ,rut.[nombre]
			  ,rut.[tipoEntidad]
			  ,rut.[vigencia]
			  ,case isnull(e.id_empresa, 0) when 0 then 'false' else 'true' end incluida
		  FROM [agf].[dbo].[xbrl_empresas] as rut 
				left join [agf].[dbo].[empresas] e on e.id_empresa = rut.id
			FOR XML AUTO, TYPE,ROOT('Resp')	 
    end
    else
    begin
		select 0 
    
    end
    
    
	
  
  
  
  
  
END
