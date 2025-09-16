/*
 player that participate in multiple team 
 if a player participate in multiple team then that team are store  by / in tema column 
 
 
 Find players who participated in the Olympics representing more than one team

Easy
ID 10143


Find players who participated in the Olympics representing more than one team. To detect multiple teams please inspect team column and how are multiple teams structured.
Output the player name, team, games, sport, and the medal.

Table
olympics_athletes_events
*/

SELECT name, team ,games,sport,medal
from olympics_athletes_events
where team like '%/%'

