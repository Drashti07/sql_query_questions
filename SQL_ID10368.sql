/*

Population Density


Last Updated: September 2025

Medium
ID 10368

You are working on a data analysis project at Deloitte where you need to analyze a dataset containing information
about various cities. Your task is to calculate the population density of these cities, rounded to the nearest integer, and identify the cities with the minimum and maximum densities.
The population density should be calculated as (Population / Area).


The output should contain 'city', 'country', 'density'.

Table
cities_population
*/


With City_density as 
(
    select city ,country ,population , area , 
        CASE WHEN area > 0 then CAST(population AS DECIMAL(10,2)) / area end as density  
    from cities_population
),
max_densinsity as 
(
    select  city , country , density 
    from City_density
    WHERE density = (SELECT MAX(density) FROM City_density)
),
min_densinsity as 
(
    select  city , country , density 
    from City_density
    WHERE density = (SELECT MIN(density) FROM City_density)
)
select  city , country , density 
from  max_densinsity
union
select  city , country , density 
from  min_densinsity
