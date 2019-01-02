elapsedtime on;
--./bin/snappy run -file=./experiment/example.sql --client-bind-address=en4119507l.cidse.dhcp.asu.edu
--connect client 'en4119507l.cidse.dhcp.asu.edu:1527';
--------------------------------------
--------------------------------------
SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '4' AND Payment_Type = 'Cre' AND Rate_Code = '3'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '2' AND Passenger_Count = '3' AND Payment_Type = 'CRE' AND Rate_Code = '4'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '3' AND Passenger_Count = '3' AND Payment_Type = 'NA' AND Rate_Code = '1'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '0' AND Passenger_Count = '4' AND Payment_Type = 'CSH' AND Rate_Code = '35'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '4' AND Passenger_Count = '3' AND Payment_Type = 'NOC' AND Rate_Code = '2'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '1' AND Payment_Type = 'CSH' AND Rate_Code = '210'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '2' AND Payment_Type = 'CRD' AND Rate_Code = '4'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '6' AND Passenger_Count = '6' AND Payment_Type = 'Cre'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '3' AND Passenger_Count = '4' AND Payment_Type = 'CSH' AND Rate_Code = '35'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '1' AND Payment_Type = 'CRE' AND Rate_Code = '2'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '0' AND Passenger_Count = '2' AND Payment_Type = 'CAS' AND Rate_Code = '6'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '5' AND Payment_Type = 'Dis' AND Rate_Code = '2'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '3' AND Passenger_Count = '1' AND Payment_Type = 'Cre' AND Rate_Code = '5'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Passenger_Count = '1' AND Payment_Type = 'UNK' AND Rate_Code = '3'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '5' AND Passenger_Count = '6' AND Payment_Type = 'Cre' AND Rate_Code = '1'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Payment_Type = 'NOC' AND Rate_Code = '0'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE Passenger_Count = '33' AND Payment_Type = 'CSH'
GROUP BY Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '129' AND Payment_Type = 'CSH'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '208' AND Rate_Code = 'na'
GROUP BY pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '5' AND Passenger_Count = '1' AND Rate_Code = '3'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '5' AND Passenger_Count = '7' AND Payment_Type = 'CSH' AND Rate_Code = '1'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '2' AND Payment_Type = 'CSH' AND Rate_Code = '33'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Passenger_Count = '3' AND Payment_Type = 'CAS' AND Rate_Code = '3'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '4' AND Passenger_Count = '1' AND Payment_Type = 'UNK' AND Rate_Code = '2'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Payment_Type = 'NOC' AND Rate_Code = '2'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '3' AND Passenger_Count = '4' AND Payment_Type = 'CRD' AND Rate_Code = '3'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '3' AND Passenger_Count = '4' AND Payment_Type = 'UNK' AND Rate_Code = '5'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE Passenger_Count = '4' AND Rate_Code = '4'
GROUP BY Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '5' AND Passenger_Count = '2' AND Payment_Type = 'CSH' AND Rate_Code = '4'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '4' AND Passenger_Count = '5' AND Payment_Type = 'CAS' AND Rate_Code = '16'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '4' AND Passenger_Count = '3' AND Payment_Type = 'CSH'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '1' AND Passenger_Count = '3' AND Payment_Type = 'DIS' AND Rate_Code = '4'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '3' AND Payment_Type = 'CSH' AND Rate_Code = '28'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '6' AND Passenger_Count = '2' AND Payment_Type = 'Cre'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '1' AND Payment_Type = 'UNK' AND Rate_Code = '4'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '2' AND Passenger_Count = '1' AND Rate_Code = '6'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '1' AND Rate_Code = 'na'
GROUP BY vendor_name,pickup_weekday,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '3' AND Passenger_Count = '3' AND Payment_Type = 'Cash'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '1' AND Passenger_Count = '1' AND Payment_Type = 'CAS' AND Rate_Code = '2'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '0' AND Passenger_Count = '2' AND Rate_Code = '1'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE Passenger_Count = '3' AND Payment_Type = 'Cas' AND Rate_Code = '4'
GROUP BY Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '2' AND Passenger_Count = '1' AND Payment_Type = 'CAS' AND Rate_Code = '128'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '0' AND Payment_Type = 'Cre' AND Rate_Code = '3'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Payment_Type = 'CRD' AND Rate_Code = '3'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '4' AND Payment_Type = 'NOC' AND Rate_Code = '6'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '1' AND Rate_Code = '210'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND Passenger_Count = '5' AND Rate_Code = '210'
GROUP BY vendor_name,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '2' AND Passenger_Count = '0' AND Payment_Type = 'CRD' AND Rate_Code = '2'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '1' AND Passenger_Count = '0' AND Payment_Type = 'CREDIT'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '5' AND Payment_Type = 'CRE' AND Rate_Code = '5'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '4' AND Payment_Type = 'No'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '4' AND Payment_Type = 'Cre' AND Rate_Code = '35'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '3' AND Passenger_Count = '3' AND Payment_Type = 'Cas' AND Rate_Code = '0'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '0' AND Passenger_Count = '3' AND Rate_Code = '16'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '2' AND Passenger_Count = '2' AND Rate_Code = '4'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Passenger_Count = '3' AND Rate_Code = '6'
GROUP BY pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '2' AND Passenger_Count = '3' AND Payment_Type = 'CSH'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '5' AND Rate_Code = '3'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '4' AND Passenger_Count = '1' AND Payment_Type = 'UNK' AND Rate_Code = '2'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND Passenger_Count = '1' AND Payment_Type = 'Cas' AND Rate_Code = '1'
GROUP BY vendor_name,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '0' AND Passenger_Count = '5' AND Payment_Type = 'UNK' AND Rate_Code = '1'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '3' AND Passenger_Count = '4' AND Payment_Type = 'CASH'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '4' AND Payment_Type = 'Cre' AND Rate_Code = '2'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '2' AND Passenger_Count = '3' AND Rate_Code = '0'
GROUP BY pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '2' AND Payment_Type = 'CRD' AND Rate_Code = '210'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '3' AND Passenger_Count = '3' AND Payment_Type = 'CSH' AND Rate_Code = '28'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '6' AND Payment_Type = 'CSH' AND Rate_Code = '42'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '0' AND Passenger_Count = '4' AND Payment_Type = 'CRE' AND Rate_Code = '5'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '0' AND Passenger_Count = '3' AND Payment_Type = 'Cre'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '0' AND Passenger_Count = '1' AND Rate_Code = '9'
GROUP BY pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE Passenger_Count = '1' AND Payment_Type = 'Cas' AND Rate_Code = '1'
GROUP BY Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '0' AND Payment_Type = 'CRD' AND Rate_Code = '24'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '1' AND Passenger_Count = '6' AND Payment_Type = 'Credit'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '3' AND Passenger_Count = '5' AND Payment_Type = 'CREDIT' AND Rate_Code = 'na'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '4' AND Passenger_Count = '3' AND Payment_Type = 'CRD' AND Rate_Code = '2'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '2' AND Passenger_Count = '6' AND Payment_Type = 'Credit' AND Rate_Code = 'na'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '2' AND Passenger_Count = '2' AND Payment_Type = 'Cas' AND Rate_Code = '0'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '4' AND Passenger_Count = '1' AND Payment_Type = 'CAS' AND Rate_Code = '0'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '1' AND Payment_Type = 'CSH' AND Rate_Code = '28'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '5' AND Payment_Type = 'Cas' AND Rate_Code = '1'
GROUP BY vendor_name,pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '6' AND Passenger_Count = '3' AND Rate_Code = '210'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '1' AND Passenger_Count = '1' AND Payment_Type = 'CRD' AND Rate_Code = '24'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '4' AND Payment_Type = 'CSH' AND Rate_Code = '4'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '1' AND Payment_Type = 'UNK' AND Rate_Code = '3'
GROUP BY pickup_weekday,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '3' AND Passenger_Count = '1' AND Payment_Type = 'Cas' AND Rate_Code = '28'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '5' AND Passenger_Count = '1' AND Payment_Type = 'NOC'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '0' AND Passenger_Count = '3' AND Payment_Type = 'CSH' AND Rate_Code = '210'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '3' AND Passenger_Count = '1' AND Payment_Type = 'CSH' AND Rate_Code = '24'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '2' AND Passenger_Count = '5'
GROUP BY vendor_name,pickup_weekday,Passenger_Count
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '0' AND Payment_Type = 'NOC'
GROUP BY pickup_weekday,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '0' AND Passenger_Count = '2' AND Payment_Type = 'CASH'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE pickup_weekday = '2' AND Passenger_Count = '2' AND Payment_Type = 'Cre' AND Rate_Code = '5'
GROUP BY pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'DDS' AND pickup_weekday = '2' AND Passenger_Count = '0' AND Payment_Type = 'CASH'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '2' AND Payment_Type = 'Dis' AND Rate_Code = '5'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND Passenger_Count = '3' AND Payment_Type = 'UNK' AND Rate_Code = '3'
GROUP BY vendor_name,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE Passenger_Count = '38'
GROUP BY Passenger_Count
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND Rate_Code = '132'
GROUP BY vendor_name,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND pickup_weekday = '0' AND Passenger_Count = '5' AND Payment_Type = 'NA' AND Rate_Code = '1'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'CMT' AND Payment_Type = 'Dis' AND Rate_Code = '3'
GROUP BY vendor_name,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';
        

SELECT AVG(Fare_Amt) avgvalue, relative_error(avgvalue) rel_err
FROM NYCTAXI
WHERE vendor_name = 'VTS' AND pickup_weekday = '0' AND Passenger_Count = '5' AND Payment_Type = 'UNK' AND Rate_Code = '3'
GROUP BY vendor_name,pickup_weekday,Passenger_Count,Payment_Type,Rate_Code
WITH ERROR 0.1 CONFIDENCE 0.999999999999999 BEHAVIOR 'run_on_full_table';