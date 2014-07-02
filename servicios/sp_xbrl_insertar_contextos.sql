USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_insertar_contextos]    Script Date: 07/02/2014 10:42:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_xbrl_insertar_contextos]
	-- Add the parameters for the stored procedure here
	@xmlParam xml
AS

	

BEGIN

INSERT INTO xbrl_contexto ([nombre],[inicio],[fin], periodo) 
SELECT NODO.ITEM.value('@idTag','VARCHAR(50)'), NODO.ITEM.value('@inicio','VARCHAR(10)'), NODO.ITEM.value('@fin','VARCHAR(10)'), NODO.ITEM.value('@periodo','VARCHAR(10)')
FROM   @xmlParam.nodes('/tag') AS NODO(ITEM)
--where NODO.ITEM.value('@idTag','VARCHAR(50)') not in(select nombre from xbrl_contexto)






	
END
