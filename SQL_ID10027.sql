/*
filter on US to find us based wineries and price >=20

Find the number of US-based wineries that have expensive wines (price >= 200)

Easy
ID 10027

Find the number of US-based wineries that have expensive wines.
A wine is considered to be expensive if its price is $200 or more.

Table
winemag_p1


*/

select COUNT(DISTINCT  winery ) AS n_wineries
from winemag_p1
where country = 'US' AND price >=200;