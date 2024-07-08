

CREATE VIEW [vw_DIM|SalesPerson]
AS
SELECT  [SalesPersonID] ,
		Title,
		FirstName,
		MiddleName,
		LastName,
		JobTitle,
		Phone,
		EmailAddress
FROM Sales.vSalesPerson 