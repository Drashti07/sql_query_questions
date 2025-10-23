/*

Matching Similar Hosts and Guests


Last Updated: October 2025

Medium
ID 10078


Find matching hosts and guests pairs in a way that they are both of the same gender and nationality.
Output the host id and the guest id of matched pair.

Tables
airbnb_hosts
airbnb_guests


*/


select DISTINCT h.host_id , g.guest_id
from airbnb_hosts h 
JOIN airbnb_guests g 
    ON h.nationality = g.nationality AND h.gender = g.gender;