SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_xbrl_extraccion] 
	-- Add the parameters for the stored procedure here
	@xmlParam xml
AS

	

BEGIN
	--set @xmlParam = '<Tags><tag valor="756555775000" idTag="ActivoIndividualEntidad" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="853472071000" idTag="ActivoIndividualEntidad" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="23976734000" idTag="CobrosEntidadesRelacionadasActividadesInversion" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="4569273000" idTag="CobrosEntidadesRelacionadasActividadesInversion" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="93765461000" idTag="CuentasPagarEntidadesRelacionadasCorrientes" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="93041206000" idTag="CuentasPagarEntidadesRelacionadasCorrientes" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="7117113000" idTag="DeudoresVariosCorrientes" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="29213245000" idTag="DeudoresVariosCorrientes" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="1895837000" idTag="DiferenciasCambio" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-8040329000" idTag="DiferenciasCambio" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="2236663000" idTag="Dividendos" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="122343000" idTag="EfectivoYEquivalentesEfectivoEstadoFlujo" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="81402000" idTag="EfectivoYEquivalentesEfectivoEstadoFlujo" decimals="0" contextRef="CierreTrimestreAnterior" unitRef="CLP" /><tag valor="159347000" idTag="EfectivoYEquivalentesEfectivoEstadoFlujo" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="35825000" idTag="EfectivoYEquivalentesEfectivoEstadoFlujo" decimals="0" contextRef="SaldoAnteriorInicio" unitRef="CLP" /><tag valor="256112075000" idTag="GananciaPerdidaAcumulada" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="241300331000" idTag="GananciaPerdidaAcumulada" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="3135768000" idTag="Hasta90DiasPrestamosContable" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="3135768000" idTag="Hasta90DiasPrestamosNominales" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="5049012000" idTag="ImportesPrestamosCortoPlazoActividadesFinanciacion" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="108256660000" idTag="MasDe1AñoHasta3AñosPrestamosContable" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="132877407000" idTag="MasDe1AñoHasta3AñosPrestamosContable" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="108256660000" idTag="MasDe1AñoHasta3AñosPrestamosNominales" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="132877407000" idTag="MasDe1AñoHasta3AñosPrestamosNominales" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="27900000000" idTag="MasDe3AñosHasta5AñosPrestamosContable" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="27900075000" idTag="MasDe3AñosHasta5AñosPrestamosContable" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="27900000000" idTag="MasDe3AñosHasta5AñosPrestamosNominales" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="27900075000" idTag="MasDe3AñosHasta5AñosPrestamosNominales" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="48225000000" idTag="MasDe5AñosPrestamosContable" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="48224940000" idTag="MasDe5AñosPrestamosContable" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="48225000000" idTag="MasDe5AñosPrestamosNominales" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="48224940000" idTag="MasDe5AñosPrestamosNominales" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="33330423000" idTag="Masde90DiasHasta1AñoPrestamosContable" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="32120843000" idTag="Masde90DiasHasta1AñoPrestamosContable" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="33330423000" idTag="MasDe90DiasHasta1AñoPrestamosNominales" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="32120843000" idTag="MasDe90DiasHasta1AñoPrestamosNominales" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="220847851000" idTag="MontosNominalesPrestamos" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="241123265000" idTag="MontosNominalesPrestamos" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="457" idTag="NumeroRegistroValores" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="pure" /><tag valor="-28058473000" idTag="OtrasReservasVarias" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="-27368531000" idTag="OtrasReservasVarias" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="344856000" idTag="OtrosPasivosFinancierosNoClasificados" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="373409000" idTag="OtrosPasivosFinancierosNoClasificados" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="344856000" idTag="OtrosPasivosFinancierosNoClasificadosNoCorrientes" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="373409000" idTag="OtrosPasivosFinancierosNoClasificadosNoCorrientes" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="508618891000" idTag="PatrimonioReexpresado" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="326062792000" idTag="PatrimonioReexpresado" decimals="0" contextRef="SaldoAnteriorInicio" unitRef="CLP" /><tag valor="220847851000" idTag="PrestamosBancarios" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="241123265000" idTag="PrestamosBancarios" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="36466191000" idTag="PrestamosBancariosCorrientes" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="32120843000" idTag="PrestamosBancariosCorrientes" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="184381660000" idTag="PrestamosBancariosNoCorrientes" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="209002422000" idTag="PrestamosBancariosNoCorrientes" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="0" idTag="AmountOfReclassificationsOrChangesInPresentation" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="0" idTag="AmountOfReclassificationsOrChangesInPresentation" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="822533466000" idTag="Assets" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="843306039000" idTag="Assets" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="0" idTag="AssetsWithSignificantRiskOfMaterialAdjustmentsWithinNextFinancialYear" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="0" idTag="AssetsWithSignificantRiskOfMaterialAdjustmentsWithinNextFinancialYear" decimals="0" contextRef="CierreTrimestreAnterior" unitRef="CLP" /><tag valor="42266000" idTag="BalancesWithBanks" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="159347000" idTag="BalancesWithBanks" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="9.6639" idTag="BasicAndDilutedEarningsLossPerShare" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="shares" /><tag valor="3.6046" idTag="BasicAndDilutedEarningsLossPerShare" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="9.6639" idTag="BasicAndDilutedEarningsLossPerShareFromContinuingOperations" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="shares" /><tag valor="3.6046" idTag="BasicAndDilutedEarningsLossPerShareFromContinuingOperations" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="9.6639" idTag="BasicEarningsLossPerShare" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="shares" /><tag valor="3.6046" idTag="BasicEarningsLossPerShare" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="9.6639" idTag="BasicEarningsLossPerShareFromContinuingOperations" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="shares" /><tag valor="3.6046" idTag="BasicEarningsLossPerShareFromContinuingOperations" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="42266000" idTag="Cash" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="159347000" idTag="Cash" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="122343000" idTag="CashAndCashEquivalents" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="159347000" idTag="CashAndCashEquivalents" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="80077000" idTag="CashEquivalents" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="-23976734000" idTag="CashFlowsFromUsedInFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-13990768000" idTag="CashFlowsFromUsedInFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="23976734000" idTag="CashFlowsFromUsedInInvestingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="4569273000" idTag="CashFlowsFromUsedInInvestingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-35677000" idTag="CashFlowsFromUsedInOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="9469468000" idTag="CashFlowsFromUsedInOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-14410000" idTag="CashFlowsFromUsedInOperations" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-65597000" idTag="CashFlowsFromUsedInOperations" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-1237662000" idTag="ChangesInEquity" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-17660673000" idTag="ChangesInEquity" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-8584412000" idTag="ComprehensiveIncome" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-16813451000" idTag="ComprehensiveIncome" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-352112000" idTag="ComprehensiveIncomeAttributableToNoncontrollingInterests" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="361000" idTag="ComprehensiveIncomeAttributableToNoncontrollingInterests" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-8232300000" idTag="ComprehensiveIncomeAttributableToOwnersOfParent" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-16813812000" idTag="ComprehensiveIncomeAttributableToOwnersOfParent" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="4260000" idTag="ComputerSoftware" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="4320000" idTag="ComputerSoftware" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="83823000" idTag="CostOfSales" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="161053000" idTag="CostOfSales" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="7239456000" idTag="CurrentAssets" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="29372592000" idTag="CurrentAssets" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="7239456000" idTag="CurrentAssetsOtherThanAssetsOrDisposalGroupsClassifiedAsHeldForSaleOrAsHeldForDistributionToOwners" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="29372592000" idTag="CurrentAssetsOtherThanAssetsOrDisposalGroupsClassifiedAsHeldForSaleOrAsHeldForDistributionToOwners" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="36466191000" idTag="CurrentFinancialLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="32120843000" idTag="CurrentFinancialLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="36466191000" idTag="CurrentFinancialLiabilitiesAtAmortisedCost" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="32120843000" idTag="CurrentFinancialLiabilitiesAtAmortisedCost" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="130425721000" idTag="CurrentLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="125311317000" idTag="CurrentLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="130425721000" idTag="CurrentLiabilitiesOtherThanLiabilitiesIncludedInDisposalGroupsClassifiedAsHeldForSale" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="125311317000" idTag="CurrentLiabilitiesOtherThanLiabilitiesIncludedInDisposalGroupsClassifiedAsHeldForSale" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="185718000" idTag="CurrentTaxLiabilitiesCurrent" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="107511000" idTag="CurrentTaxLiabilitiesCurrent" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="7117113000" idTag="CurrentTradeReceivables" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="29213245000" idTag="CurrentTradeReceivables" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="9.6639" idTag="DilutedEarningsLossPerShare" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="shares" /><tag valor="3.6046" idTag="DilutedEarningsLossPerShare" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="9.6639" idTag="DilutedEarningsLossPerShareFromContinuingOperations" decimals="15" contextRef="TrimestreAcumuladoActual" unitRef="shares" /><tag valor="3.6046" idTag="DilutedEarningsLossPerShareFromContinuingOperations" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="-2421000" idTag="DistributionAndAdministrativeExpense" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-5111000" idTag="DistributionAndAdministrativeExpense" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="2421000" idTag="DistributionCosts" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="5111000" idTag="DistributionCosts" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="92982650800" idTag="DividendsProposedOrDeclaredBeforeFinancialStatementsAuthorisedForIssueButNotRecognisedAsDistributionToOwners" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="13393541000" idTag="DividendsReceivedClassifiedAsOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="120.37109" idTag="DividendsRecognisedAsDistributionsToOwnersPerShare" decimals="15" contextRef="TrimestreAcumuladoAnterior" unitRef="shares" /><tag valor="-1327000" idTag="EffectOfExchangeRateChangesOnCashAndCashEquivalents" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-2396000" idTag="EffectOfExchangeRateChangesOnCashAndCashEquivalents" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="507381229000" idTag="Equity" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="308402119000" idTag="Equity" decimals="0" contextRef="CierreTrimestreAnterior" unitRef="CLP" /><tag valor="508618891000" idTag="Equity" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="326062792000" idTag="Equity" decimals="0" contextRef="SaldoAnteriorInicio" unitRef="CLP" /><tag valor="822533466000" idTag="EquityAndLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="843306039000" idTag="EquityAndLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="441481764000" idTag="EquityAttributableToOwnersOfParent" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="442367314000" idTag="EquityAttributableToOwnersOfParent" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="4076194000" idTag="FinanceCosts" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="2619197000" idTag="FinanceCosts" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="34322000" idTag="FinanceIncome" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="101498000" idTag="FinanceIncome" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-4041872000" idTag="FinanceIncomeCost" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-2517699000" idTag="FinanceIncomeCost" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="221192707000" idTag="FinancialLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="241496674000" idTag="FinancialLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="220847851000" idTag="FinancialLiabilitiesAtAmortisedCost" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="241123265000" idTag="FinancialLiabilitiesAtAmortisedCost" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="344856000" idTag="FinancialLiabilitiesAtFairValueThroughProfitOrLoss" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="373409000" idTag="FinancialLiabilitiesAtFairValueThroughProfitOrLoss" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="344856000" idTag="FinancialLiabilitiesAtFairValueThroughProfitOrLossDesignatedAsUponInitialRecognition" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="373409000" idTag="FinancialLiabilitiesAtFairValueThroughProfitOrLossDesignatedAsUponInitialRecognition" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="1844666000" idTag="GainsLossesOnCashFlowHedgesBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-1517800000" idTag="GainsLossesOnCashFlowHedgesBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-16852018000" idTag="GainsLossesOnExchangeDifferencesOnTranslationBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-18086861000" idTag="GainsLossesOnExchangeDifferencesOnTranslationBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="4933872000" idTag="GrossProfit" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="11667500000" idTag="GrossProfit" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="5017695000" idTag="IncomeFromContinuingOperationsAttributableToOwnersOfParent" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="11828553000" idTag="IncomeFromContinuingOperationsAttributableToOwnersOfParent" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="1487000" idTag="IncomeTaxesPaidRefundClassifiedAsOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="4564378000" idTag="IncomeTaxesPaidRefundClassifiedAsOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="78225000" idTag="IncomeTaxExpenseContinuingOperations" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-37004000" idTag="IncreaseDecreaseInCashAndCashEquivalents" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="45577000" idTag="IncreaseDecreaseInCashAndCashEquivalents" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-35677000" idTag="IncreaseDecreaseInCashAndCashEquivalentsBeforeEffectOfExchangeRateChanges" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="47973000" idTag="IncreaseDecreaseInCashAndCashEquivalentsBeforeEffectOfExchangeRateChanges" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="9583413000" idTag="IncreaseDecreaseThroughTransfersAndOtherChangesEquity" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-11888000" idTag="IncreaseDecreaseThroughTransfersAndOtherChangesEquity" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="4260000" idTag="IntangibleAssetsAndGoodwill" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="4320000" idTag="IntangibleAssetsAndGoodwill" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="4260000" idTag="IntangibleAssetsOtherThanGoodwill" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="4320000" idTag="IntangibleAssetsOtherThanGoodwill" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="-4076194000" idTag="InterestExpense" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-2619197000" idTag="InterestExpense" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-4076194000" idTag="InterestExpenseOnBorrowings" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-2619197000" idTag="InterestExpenseOnBorrowings" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="4720334000" idTag="InterestPaidClassifiedAsFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="2372752000" idTag="InterestPaidClassifiedAsFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="815289750000" idTag="InvestmentAccountedForUsingEquityMethod" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="813929127000" idTag="InvestmentAccountedForUsingEquityMethod" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="815289750000" idTag="InvestmentsInAssociates" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="813929127000" idTag="InvestmentsInAssociates" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="815289750000" idTag="InvestmentsInSubsidiariesJointVenturesAndAssociates" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="813929127000" idTag="InvestmentsInSubsidiariesJointVenturesAndAssociates" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="136821159000" idTag="IssuedCapital" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="136821159000" idTag="IssuedCapital" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="-835334000" idTag="IssueOfEquity" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="315152237000" idTag="Liabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="334687148000" idTag="Liabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="0" idTag="LiabilitiesWithSignificantRiskOfMaterialAdjustmentsWithinNextFinancialYear" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="0" idTag="LiabilitiesWithSignificantRiskOfMaterialAdjustmentsWithinNextFinancialYear" decimals="0" contextRef="CierreTrimestreAnterior" unitRef="CLP" /><tag valor="5308468000" idTag="MiscellaneousOtherOperatingIncome" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="1680277000" idTag="MiscellaneousOtherOperatingIncome" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="507381229000" idTag="NetAssetsLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="508618891000" idTag="NetAssetsLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="65899465000" idTag="NoncontrollingInterests" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="66251577000" idTag="NoncontrollingInterests" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="815294010000" idTag="NoncurrentAssets" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="813933447000" idTag="NoncurrentAssets" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="184726516000" idTag="NoncurrentFinancialLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="209375831000" idTag="NoncurrentFinancialLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="184381660000" idTag="NoncurrentFinancialLiabilitiesAtAmortisedCost" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="209002422000" idTag="NoncurrentFinancialLiabilitiesAtAmortisedCost" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="344856000" idTag="NoncurrentFinancialLiabilitiesAtFairValueThroughProfitOrLoss" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="373409000" idTag="NoncurrentFinancialLiabilitiesAtFairValueThroughProfitOrLoss" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="344856000" idTag="NoncurrentFinancialLiabilitiesAtFairValueThroughProfitOrLossDesignatedUponInitialRecognition" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="373409000" idTag="NoncurrentFinancialLiabilitiesAtFairValueThroughProfitOrLossDesignatedUponInitialRecognition" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="184726516000" idTag="NoncurrentLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="209375831000" idTag="NoncurrentLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="772465685" idTag="NumberOfSharesAuthorised" decimals="15" contextRef="CierreTrimestreActual" unitRef="shares" /><tag valor="772465685" idTag="NumberOfSharesAuthorised" decimals="15" contextRef="SaldoActualInicio" unitRef="shares" /><tag valor="772465685" idTag="NumberOfSharesIssuedAndFullyPaid" decimals="15" contextRef="CierreTrimestreActual" unitRef="shares" /><tag valor="772465685" idTag="NumberOfSharesIssuedAndFullyPaid" decimals="15" contextRef="SaldoActualInicio" unitRef="shares" /><tag valor="772465685" idTag="NumberOfSharesOutstanding" decimals="15" contextRef="CierreTrimestreActual" unitRef="shares" /><tag valor="772465685" idTag="NumberOfSharesOutstanding" decimals="15" contextRef="SaldoActualInicio" unitRef="shares" /><tag valor="772465685" idTag="NumberOfSharesOutstanding" decimals="15" contextRef="SaldoAnteriorInicio" unitRef="shares" /><tag valor="-16600071000" idTag="OtherComprehensiveIncome" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-19598089000" idTag="OtherComprehensiveIncome" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-16600071000" idTag="OtherComprehensiveIncomeBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-19598089000" idTag="OtherComprehensiveIncomeBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="1844666000" idTag="OtherComprehensiveIncomeBeforeTaxCashFlowHedges" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-1517800000" idTag="OtherComprehensiveIncomeBeforeTaxCashFlowHedges" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-16852018000" idTag="OtherComprehensiveIncomeBeforeTaxExchangeDifferencesOnTranslation" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-18086861000" idTag="OtherComprehensiveIncomeBeforeTaxExchangeDifferencesOnTranslation" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-15007352000" idTag="OtherComprehensiveIncomeThatWillBeReclassifiedToProfitOrLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="-19604661000" idTag="OtherComprehensiveIncomeThatWillBeReclassifiedToProfitOrLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-1592719000" idTag="OtherComprehensiveIncomeThatWillNotBeReclassifiedToProfitOrLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="6572000" idTag="OtherComprehensiveIncomeThatWillNotBeReclassifiedToProfitOrLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="36466191000" idTag="OtherCurrentFinancialLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="32120843000" idTag="OtherCurrentFinancialLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="83777088000" idTag="OtherEquityInterest" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="83777088000" idTag="OtherEquityInterest" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="221192707000" idTag="OtherFinancialLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="241496674000" idTag="OtherFinancialLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="5308468000" idTag="OtherIncome" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="1680277000" idTag="OtherIncome" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-19780000" idTag="OtherInflowsOutflowsOfCashClassifiedAsOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="705902000" idTag="OtherInflowsOutflowsOfCashClassifiedAsOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="184726516000" idTag="OtherNoncurrentFinancialLiabilities" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="209375831000" idTag="OtherNoncurrentFinancialLiabilities" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="-35228558000" idTag="OtherReserves" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="-19531264000" idTag="OtherReserves" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="5017695000" idTag="OtherRevenue" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="11828553000" idTag="OtherRevenue" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="656.83" idTag="ParValuePerShare" decimals="15" contextRef="CierreTrimestreActual" unitRef="shares" /><tag valor="658.44" idTag="ParValuePerShare" decimals="15" contextRef="SaldoActualInicio" unitRef="shares" /><tag valor="14410000" idTag="PaymentsToSuppliersForGoodsAndServices" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="65597000" idTag="PaymentsToSuppliersForGoodsAndServices" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="5049012000" idTag="ProceedsFromBorrowingsClassifiedAsFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="8015659000" idTag="ProfitLoss" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="2784638000" idTag="ProfitLoss" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="550665000" idTag="ProfitLossAttributableToNoncontrollingInterests" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="222000" idTag="ProfitLossAttributableToNoncontrollingInterests" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="7464994000" idTag="ProfitLossAttributableToOwnersOfParent" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="2784416000" idTag="ProfitLossAttributableToOwnersOfParent" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="8093884000" idTag="ProfitLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="2784638000" idTag="ProfitLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="8015659000" idTag="ProfitLossFromContinuingOperations" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="2784638000" idTag="ProfitLossFromContinuingOperations" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="550665000" idTag="ProfitLossFromContinuingOperationsAttributableToNoncontrollingInterests" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="222000" idTag="ProfitLossFromContinuingOperationsAttributableToNoncontrollingInterests" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="10239919000" idTag="ProfitLossFromOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="13342666000" idTag="ProfitLossFromOperatingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="19256400000" idTag="RepaymentsOfBorrowingsClassifiedAsFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="16667028000" idTag="RepaymentsOfBorrowingsClassifiedAsFinancingActivities" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="8220935000" idTag="ReserveOfCashFlowHedges" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="6376269000" idTag="ReserveOfCashFlowHedges" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="-15391020000" idTag="ReserveOfExchangeDifferencesOnTranslation" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="1460998000" idTag="ReserveOfExchangeDifferencesOnTranslation" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="5017695000" idTag="Revenue" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="11828553000" idTag="Revenue" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="-1592719000" idTag="ShareOfOtherComprehensiveIncomeOfAssociatesAndJointVenturesAccountedForUsingEquityMethodThatWillNotBeReclassifiedToProfitOrLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoActual" unitRef="CLP" /><tag valor="6572000" idTag="ShareOfOtherComprehensiveIncomeOfAssociatesAndJointVenturesAccountedForUsingEquityMethodThatWillNotBeReclassifiedToProfitOrLossBeforeTax" decimals="0" contextRef="TrimestreAcumuladoAnterior" unitRef="CLP" /><tag valor="772465685" idTag="SharesReservedForIssueUnderOptionsAndContractsForSaleOfShares" decimals="15" contextRef="CierreTrimestreActual" unitRef="shares" /><tag valor="772465685" idTag="SharesReservedForIssueUnderOptionsAndContractsForSaleOfShares" decimals="15" contextRef="SaldoActualInicio" unitRef="shares" /><tag valor="80077000" idTag="ShorttermInvestmentsClassifiedAsCashEquivalents" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="8351000" idTag="TradeAndOtherCurrentPayables" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="41757000" idTag="TradeAndOtherCurrentPayables" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="8351000" idTag="TradeAndOtherCurrentPayablesToTradeSuppliers" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="41757000" idTag="TradeAndOtherCurrentPayablesToTradeSuppliers" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="7117113000" idTag="TradeAndOtherCurrentReceivables" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="29213245000" idTag="TradeAndOtherCurrentReceivables" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="8351000" idTag="TradeAndOtherPayables" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="41757000" idTag="TradeAndOtherPayables" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="8351000" idTag="TradeAndOtherPayablesToTradeSuppliers" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="41757000" idTag="TradeAndOtherPayablesToTradeSuppliers" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /><tag valor="7117113000" idTag="TradeAndOtherReceivables" decimals="0" contextRef="CierreTrimestreActual" unitRef="CLP" /><tag valor="29213245000" idTag="TradeAndOtherReceivables" decimals="0" contextRef="SaldoActualInicio" unitRef="CLP" /></Tags>'





INSERT INTO xbrl_extraccion (rut, url, periodo) 
SELECT NODO.ITEM.value('@id','VARCHAR(10)'), NODO.ITEM.value('@url','VARCHAR(300)'), NODO.ITEM.value('@periodo','VARCHAR(10)')
FROM   @xmlParam.nodes('/Ruts/rut') AS NODO(ITEM)



	
END
GO
