SELECT usertype, AVG(tripduration) /60 AS avg_ride_minutes,
count(trip_id) AS number_of_rides
from trips_2019
GROUP BY usertype;

-- Subscriber: 14.323 | 2937367
-- Customer: 57.014 | 880637