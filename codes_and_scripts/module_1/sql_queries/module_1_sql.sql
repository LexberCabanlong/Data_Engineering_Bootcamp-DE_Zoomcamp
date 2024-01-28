SELECT DATE(lpep_pickup_datetime) AS pickup_date, SUM(trip_distance) AS max_trip_distance
FROM green_taxi_data
GROUP BY pickup_date
ORDER BY SUM(trip_distance) DESC;


SELECT * FROM green_taxi_data;

SELECT mt.borough, MAX(gd.tip_amount) FROM green_taxi_data AS gd
INNER JOIN mytable AS mt ON gd."PULocationID" = mt.locationid
GROUP BY mt.borough ORDER BY MAX(gd.tip_amount) DESC LIMIT 3;


SELECT mt2."zone", MAX(tip_amount) FROM green_taxi_data as gd
INNER JOIN mytable AS mt1 ON gd."PULocationID" = mt1.locationid
INNER JOIN mytable AS mt2 ON gd."DOLocationID" = mt2.locationid
WHERE mt1."zone" = 'Astoria'
GROUP BY mt2."zone" ORDER BY MAX(tip_amount) DESC;