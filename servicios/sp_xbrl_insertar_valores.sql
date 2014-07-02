USE [agf]
GO
/****** Object:  StoredProcedure [dbo].[sp_xbrl_insertar_valores]    Script Date: 07/02/2014 11:06:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================

/*

exec [dbo].[sp_xbrl_insertar_valores] '<Tags periodo="06-2010" rut="99551480"><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="15042000" idTag="CashAndCashEquivalents" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="7298000" idTag="CashAndCashEquivalents" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="12267000" idTag="CurrentTaxAssets" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="14367000" idTag="CurrentTaxAssets" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="9905000" idTag="CurrentTaxAssets" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="27309000" idTag="CurrentAssetsOtherThanAssetsOrDisposalGroupsClassifiedAsHeldForSaleOrAsHeldForDistributionToOwners" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="14367000" idTag="CurrentAssetsOtherThanAssetsOrDisposalGroupsClassifiedAsHeldForSaleOrAsHeldForDistributionToOwners" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="17203000" idTag="CurrentAssetsOtherThanAssetsOrDisposalGroupsClassifiedAsHeldForSaleOrAsHeldForDistributionToOwners" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="27309000" idTag="CurrentAssets" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="14367000" idTag="CurrentAssets" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="17203000" idTag="CurrentAssets" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="38847258000" idTag="PropertyPlantAndEquipment" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="38847258000" idTag="PropertyPlantAndEquipment" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="38847258000" idTag="PropertyPlantAndEquipment" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="38847258000" idTag="NoncurrentAssets" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="38847258000" idTag="NoncurrentAssets" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="38847258000" idTag="NoncurrentAssets" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="38874567000" idTag="Assets" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="38861625000" idTag="Assets" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="38864461000" idTag="Assets" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="2353000" idTag="TradeAndOtherCurrentPayables" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="1771000" idTag="TradeAndOtherCurrentPayables" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="820000" idTag="TradeAndOtherCurrentPayables" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="561518000" idTag="CuentasPagarEntidadesRelacionadasCorrientes" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="473197000" idTag="CuentasPagarEntidadesRelacionadasCorrientes" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="395535000" idTag="CuentasPagarEntidadesRelacionadasCorrientes" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="563871000" idTag="CurrentLiabilitiesOtherThanLiabilitiesIncludedInDisposalGroupsClassifiedAsHeldForSale" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="474968000" idTag="CurrentLiabilitiesOtherThanLiabilitiesIncludedInDisposalGroupsClassifiedAsHeldForSale" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="396355000" idTag="CurrentLiabilitiesOtherThanLiabilitiesIncludedInDisposalGroupsClassifiedAsHeldForSale" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="563871000" idTag="CurrentLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="474968000" idTag="CurrentLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="396355000" idTag="CurrentLiabilities" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="3888747000" idTag="DeferredTaxLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="3926236000" idTag="DeferredTaxLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="3926236000" idTag="DeferredTaxLiabilities" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="3888747000" idTag="NoncurrentLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="3926236000" idTag="NoncurrentLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="3926236000" idTag="NoncurrentLiabilities" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="4452618000" idTag="Liabilities" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="4401204000" idTag="Liabilities" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="4322591000" idTag="Liabilities" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="3616267000" idTag="IssuedCapital" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="3616267000" idTag="IssuedCapital" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="3701399000" idTag="IssuedCapital" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="11071130000" idTag="GananciaPerdidaAcumulada" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="11109602000" idTag="GananciaPerdidaAcumulada" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="11191051000" idTag="GananciaPerdidaAcumulada" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="19734552000" idTag="OtherReserves" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="19734552000" idTag="OtherReserves" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="19649420000" idTag="OtherReserves" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="34421949000" idTag="EquityAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="34460421000" idTag="EquityAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="34541870000" idTag="EquityAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="34421949000" idTag="Equity" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="34460421000" idTag="Equity" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="34541870000" idTag="Equity" /><tag unitRef="CLP" contextRef="CierreTrimestreActual" decimals="0" valor="38874567000" idTag="EquityAndLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualAnterior" decimals="0" valor="38861625000" idTag="EquityAndLiabilities" /><tag unitRef="CLP" contextRef="CierreAnualPrevioAnterior" decimals="0" valor="38864461000" idTag="EquityAndLiabilities" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="88372000" idTag="AdministrativeExpense" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="45487000" idTag="AdministrativeExpense" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="46780000" idTag="AdministrativeExpense" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="3895000" idTag="AdministrativeExpense" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="144000" idTag="ResultadosUnidadesReajuste" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="144000" idTag="ResultadosUnidadesReajuste" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-88228000" idTag="ProfitLossBeforeTax" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-45487000" idTag="ProfitLossBeforeTax" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-46636000" idTag="ProfitLossBeforeTax" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-3895000" idTag="ProfitLossBeforeTax" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-49756000" idTag="IncomeTaxExpenseContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-6823000" idTag="IncomeTaxExpenseContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-30413000" idTag="IncomeTaxExpenseContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="12520000" idTag="IncomeTaxExpenseContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-38472000" idTag="ProfitLossFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-38664000" idTag="ProfitLossFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-16223000" idTag="ProfitLossFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-16415000" idTag="ProfitLossFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-38472000" idTag="ProfitLoss" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-38664000" idTag="ProfitLoss" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-16223000" idTag="ProfitLoss" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-16415000" idTag="ProfitLoss" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-37233000" idTag="ProfitLossAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-37419000" idTag="ProfitLossAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-15700000" idTag="ProfitLossAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-15886000" idTag="ProfitLossAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-1239000" idTag="ProfitLossAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-1245000" idTag="ProfitLossAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-523000" idTag="ProfitLossAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-529000" idTag="ProfitLossAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="3" valor="-8.266" idTag="BasicEarningsLossPerShareFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="3" valor="-8.308" idTag="BasicEarningsLossPerShareFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="4" valor="3.4858" idTag="BasicEarningsLossPerShareFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="3" valor="3.527" idTag="BasicEarningsLossPerShareFromContinuingOperations" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="3" valor="-8.266" idTag="BasicEarningsLossPerShare" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="3" valor="-8.308" idTag="BasicEarningsLossPerShare" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="4" valor="3.4858" idTag="BasicEarningsLossPerShare" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="3" valor="3.527" idTag="BasicEarningsLossPerShare" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-38472000" idTag="ComprehensiveIncome" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-38664000" idTag="ComprehensiveIncome" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-16223000" idTag="ComprehensiveIncome" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-16415000" idTag="ComprehensiveIncome" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-37233000" idTag="ComprehensiveIncomeAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-37419000" idTag="ComprehensiveIncomeAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-15700000" idTag="ComprehensiveIncomeAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-15886000" idTag="ComprehensiveIncomeAttributableToOwnersOfParent" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-1239000" idTag="ComprehensiveIncomeAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-1245000" idTag="ComprehensiveIncomeAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreActual" decimals="0" valor="-523000" idTag="ComprehensiveIncomeAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreAnterior" decimals="0" valor="-529000" idTag="ComprehensiveIncomeAttributableToNoncontrollingInterests" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-49756000" idTag="AdjustmentsForIncomeTaxExpense" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-6823000" idTag="AdjustmentsForIncomeTaxExpense" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="2100000" idTag="AdjustmentsForDecreaseIncreaseInOtherOperatingReceivables" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="9866000" idTag="AdjustmentsForDecreaseIncreaseInOtherOperatingReceivables" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="1050000" idTag="AdjustmentsForIncreaseDecreaseInTradeAccountPayable" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="484000" idTag="AdjustmentsForIncreaseDecreaseInTradeAccountPayable" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="12123000" idTag="OtherAdjustmentsForNoncashItems" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-34483000" idTag="AdjustmentsForReconcileProfitLoss" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="3527000" idTag="AdjustmentsForReconcileProfitLoss" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="-72955000" idTag="CashFlowsFromUsedInOperatingActivities" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="-35137000" idTag="CashFlowsFromUsedInOperatingActivities" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="87997000" idTag="PrestamosEntidadesRelacionadasActividadesFinanciacion" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="38179000" idTag="PrestamosEntidadesRelacionadasActividadesFinanciacion" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="87997000" idTag="CashFlowsFromUsedInFinancingActivities" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="38179000" idTag="CashFlowsFromUsedInFinancingActivities" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="15042000" idTag="IncreaseDecreaseInCashAndCashEquivalentsBeforeEffectOfExchangeRateChanges" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="3042000" idTag="IncreaseDecreaseInCashAndCashEquivalentsBeforeEffectOfExchangeRateChanges" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoActual" decimals="0" valor="15042000" idTag="IncreaseDecreaseInCashAndCashEquivalents" /><tag unitRef="CLP" contextRef="TrimestreAcumuladoAnterior" decimals="0" valor="3042000" idTag="IncreaseDecreaseInCashAndCashEquivalents" /><tag unitRef="CLP" contextRef="CierreTrimestreAnterior" decimals="0" valor="7298000" idTag="CashAndCashEquivalents" /></Tags>'



*/




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
	inner join xbrl_contexto a1 on a1.nombre = a.contextRef and a1.periodo = @periodo--and a1.id_periodo = @idPer
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
select  b.id as id_tag, @validaRut, @idPer, a1.id as id_contexto, a.valor, @fechaActual, 1, 0
from @tag a 
	inner join xbrl_tag b on a.idTag = b.tag
	inner join xbrl_contexto a1 on a1.nombre = a.contextRef and a1.periodo = @periodo--and a1.id_periodo = @idPer
except
select [ID_TAG_AGF],[ID_EMPRESA],[ID_PERIODO],[tipo],[VALOR],@fechaActual,[origen],[id_formula]
from [agf].[dbo].[valoresResp]




	
END
