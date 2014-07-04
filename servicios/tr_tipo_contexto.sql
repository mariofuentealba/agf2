USE [agf]
GO
/****** Object:  Trigger [dbo].[tr_tipo_contexto]    Script Date: 07/04/2014 17:54:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>

--exec [agf].[dbo].[sp_xbrl_insertar_contextos] '<tag entity="92434000-2" inicio="2010-04-01" idTag="TrimestreActual" fin="2010-06-30" periodo="06-2010" /><tag entity="92434000-2" inicio="2010-01-01" idTag="TrimestreAcumuladoActual" fin="2010-06-30" periodo="06-2010" /><tag entity="92434000-2" inicio="2009-01-01" idTag="TrimestreAcumuladoAnterior" fin="2009-06-30" periodo="06-2010" /><tag entity="92434000-2" inicio="2009-04-01" idTag="TrimestreAnterior" fin="2009-06-30" periodo="06-2010" /><tag entity="92434000-2" inicio="2009-12-31" idTag="CierreAnualAnterior" fin="undefined" periodo="06-2010" /><tag entity="92434000-2" inicio="2008-12-31" idTag="CierreAnualPrevioAnterior" fin="undefined" periodo="06-2010" /><tag entity="92434000-2" inicio="2010-06-30" idTag="CierreTrimestreActual" fin="undefined" periodo="06-2010" /><tag entity="92434000-2" inicio="2009-06-30" idTag="CierreTrimestreAnterior" fin="undefined" periodo="06-2010" />'
--exec [agf].[dbo].[sp_xbrl_insertar_contextos] '<tag entity="92434000-2" inicio="2012-01-01" idTag="TrimestreAcumuladoActual" fin="2012-06-30" periodo="06-2012" /><tag entity="92434000-2" inicio="2011-01-01" idTag="TrimestreAcumuladoAnterior" fin="2011-06-30" periodo="06-2012" /><tag entity="92434000-2" inicio="2011-12-31" idTag="CierreAnualAnterior" fin="undefined" periodo="06-2012" /><tag entity="92434000-2" inicio="2012-06-30" idTag="CierreTrimestreActual" fin="undefined" periodo="06-2012" /><tag entity="92434000-2" inicio="2010-12-31" idTag="CierreAnualPrevioAnterior" fin="undefined" periodo="06-2012" /><tag entity="92434000-2" inicio="2011-06-30" idTag="CierreTrimestreAnterior" fin="undefined" periodo="06-2012" /><tag entity="92434000-2" inicio="2011-01-01" idTag="Context_Duration" fin="2011-12-31" periodo="06-2012" /><tag entity="92434000-2" inicio="2012-04-01" idTag="TrimestreMovilActual" fin="2012-06-30" periodo="06-2012" /><tag entity="92434000-2" inicio="2011-04-01" idTag="TrimestreMovilAnterior" fin="2011-06-30" periodo="06-2012" />'

-- =============================================
alter TRIGGER [dbo].[tr_tipo_contexto]  
   ON  [dbo].[xbrl_contexto]
   AFTER INSERT
AS 
BEGIN
	declare @inicio varchar(20)
	declare @fin varchar(20)
	declare @periodo varchar(20)
	declare @id int

	/*set @inicio = (Select inicio From Inserted i)
	set @fin  = (Select fin From Inserted )
	set @periodo = (Select periodo From Inserted i)
	set @id = (Select id From Inserted i)
	*/
	
	/*insert into logs 
	select inicio + ',' + fin + ',' + periodo + '::' + right(periodo, 4) + ';' + left(inicio, 4) + ';' + left(periodo, 2) + ';' + left(right(inicio, 5), 2)
	from Inserted
	*/
	
	
	update xbrl_contexto
	set tipo = 'Trimestre Movil Actual'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) and fin <> 'undefined' and case when fin <> 'undefined' then convert(int, left(right(fin, 5), 2)) else 0 end - convert(int, left(right(inicio, 5), 2)) = 2)
	
	update xbrl_contexto
	set tipo = 'Trimestre Movil Anterior'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) + 1 and fin <> 'undefined' and case when fin <> 'undefined' then convert(int, left(right(fin, 5), 2)) else 0 end - convert(int, left(right(inicio, 5), 2)) = 2)
	
	update xbrl_contexto
	set tipo = 'Cierre Trimestre Actual'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) and left(periodo, 2) = left(right(inicio, 5), 2) and fin = 'undefined')
	
	update xbrl_contexto
	set tipo = 'Cierre Trimestre Anterior'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) + 1 and left(periodo, 2) = left(right(inicio, 5), 2) and fin = 'undefined')
	
	update xbrl_contexto
	set tipo = 'Cierre Anual Anterior'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) + 1 and left(right(inicio, 5), 2) = '12' and fin = 'undefined')
	
	update xbrl_contexto
	set tipo = 'Cierre Anual Previo Anterior'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) + 2 and left(right(inicio, 5), 2) = '12' and fin = 'undefined')
	
	update xbrl_contexto
	set tipo = 'Trimestre Acumulado Actual'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) and left(right(inicio, 5), 2) = '01' and left(right(fin, 5), 2) = left(periodo, 2))
	
	update xbrl_contexto
	set tipo = 'Trimestre Acumulado Anterior'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) + 1 and left(right(inicio, 5), 2) = '01' and left(right(fin, 5), 2) = left(periodo, 2))
	
END
