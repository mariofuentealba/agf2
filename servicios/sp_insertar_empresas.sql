USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_insertar_valores]    Script Date: 07/24/2014 02:41:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
alter PROCEDURE [dbo].[sp_insertar_empresas] 
	-- Add the parameters for the stored procedure here
	@xmlParam xml
AS

	

BEGIN
	
INSERT INTO empresas (ID_EMPRESA, RUT, rso, color,	orden, tipoEntidad, vigencia) 
SELECT NODO.ITEM.value('@ID_EMPRESA','int'), NODO.ITEM.value('@RUT','VARCHAR(10)'), NODO.ITEM.value('@RSO','VARCHAR(100)'), 0, 0, NODO.ITEM.value('@tipoEntidad','VARCHAR(100)'), NODO.ITEM.value('@vigencia','VARCHAR(20)')
FROM   @xmlParam.nodes('/Empresas/empresa') AS NODO(ITEM)
--where NODO.ITEM.value('@idTag','VARCHAR(50)') = 'Assets'

select id_empresas
from empresas
where rut in (select NODO.ITEM.value('@RUT','VARCHAR(10)')
FROM   @xmlParam.nodes('/Empresas/empresa') AS NODO(ITEM))

	
END
