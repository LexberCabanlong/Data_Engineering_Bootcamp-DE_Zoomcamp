CREATE OR REPLACE TABLE `alien-rainfall-411316.ny_taxi.ny_taxi_green_2022_partitioned_clustered`
PARTITION BY
  DATE(lpep_pickup_datetime)
CLUSTER BY
  PULocationID AS 
SELECT * FROM `alien-rainfall-411316.ny_taxi.ny_taxi_green_2022`