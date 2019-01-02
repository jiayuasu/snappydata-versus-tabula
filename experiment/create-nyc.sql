elapsedtime on;
--./bin/snappy run -file=./experiment/example.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
--connect client 'en4119507l.cidse.dhcp.asu.edu:1527';
--------------------------------------
--------------------------------------
----- CREATE TEMPORARY STAGING TABLE TO LOAD PARQUET FORMATTED DATA -----
CREATE EXTERNAL TABLE STAGING_NYCTAXI
  USING csv OPTIONS(path ':input');
-- Use below line to work with larger data set
--  USING parquet OPTIONS(path '../../quickstart/data/airlineParquetData_2007-15');

----- CREATE COLUMN TABLE -----  
CREATE TABLE NYCTAXI USING column AS (
  SELECT 
  _c0 AS vendor_name, 
  _c1 AS pickup_weekday, 
  _c2 AS dropoff_weekday, 
  _c3 AS Passenger_Count, 
  _c4 AS Trip_Distance, 
  _c5 AS pickup, 
  _c6 AS Rate_Code, 
  _c7 AS store_and_forward, 
  _c8 AS dropoff, 
  _c9 AS Payment_Type, 
  _c10 AS Fare_Amt, 
  _c11 AS surcharge, 
  _c12 AS mta_tax, 
  _c13 AS Tip_Amt, 
  _c14 AS Tolls_Amt, 
  _c15 AS Total_Amt
  FROM STAGING_NYCTAXI);