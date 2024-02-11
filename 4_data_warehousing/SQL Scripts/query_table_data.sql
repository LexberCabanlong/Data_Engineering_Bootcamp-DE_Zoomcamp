SELECT COUNT(DISTINCT PULocationID) 
FROM `alien-rainfall-411316.ny_taxi.ny_taxi_green_2022_partitioned_clustered`
WHERE lpep_pickup_datetime >= TIMESTAMP('2022-06-01') 
  AND lpep_pickup_datetime < TIMESTAMP('2022-07-01');
  
  
  
SELECT COUNT(DISTINCT PULocationID) 
FROM `alien-rainfall-411316.ny_taxi.ny_taxi_green_2022`
WHERE lpep_pickup_datetime >= TIMESTAMP('2022-06-01') 
  AND lpep_pickup_datetime < TIMESTAMP('2022-07-01');

