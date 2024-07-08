

CREATE VIEW [vw_DIM|Status]
AS
WITH CTE
AS
(
SELECT 1 StatusId,  [dbo].[ufnGetSalesOrderStatusText](1) [Status]
UNION ALL
SELECT StatusId + 1, [dbo].[ufnGetSalesOrderStatusText](StatusId + 1) [Status]
FROM CTE
WHERE StatusId < 6
)
SELECT * 
FROM CTE