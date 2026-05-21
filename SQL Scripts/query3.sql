SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://mystorage1002.dfs.core.windows.net/raw-data/Sample - Superstore.csv',
        FORMAT = 'CSV',
        PARSER_VERSION = '2.0'
    ) AS [result]
