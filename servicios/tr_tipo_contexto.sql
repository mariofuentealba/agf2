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
	set tipo = 'TRIMESTRAL'
	where id in (Select id From Inserted i where right(periodo, 4) = left(inicio, 4) and left(periodo, 2) = left(right(inicio, 5), 2) and fin = 'undefined')
	
	
	/*
	if right(@periodo, 4) = right(@inicio, 4)
	begin
		if left(@periodo, 2) = right(left(@inicio, 2), 6) and @fin = 'undefined'
		begin
			update xbrl_contexto
			set tipo = 'TRIMESTRAL'
			where id = @id
		end
		
	end
	else
	begin
		set @periodo = (Select periodo From Inserted i)
	end*/

END
GO
