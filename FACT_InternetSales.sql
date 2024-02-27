-- Cleaned FACT_InternetSales Table --
SELECT 
	f.[ProductKey]
	,f.[OrderDateKey]
	,f.[DueDateKey]
	,f.[ShipDateKey]
	,f.[CustomerKey]
	--	,[PromotionKey]
	-- ,f.[CurrencyKey]
	--	,[SalesTerritoryKey]
	,f.[SalesOrderNumber]
	--	,[SalesOrderLineNumber]
	--	,[RevisionNumber]
	--	,[OrderQuantity]
	--	,[UnitPrice]
	--	,[ExtendedAmount]
	--	,[UnitPriceDiscountPct]
	--	,[DiscountAmount]
	--	,[ProductStandardCost]
	--	,[TotalProductCost]
	,f.[SalesAmount]
	--	,[TaxAmt]
	--	,[Freight]
	--	,[CarrierTrackingNumber]
	--	,[CustomerPONumber]
	--	,[OrderDate]
	--	,[DueDate]
	--	,[ShipDate]
	-- ,c.[CurrencyName]
	-- ,cr.[AverageRate]
	,f.SalesAmount * cr.AverageRate as [US Dollar Sales Amount]
  FROM 
	[AdventureWorksDW2019].[dbo].[FactInternetSales] f
	left join [dbo].[DimCurrency] c on c.CurrencyKey = f.CurrencyKey
	left join [dbo].[FactCurrencyRate] cr on cr.CurrencyKey = f.CurrencyKey and cr.DateKey = f.OrderDateKey
WHERE 
	LEFT(OrderDateKey, 4) BETWEEN 2018 AND 2020