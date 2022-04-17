/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  c.[CustomerKey] --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] as [First Name] --,[MiddleName]
  , 
  c.[LastName] as [Last Name], 
  CONCAT(c.[FirstName], ' ', c.[LastName]) as [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE c.[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as Gender 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.[DateFirstPurchase] --,[CommuteDistance]
  , 
  g.[City] as City 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  left join [AdventureWorksDW2019].[dbo].[DimGeography] as g on c.GeographyKey = g.GeographyKey --join geography table
order by 
  CustomerKey ASC -- order by customer key
