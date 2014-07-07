USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_insertar_valores]    Script Date: 07/06/2014 13:45:47 ******/
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
declare @fechaActual datetime


select @fechaActual = sysdatetime()


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
--where NODO.ITEM.value('@idTag','VARCHAR(50)') = 'Assets'


select @idPer = ID_PERIODO
from periodos
where label = @periodo


update v 
set valor = a.valor,
	[DT_MODIFICACION] = @fechaActual
from @tag a  
	inner join xbrl_tag b on a.idTag = b.tag
	inner join xbrl_contexto a1 on a1.nombre = a.contextRef-- and a1.id_periodo = @idPer
	inner join [agf].[dbo].[valoresResp] v on v.ID_TAG_AGF = b.id and v.tipo = a1.id and  @validaRut = v.ID_EMPRESA and @idPer = v.ID_PERIODO and 1 = v.origen


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
select  b.id as id_tag, @validaRut, @idPer, case a1.tipo when null then CONVERT(varchar(50), a1.id) else a1.tipo end  as id_contexto, a.valor, @fechaActual, 1, 0
from @tag a 
	inner join xbrl_tag b on a.idTag = b.tag
	inner join xbrl_contexto a1 on a1.nombre = a.contextRef and isnull(tipo, '0') <> '0'--and a1.id_periodo = @idPer
except
select [ID_TAG_AGF],[ID_EMPRESA],[ID_PERIODO],[tipo],[VALOR],@fechaActual,[origen],[id_formula]
from [agf].[dbo].[valoresResp]




	
END
