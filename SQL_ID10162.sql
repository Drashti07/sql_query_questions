/*
GROUP BY : QUATER
COUNT( acquisitions )
acquired_quarter - YYYY-QQ
ORDER BY COUNT HIGHEST

Number Of Acquisitions

Find the number of acquisitions that occurred in each quarter of each year. Output the acquired quarter in YYYY-QQ format along with the number of acquisitions and order results by the quarters with the highest number of acquisitions first.

Table
crunchbase_acquisitions
*/

select acquired_quarter, COUNT(*) AS cnt_acq
from crunchbase_acquisitions
GROUP BY acquired_quarter
ORDER BY cnt_acq DESC;