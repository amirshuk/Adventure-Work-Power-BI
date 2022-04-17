/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as [Item Code] 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] as [Product Name] 
  --,[SpanishProductName]
  --,[FrenchProductName]
  , 
  s.[EnglishProductSubcategoryName] as [Product SubCategory], --join from subcategory table
  c.[EnglishProductCategoryName] as [Product Category], --join from category table
  p.[StandardCost] as [Product Cost] 
  --,[FinishedGoodsFlag]
  --,[Color]
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  , 
  p.[ListPrice] as [Product Price], 
  p.[Size] as [Product Size] 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  p.[ProductLine] as [Product Line] 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  , 
  p.[ModelName] as [Product Model Name] 
  --,[LargePhoto]
  --,[EnglishDescription]
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  , 
  ISNULL(p.Status, 'Outdated') as [Product Status] --null checking value
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  left join [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as s on p.ProductSubcategoryKey = s.ProductSubcategoryKey 
  left join [AdventureWorksDW2019].[dbo].[DimProductCategory] as c on s.ProductCategoryKey = c.ProductCategoryKey 
order by 
  ProductKey asc
