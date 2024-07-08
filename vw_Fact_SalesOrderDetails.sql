
alter VIEW [vw_Fact|SalesOrderDetails]
AS
SELECT 
      SOD.[SalesOrderDetailID]
	  ,SOD.[SalesOrderID]
	  ,SOH.SubTotal
      ,SOD.[OrderQty]
      ,SOD.[ProductID]     
      ,SOD.[UnitPrice]      
	  ,CAST(FORMAT(SOH.[OrderDate],'yyyyMMdd') AS INT) [OrderDate]
	  ,CAST(FORMAT(SOH.[DueDate],'yyyyMMdd') AS INT) [DueDate]
	  ,CAST(FORMAT(SOH.[ShipDate],'yyyyMMdd') AS INT) [ShipDate]
	  ,SOH.[Status]
      ,SOH.[OnlineOrderFlag]
	  ,SOH.[CustomerID]
      ,SOH.[SalesPersonID]
      ,SOH.[TerritoryID]
      ,SOH.[ShipMethodID]
	  ,SOD.[LineTotal]
	  ,(SOD.LineTotal / SOH.SubTotal) * SOH.TaxAmt [TaxAmt]
	  ,(SOD.LineTotal / SOH.SubTotal) * SOH.[Freight] [Freight]
	  ,(SOD.LineTotal / SOH.SubTotal) * SOH.[TotalDue] [TotalDue]
  FROM [Sales].[SalesOrderDetail] SOD
  LEFT JOIN [Sales].[SalesOrderHeader] SOH
  ON SOD.SalesOrderID = SOH.SalesOrderID