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
	--BEGIN TRANSACTION




		
		declare @valoresPer TABLE (
				ID_VALOR int null,			
				[ID_TAG_AGF] [int] NULL,
				[ID_EMPRESA] [int] NULL,
				[ID_PERIODO] [int] NULL,
				[orden] [int] NOT NULL,				
				[VALOR] [decimal](25, 2) NOT NULL,				
				[anio] [int] NULL,
				[mes] [int] NOT NULL
			)
		
		
	
				
				
				
		INSERT INTO @valoresPer 
		
			SELECT  v.ID_VALOR, v.ID_TAG_AGF, v.id_empresa, v.ID_PERIODO, p.orden, v.valor, p.ANO, p.MES
			from Inserted v 
				inner join periodos p 
					on v.ID_PERIODO = p.ID_PERIODO					
			where v.origen = 1	
				and v.tipo = 'Cierre Trimestre Actual'		
				
			
		
		
	INSERT INTO [agf].[dbo].[valores]
           ([ID_TAG_AGF]
           ,[ID_EMPRESA]
           ,[ID_PERIODO]
           ,[tipo]
           ,[VALOR]
           ,[DT_MODIFICACION]
           ,[origen]
           ,[id_formula]
           ,[hist_formula]
           )	 
		select i.id_tag_agf, i.id_empresa, i.id_periodo, 'ANUAL', 
		(select sum(v.valor)
		 from valores v 
			inner join periodos p
				on v.id_periodo = p.id_periodo
		 where p.orden between i.orden - 3 and i.orden
				and v.ID_EMPRESA = i.ID_EMPRESA
				and v.ID_TAG_AGF = i.ID_TAG_AGF
		 ),	
		
		sysdatetime(), 1, 0, 
			isnull((select convert(varchar(20), v.ID_VALOR)
					 from valores v 
						inner join periodos p
							on v.id_periodo = p.id_periodo
					 where p.orden = i.orden - 3 
							and v.ID_EMPRESA = i.ID_EMPRESA
							and v.ID_TAG_AGF = i.ID_TAG_AGF
					 ), '') + '|' + 
			isnull((select convert(varchar(20), v.ID_VALOR)
					 from valores v 
						inner join periodos p
							on v.id_periodo = p.id_periodo
					 where p.orden = i.orden - 2 
							and v.ID_EMPRESA = i.ID_EMPRESA
							and v.ID_TAG_AGF = i.ID_TAG_AGF
					 ), '') + '|' + 
			isnull((select convert(varchar(20), v.ID_VALOR)
					 from valores v 
						inner join periodos p
							on v.id_periodo = p.id_periodo
					 where p.orden = i.orden - 1 
							and v.ID_EMPRESA = i.ID_EMPRESA
							and v.ID_TAG_AGF = i.ID_TAG_AGF
					 ), '')
		from @valoresPer i 				
union	 
		select i.id_tag_agf, i.id_empresa, i.id_periodo, 'ACUMULADO', 
		(select sum(v.valor)
		 from valores v 
			inner join periodos p
				on v.id_periodo = p.id_periodo
		 where p.orden between i.orden - 3 and i.orden
				and p.ANO = i.anio
				and v.ID_EMPRESA = i.ID_EMPRESA
				and v.ID_TAG_AGF = i.ID_TAG_AGF
		 ),	
		
		sysdatetime(), 1, 0, 
			isnull((select convert(varchar(20), v.ID_VALOR)
					 from valores v 
						inner join periodos p
							on v.id_periodo = p.id_periodo
					 where p.orden = i.orden - 3 
							and p.ANO = i.anio
							and v.ID_EMPRESA = i.ID_EMPRESA
							and v.ID_TAG_AGF = i.ID_TAG_AGF
					 ), '') + '|' + 
			isnull((select convert(varchar(20), v.ID_VALOR)
					 from valores v 
						inner join periodos p
							on v.id_periodo = p.id_periodo
					 where p.orden = i.orden - 2 
							and p.ANO = i.anio
							and v.ID_EMPRESA = i.ID_EMPRESA
							and v.ID_TAG_AGF = i.ID_TAG_AGF
					 ), '') + '|' + 
			isnull((select convert(varchar(20), v.ID_VALOR)
					 from valores v 
						inner join periodos p
							on v.id_periodo = p.id_periodo
					 where p.orden = i.orden - 1 
							and p.ANO = i.anio
							and v.ID_EMPRESA = i.ID_EMPRESA
							and v.ID_TAG_AGF = i.ID_TAG_AGF
					 ), '')
		from @valoresPer i		
		
		
		
END
GO
