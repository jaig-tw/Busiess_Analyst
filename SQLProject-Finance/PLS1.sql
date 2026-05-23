--financial statement

SELECT 
[Report],
[Class],
[Account],
[ Amount ]
FROM findata11
JOIN findata12 ON findata11.[Account_key] = findata12.[Account_key]
WHERE REPORT ='Profit and Loss'