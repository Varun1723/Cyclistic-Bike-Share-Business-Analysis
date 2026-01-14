SELECT day_of_week, usertype, AVG(tripduration)/60 as avg_ride_minutes,
count(trip_id) as number_of_rides
from trips_2019
GROUP BY day_of_week, usertype
ORDER BY FIELD(day_of_week, 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'), usertype;