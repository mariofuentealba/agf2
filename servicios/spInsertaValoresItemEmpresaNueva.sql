USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[spInsertaValoresItemEmpresaNueva]    Script Date: 06/03/2014 11:39:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:        <Author,,Name>
-- Create date: <Create Date,,>
-- Description:    <Description,,>
-- =============================================
ALTER PROCEDURE [dbo].[spInsertaValoresItemEmpresaNueva]
    -- Add the parameters for the stored procedure here
    @idEmp int
    
AS
BEGIN
    declare @valores TABLE (
    [ID_VALOR] [int] IDENTITY(1,1) NOT NULL,
    [ID_TAG_AGF] [int] NULL,
    [ID_EMPRESA] [int] NULL,
    [ID_PERIODO] [int] NULL,
    [tipo] [varchar](10) NOT NULL,
    [VALOR] [decimal](25, 2) NOT NULL,
    [DT_MODIFICACION] [datetime] NULL,
    [origen] [int] NOT NULL,
    [id_formula] [int] NOT NULL,
    [hist_formula] [varchar](20) NULL)

declare @valoresPer TABLE (
    [ID_VALOR] [int] NOT NULL,
    [ID_TAG_AGF] [int] NULL,
    --[ID_EMPRESA] [int] NULL,    ES LA NUEVA
    --[tipo] [varchar](10) NOT NULL,  DEBEN SER TRIMESTRAL TODOS
    --[origen] [int] NOT NULL,  SIEMPRE 1
    --[id_formula] [int] NOT NULL, TIENEN SOLO UNA FORMULA
    [orden] [int] NULL,    
    [anio] [int] NULL,
    [mes] [int] NOT NULL)


INSERT INTO @valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula) 
select a.id_tag_agf, @idEmp, b.id_periodo, 'Cierre Trimestre Actual', 0, SYSDATETIME(), 1, 0
from tag_agf a, periodos b
where a.oa = 1
	AND a.ORIGEN = 'MANUAL'
                        
                        
INSERT INTO @valoresPer 
SELECT v.ID_VALOR, v.ID_TAG_AGF, p.orden, p.ANO, p.MES
from @valores v inner join periodos p on v.ID_PERIODO = p.ID_PERIODO


INSERT INTO @valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula, hist_formula) 
select a.id_tag_agf, @idEmp, b.id_periodo, 'ANUAL', 0, '1900-01-01', 1, 0, isnull((SELECT convert(varchar(20), vp.ID_VALOR) FROM @valoresPer vp WHERE vp.ID_TAG_AGF = a.ID_TAG_AGF and vp.orden = b.orden -1), '')
from tag_agf a, periodos b
where a.oa = 1

INSERT INTO @valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula, hist_formula) 
select a.id_tag_agf, @idEmp, b.id_periodo, 'ACUMULADO', 0, '1900-01-01', 1, 0, isnull((SELECT convert(varchar(20), vp.ID_VALOR) FROM @valoresPer vp WHERE vp.ID_TAG_AGF = a.ID_TAG_AGF and vp.anio = b.ANO AND vp.orden = b.orden -1), '') + '|' + isnull((SELECT convert(varchar(20), vp.ID_VALOR) FROM @valoresPer vp WHERE vp.ID_TAG_AGF = a.ID_TAG_AGF and vp.anio = b.ANO AND vp.orden = b.orden -2), '') + '|' + isnull((SELECT convert(varchar(20), vp.ID_VALOR) FROM @valoresPer vp WHERE vp.ID_TAG_AGF = a.ID_TAG_AGF and vp.anio = b.ANO AND vp.orden = b.orden -3), '')
from tag_agf a, periodos b
where a.oa = 1

INSERT INTO valores
SELECT [ID_TAG_AGF]
      ,[ID_EMPRESA]
      ,[ID_PERIODO]
      ,[tipo]
      ,[VALOR]
      ,[DT_MODIFICACION]
      ,[origen]
      ,[id_formula]
      ,[hist_formula]  
from @valores
order by 1,3,4 desc


END
