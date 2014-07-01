USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_insertar_error_formato]    Script Date: 07/01/2014 08:31:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_xbrl_insertar_error_formato]
	-- Add the parameters for the stored procedure here
	@xmlParam xml
AS
BEGIN
	 

	INSERT INTO log_error_carga (empresa, periodo) 
	SELECT NODO.ITEM.value('@rut','VARCHAR(10)'), NODO.ITEM.value('@periodo','VARCHAR(100)')
	FROM   @xmlParam.nodes('/tag') AS NODO(ITEM)
	
	
	
	  
	
END
