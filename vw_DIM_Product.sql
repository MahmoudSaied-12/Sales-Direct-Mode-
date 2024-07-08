
CREATE VIEW [vw_DIM|Product]
AS
SELECT P.[ProductID]
      ,P.[Name] [ProductName]
      ,P.[Color]
      ,P.[ListPrice]
      ,P.[Size]
      ,P.[ProductLine]
      ,P.[Class]
      ,P.[Style]
      ,P.[ProductSubcategoryID]
      ,PSC.[Name] [ProductSubCategory] 
	  ,PC.[ProductCategoryID]
      ,PC.[Name] [ProductCategory]
 FROM [Production].[Product] P
 LEFT JOIN [Production].[ProductSubcategory] PSC
 ON P.[ProductSubcategoryID]  = PSC.[ProductSubcategoryID]
 LEFT JOIN [Production].[ProductCategory] PC
 ON PSC.ProductCategoryID = PC.ProductCategoryID