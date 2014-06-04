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
use [agf]

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER tr_genera_anuales_y_acumulados 
   ON  [agf].[dbo].[valores]
   AFTER INSERT
AS 
BEGIN
	declare @origen varchar(20)
	declare @tipo varchar(20)
	declare @orden varchar(20)
	
	set @origen = (Select (select origen from tag_agf t where t.id_tag_agf = i.id_tag_agf) From Inserted i)
	set @tipo = (Select tipo From Inserted )
	set @orden = (Select (select orden from periodos p where p.id_periodo = i.id_periodo) From Inserted i)
	
	if	@origen = 'XBRL' and @tipo = 'TRIMESTRAL'
	begin
		declare @valoresPer TABLE (
			[id_empresa] [int] NOT NULL,
			[ID_VALOR] [int] NOT NULL,
			[ID_TAG_AGF] [int] NULL,			
			[orden] [int] NULL,    
			[anio] [int] NULL,
			[mes] [int] NOT NULL,
			[valor] [int] NOT NULL)
		
		
	/*	INSERT INTO [agf].[dbo].[valores2]
           ([ID_TAG_AGF]
           ,[ID_EMPRESA]
           ,[ID_PERIODO]
           ,[tipo]
           ,[VALOR]
           ,[DT_MODIFICACION]
           ,[origen]
           ,[id_formula]
           ,[hist_formula])	 
			select [ID_TAG_AGF]
           ,[ID_EMPRESA]
           ,[ID_PERIODO]
           ,[tipo]
           ,[VALOR]
           ,[DT_MODIFICACION]
           ,[origen]
           ,[id_formula]
           ,[hist_formula]
			from inserted
			
		INSERT INTO valoresPer 
		
			SELECT v.id_empresa, v.ID_VALOR, v.ID_TAG_AGF, p.orden, p.ANO, p.MES, v.valor
			from valores v 
				inner join periodos p 
					on v.ID_PERIODO = p.ID_PERIODO	
				inner join inserted i
					ON 	v.id_tag_agf = i.id_tag_agf AND v.id_empresa = i.id_empresa and p.orden between @orden - 3 and @orden
			where v.origen = 1	
				and v.tipo = 'TRIMESTRAL'*/
				
				
		INSERT INTO @valoresPer 
		
			SELECT v.id_empresa, v.ID_VALOR, v.ID_TAG_AGF, p.orden, p.ANO, p.MES, v.valor
			from valores v 
				inner join periodos p 
					on v.ID_PERIODO = p.ID_PERIODO	
				inner join inserted i
					ON 	v.id_tag_agf = i.id_tag_agf AND v.id_empresa = i.id_empresa and p.orden between @orden - 3 and @orden
			where v.origen = 1	
				and v.tipo = 'TRIMESTRAL'		
	
		INSERT INTO [agf].[dbo].[valores]
           ([ID_TAG_AGF]
           ,[ID_EMPRESA]
           ,[ID_PERIODO]
           ,[tipo]
           ,[VALOR]
           ,[DT_MODIFICACION]
           ,[origen]
           ,[id_formula]
           ,[hist_formula])	 
		select i.id_tag_agf, i.id_empresa, v.id_periodo, 'ANUAL', sum(i.valor), sysdatetime(), 1, 0, 'nuevo'--isnull((SELECT convert(varchar(20), vp.ID_VALOR) FROM @valoresPer vp WHERE vp.ID_TAG_AGF = a.ID_TAG_AGF and vp.orden = b.orden -1), '')
				from inserted v 
					inner join @valoresPer i 
						ON v.id_tag_agf = i.id_tag_agf and v.id_empresa = i.id_empresa					
				where v.origen = 1	
					and v.tipo = 'TRIMESTRAL'				
		group by i.id_tag_agf, i.id_empresa, v.id_periodo
		
		
		INSERT INTO [agf].[dbo].[valores]
           ([ID_TAG_AGF]
           ,[ID_EMPRESA]
           ,[ID_PERIODO]
           ,[tipo]
           ,[VALOR]
           ,[DT_MODIFICACION]
           ,[origen]
           ,[id_formula]
           ,[hist_formula])	 
		select i.id_tag_agf, i.id_empresa, v.id_periodo, 'ACUMULADO', sum(i.valor), sysdatetime(), 1, 0, 'nuevo'--isnull((SELECT convert(varchar(20), vp.ID_VALOR) FROM @valoresPer vp WHERE vp.ID_TAG_AGF = a.ID_TAG_AGF and vp.orden = b.orden -1), '')
				from inserted v  inner join periodos p ON v.id_periodo = p.id_periodo 
					inner join @valoresPer i 
						ON v.id_tag_agf = i.id_tag_agf and v.id_empresa = i.id_empresa	and p.ANO = i.anio						
				where v.origen = 1					
		group by i.id_tag_agf, i.id_empresa, v.id_periodo
		
		
	end

END
GO
