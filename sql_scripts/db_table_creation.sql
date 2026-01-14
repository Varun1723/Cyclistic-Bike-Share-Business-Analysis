USE cyclistic_case_study;

CREATE TABLE IF NOT EXISTS trips_2019 (
    trip_id INT,
    start_time DATETIME,
    end_time DATETIME,
    bikeid INT,
    tripduration VARCHAR(255), 
    from_station_id INT,
    from_station_name VARCHAR(255),
    to_station_id INT,
    to_station_name VARCHAR(255),
    usertype VARCHAR(255),
    gender VARCHAR(255),
    birthyear INT
);