
use agf

-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE sp_xbrl_rescata_empresas 
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
		SELECT  [rut] id
			  ,[nombre]
			  ,[tipoEntidad]
			  ,[vigencia]
		  FROM [agf].[dbo].[xbrl_empresas] as rut FOR XML AUTO, TYPE,ROOT('Resp');	
    end
    else
    begin
		select 0 
    
    end
    
    
	
  
  
  
  
  
END
GO
