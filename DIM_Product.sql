-- Cleaned DIM_Product Table --
SELECT  
	p.ProductKey
	,p.ProductAlternateKey as [Product Item Code]
	,psc.EnglishProductSubcategoryName as [Product Sub Category]
	,pc.EnglishProductCategoryName as [Product Category]
	--,WeightUnitMeasureCode
	--,SizeUnitMeasureCode
	,p.EnglishProductName
	--,SpanishProductName
	--,FrenchProductName
	--,StandardCost
	--,FinishedGoodsFlag
	--,Color
	--,SafetyStockLevel
	--,ReorderPoint
	--,ListPrice
	--,Size
	--,SizeRange
	--,Weight
	--,DaysToManufacture
	--,ProductLine
	--,DealerPrice
	--,Class
	--,Style
	,p.ModelName
	--,LargePhoto
	,EnglishDescription
	--,FrenchDescription
	--,ChineseDescription
	--,ArabicDescription
	--,HebrewDescription
	--,ThaiDescription
	--,GermanDescription
	--,JapaneseDescription
	--,TurkishDescription
	,p.StartDate
	,p.EndDate
	,ISNULL (p.Status, 'Outdated') AS [Product Status] 
  FROM 
	[AdventureWorksDW2019].[dbo].[DimProduct] p
	LEFT JOIN dbo.DimProductSubcategory AS psc ON p.ProductSubcategoryKey = psc.ProductSubcategoryKey
	LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = psc.ProductCategoryKey
