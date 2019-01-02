elapsedtime on;
--./bin/snappy run -file=./experiment/example.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
--connect client 'en4119507l.cidse.dhcp.asu.edu:1527';
--------------------------------------
--------------------------------------
--- CREATE SAMPLE TABLE ---
CREATE SAMPLE TABLE NYCTAXI_SAMPLE ON NYCTAXI
  OPTIONS(
    qcs 'vendor_name, pickup_weekday, Passenger_Count, Payment_Type, Rate_Code',
    fraction ':frac',
    strataReservoirSize '50')
  AS (
    SELECT
    vendor_name, 
    pickup_weekday, 
    dropoff_weekday, 
    Passenger_Count, 
    Trip_Distance, 
    pickup, 
    Rate_Code, 
    store_and_forward, 
    dropoff, 
    Payment_Type, 
    Fare_Amt, 
    surcharge, 
    mta_tax, 
    Tip_Amt, 
    Tolls_Amt, 
    Total_Amt
    FROM NYCTAXI);