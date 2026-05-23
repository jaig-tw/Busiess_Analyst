--financial statement

SELECT [Report], [Class], [Account], [2018],[2019],[2020]
FROM (
SELECT 
findata11.[Account_key],
[Report],
[Class],
[Account],
YEAR([Date]) AS Year,

SUM(TRY_CAST([ Amount ] AS DECIMAL(10,2))) AS Amount
FROM findata11
JOIN findata12 ON findata11.[Account_key] = findata12.[Account_key]
WHERE REPORT ='Profit and Loss' 
GROUP BY [Report], [Class], [Account], findata11.[Account_key], YEAR ([Date])

) AS Table1

PIVOT (SUM( Amount ) FOR Year IN ([2018],[2019],[2020])) AS Table2