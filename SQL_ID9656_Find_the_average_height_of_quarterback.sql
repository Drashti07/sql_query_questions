/*

Find the average height of a quarterback

Easy
ID 9656 Find the average height of a quarterback


What is the average height of quarterbacks?

Table
nfl_combine


arms: float
bench: bigint
broad: bigint
college: varchar
firstname: varchar
fortyyd: float
hands: float
heightfeet: bigint
heightinches: float
heightinchestotal: float
lastname: varchar
name: varchar
pick: varchar
pickround: bigint
picktotal: bigint
position: varchar
round: bigint
tenyd: float
threecone: float
twentyss: float
twentyyd: float
vertical: float
weight: bigint
year: bigint

*/
SELECT 
   avg(heightinchestotal) AS avg_height_inches
FROM nfl_combine
WHERE 
    position = 'QB'