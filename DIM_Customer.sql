-- Cleaned DIM_Customers Table --
SELECT
	  c.CustomerKey as [Customer Key]
      --	,[GeographyKey]
      --	,[CustomerAlternateKey]
      --	,[Title]
      ,c.FirstName as [First Name]
      --	,[MiddleName]
      ,c.LastName as [Last Name]
	  ,c.FirstName + ' ' + c.LastName as [Full Name]
      --	,[NameStyle]
      --	,[BirthDate]
      --	,[MaritalStatus]
      --	,[Suffix]
      ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as [Gender]
      --	,[EmailAddress]
      --	,[YearlyIncome]
      --	,[TotalChildren]
      --	,[NumberChildrenAtHome]
      --	,[EnglishEducation]
      --	,[SpanishEducation]
      --	,[FrenchEducation]
      --	,[EnglishOccupation]
      --	,[SpanishOccupation]
      --	,[FrenchOccupation]
      --	,[HouseOwnerFlag]
      --	,[NumberCarsOwned]
      --	,[AddressLine1]
      --	,[AddressLine2]
      --	,[Phone]
      ,c.DateFirstPurchase as [Date First Purchase]
      --	,[CommuteDistance]
	  ,g.City as [City]
	  ,g.EnglishCountryRegionName as [Country]
  FROM 
	[AdventureWorksDW2019].[dbo].[DimCustomer] as c
	LEFT JOIN dbo.DimGeography as g on g.GeographyKey = c.GeographyKey
ORDER BY 
	c.CustomerKey

