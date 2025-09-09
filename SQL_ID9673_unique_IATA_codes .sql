/*

Easy
ID 9673 : Find unique IATA codes

 - What are the unique airport codes for all origin airports in the dataset? (e.g., LAX, JFK, SFO)

    Table
    us_flights
    
    actual_elapsed_time: float
    arr_delay:           bigint
    cancelled:           bigint
    carier_delay:        float
    dest:                varchar
    distance:            bigint
    flight_date:         date
    flight_num:          bigint
    late_aircraft_delay: float
    nas_delay:           float
    origin:              varchar
    security_delay:      float
    unique_carrier:      varchar
    weather_delay:       float
    

*/



select DISTINCT origin 
from us_flights;