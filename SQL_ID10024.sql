/* 
Wine varieties tasted by 'Roger Voss'


Easy
ID 10024

Find wine varieties tasted by 'Roger Voss' and with a value in the 'region_1' column of the dataset. Output unique variety names only.

Table
winemag_p2
*/
select DISTINCT variety
from winemag_p2
where taster_name = 'Roger Voss' AND region_1 is not null ;