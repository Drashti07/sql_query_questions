/*

Drafted Into NFL

Easy
ID 9648 : Drafted Into NFL


How many athletes were drafted into NFL from 2013 NFL Combine? The pickround column specifies if the athlete was drafted into the NFL. A value of 0 means that the athlete was not drafted into the NFL.

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

select count(*) as n_athletes from nfl_combine
where year = 2013 AND pickround != 0;