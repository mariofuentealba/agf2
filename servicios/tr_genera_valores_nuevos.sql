-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
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
ALTER TRIGGER [dbo].[tr_genera_valores_nuevos]
   ON  dbo.tag_agf
   AFTER  INSERT
AS 
BEGIN
	
	
	declare @id  int
	
	
	
	INSERT INTO valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula) 
				select i.id_tag_agf , x.id_empresa, id_periodo, c.contexto, 0.00, '1900-01-01', 1, 0
				from periodos a cross join empresas x cross join inserted i cross join contextos c
	WHERE i.origen = 'XBRL'
	
	
	/*INSERT INTO valores(ID_TAG_AGF, ID_EMPRESA, ID_PERIODO, tipo, VALOR, DT_MODIFICACION, origen, id_formula) 
				select i.id_tag_agf , x.id, id_periodo, c.contexto, 0.00, '1900-01-01', 1, 0
				from periodos a cross join xbrl_empresas x cross join inserted i cross join contextos c
	WHERE i.origen = 'XBRL'*/
	

END
GO

/*


declare @inserted  TABLE (
	[ID_TAG_AGF] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](300) NULL,
	[ETIQUETA] [varchar](300) NULL,
	[COMPONENTE] [varchar](50) NULL,
	[ORIGEN] [varchar](50) NULL,
	[OA] [varchar](1) NULL,
	[id_xbrl] [int] NULL)




insert into @inserted ([NOMBRE],	[ETIQUETA],	[COMPONENTE], [ORIGEN],	[OA],	id_xbrl)
select traduccion,  traduccion,  'NO ESPECIFICA', 'XBRL', 1, t.id
  from xbrl_tag t 
		inner join (select id_tag, min(id_traduccion) id_traduccion
					from xbrl_tag_traduccion
					group by id_tag) tt on t.id = tt.id_tag
		inner join xbrl_traduccion tr on tt.id_traduccion = tr.id
		
		
		
select i.id_tag_agf , x.id, id_periodo, c.contexto, 0.00, '1900-01-01', 1, 0
				from periodos a cross join xbrl_empresas x cross join @inserted i cross join contextos c
	WHERE i.origen = 'XBRL'*/