
/*
-  find the percentage of records where a search result was clicked on in the top 3 positions

- ind the percentage of records that were not clicked on in the top 3 positions. 


Clicked Vs Non-Clicked Search Results


Last Updated: October 2025

Medium
ID 10288


The question asks you to calculate two percentages based on search result records. For the first percentage, find the percentage of records where a search result was clicked on in the top 3 positions. Records that were clicked will have clicked = 1. Use the search_results_position to find the position of the search result. For the second percentage: find the percentage of records that were not clicked on in the top 3 positions. Both percentages are calculated with respect to the total number of search result records and should be output in the same row as two columns.

Table
fb_search_events

*/


select  
    CAST (SUM(case when clicked = 1 and search_results_position <= 3 then 1 end) as float) *100 / count(*) as top_3_clicked
    ,  CAST(SUM(case when clicked = 0 and search_results_position <= 3 then 1 end) as float) *100 / count(*) as top_3_notclicked
from fb_search_events;

