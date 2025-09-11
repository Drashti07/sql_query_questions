/*


Medium
ID 2098 : World Tours




A group of travelers embark on world tours starting with their home cities. Each traveler has an undecided itinerary that evolves over the course of the tour. Some travelers decide to abruptly end their journey mid-travel and live in their last destination.
Given the dataset of dates on which they travelled between different pairs of cities, can you find out how many travellers ended back in their home city? For simplicity, you can assume that each traveler made at most one trip between two cities in a day.

Table
travel_history


*/
with Trip as 
(
    select DISTINCT traveler  , First_VALUE(start_city) over(partition by traveler order by date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as source ,  LAST_VALUE(end_city) over(partition by traveler order by date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as destn 
    from travel_history
) 
SELECT 
    
    SUM(CASE WHEN source = destn THEN 1 ELSE 0 END) AS n_travelers_returned
FROM Trip;