IF OBJECT_ID('dbo.superstore_clean', 'U') IS NOT NULL
    DROP TABLE dbo.superstore_clean;
GO

CREATE TABLE dbo.superstore_clean
WITH
(
    DISTRIBUTION = ROUND_ROBIN,
    HEAP
)
AS
SELECT
    [Order ID],
    [Order Date],
    Sales,
    Profit,
    Quantity,
    Category,
    Region
FROM dbo.superstore_raw;
SELECT TOP 10 * FROM dbo.superstore_clean;
