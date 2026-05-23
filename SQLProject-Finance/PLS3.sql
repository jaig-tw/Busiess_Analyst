--financial statement

SELECT 
findata11.[Account_key],
[Report],
[Class],
[Account],

SUM(TRY_CAST([ Amount ] AS DECIMAL(10,2))) AS Amount
FROM findata11
JOIN findata12 ON findata11.[Account_key] = findata12.[Account_key]
WHERE REPORT ='Profit and Loss' AND YEAR(DATE) = 2019
GROUP BY [Report], [Class], [Account], findata11.[Account_key]
ORDER BY findata11.[Account_key]