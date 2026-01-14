SELECT count(1) FROM trips_2019;

SELECT * FROM trips_2019 LIMIT 10;

SELECT count(DISTINCT trip_id) from trips_2019; -- trip_id is unique

SELECT count(DISTINCT bikeid) from trips_2019; -- how many unique bikes were used = 6017

SELECT count(DISTINCT from_station_id) from trips_2019; -- how many unique from stations = 616

SELECT count(DISTINCT to_station_id) from trips_2019; -- how many unique to stations = 617

-- checking how much to_stations and from_stations overlap = 615
SELECT count(DISTINCT from_station_id) as overlapping_stations
from trips_2019
WHERE from_station_id = to_station_id; 
