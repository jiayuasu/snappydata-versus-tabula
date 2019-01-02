elapsedtime on;
--./bin/snappy run -file=./experiment/example.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
--connect client 'en4119507l.cidse.dhcp.asu.edu:1527';
--------------------------------------
--------------------------------------
select AVG(Fare_Amt) avgfare, relative_error(avgfare)
from NYCTAXI
where pickup_weekday = 1 and Passenger_Count = 1
group by pickup_weekday, Passenger_Count
with error 0.99 confidence 0.999999999999999 BEHAVIOR 'do_nothing';