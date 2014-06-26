USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_insertar_valores]    Script Date: 06/25/2014 19:18:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[sp_xbrl_insertar_valores] 
	-- Add the parameters for the stored procedure here
	@xmlParam xml
AS

	

BEGIN
	


declare @rut varchar(10)
declare @validaRut varchar(10)
declare @periodo varchar(10)
declare @idPer int


select @rut = NODO.ITEM.value('@rut','VARCHAR(10)'), @periodo = NODO.ITEM.value('@periodo','VARCHAR(10)')
FROM   @xmlParam.nodes('/Tags') AS NODO(ITEM)

select @validaRut = ID
FROM   xbrl_empresas
WHERE RUT = @rut


DECLARE @tag TABLE (
	idTag varchar(50),
	valor decimal(25,2),
	contextRef varchar(100)
	) 

INSERT INTO @tag (idTag, valor, contextRef) 
SELECT NODO.ITEM.value('@idTag','VARCHAR(50)'), NODO.ITEM.value('@valor','VARCHAR(50)'), NODO.ITEM.value('@contextRef','VARCHAR(100)')
FROM   @xmlParam.nodes('/Tags/tag') AS NODO(ITEM)



select @idPer = ID_PERIODO
from periodos
where label = @periodo

INSERT INTO [agf].[dbo].[valoresResp]
           ([ID_TAG_AGF]
           ,[ID_EMPRESA]
           ,[ID_PERIODO]
           ,[tipo]
           ,[VALOR]
           ,[DT_MODIFICACION]
           ,[origen]
           ,[id_formula]
           )
select  b.id as id_tag, @validaRut, @idPer, a1.id as id_contexto, a.valor, sysdatetime(), 1, 0
from @tag a 
	inner join xbrl_tag b on a.idTag = b.tag
	inner join xbrl_contexto a1 on a1.nombre = a.contextRef





	
END
