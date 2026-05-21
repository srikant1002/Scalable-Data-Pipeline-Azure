SELECT Region,
       SUM(TRY_CAST(Sales AS DECIMAL(10,2))) AS TotalSales
FROM dbo.superstore_clean
GROUP BY Region;