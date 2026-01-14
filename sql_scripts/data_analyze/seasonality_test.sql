SELECT 
    month_name,
    usertype,
    COUNT(trip_id) AS number_of_rides
FROM trips_2019
GROUP BY month_name, usertype
ORDER BY 
    FIELD(month_name, 'January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'),
    usertype;