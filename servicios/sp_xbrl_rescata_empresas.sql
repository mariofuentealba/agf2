-- =============================================  
-- Author:  <Author,,Name>  
-- Create date: <Create Date,,>  
-- Description: <Description,,>  
-- =============================================  
alter PROCEDURE [dbo].[sp_xbrl_rescata_empresas]   
 -- Add the parameters for the stored procedure here  
   
AS  
BEGIN  
 -- SET NOCOUNT ON added to prevent extra result sets from  
 -- interfering with SELECT statements.  
 SET NOCOUNT ON;  
  
    -- Insert statements for procedure here  
    declare @cant int  
      
    select @cant = COUNT(*)  
    from [agf].[dbo].[xbrl_empresas]   
      
      
    if @cant > 0  
    begin  
  SELECT [id] idInterno  
     ,empresa.[rut] id  
     ,empresa.[nombre]  
     ,empresa.[tipoEntidad]  
     ,empresa.[vigencia]  
     ,case isnull(e.id_empresa, 0) when 0 then 'false' else 'true' end incluida, 
  (select ID_SUBGRUPO from subgrupos_empresas subgrupo where subgrupo.ID_EMPRESA = e.ID_EMPRESA FOR XML AUTO, TYPE,ROOT('SubGrupos')	) 
    FROM [agf].[dbo].[xbrl_empresas] as empresa   
    left join [agf].[dbo].[empresas] e on e.id_empresa = empresa.id  
   FOR XML AUTO, TYPE,ROOT('Resp')    
    end  
    else  
    begin  
  select 0   
      
    end  
      
      
   
    
    
    
    
    
END  