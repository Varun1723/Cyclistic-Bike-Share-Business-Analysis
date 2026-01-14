-- 1. FIXING TIME DURATION FORMAT

-- Remove commas and convert to integer
UPDATE trips_2019 
SET tripduration = REPLACE(tripduration, ',', '');
-- Change column type to Integer
ALTER TABLE trips_2019 
MODIFY tripduration INT;

-- 2. ADDING NEW COLUMNS
alter TABLE trips_2019
ADD column day_of_week VARCHAR(15),
ADD column month_name VARCHAR(15);
-- populating these new columns
UPDATE trips_2019
set day_of_week = DAYNAME(start_time),
    month_name = MONTHNAME(start_time);

-- checking for bad data where duration is <0 or <60 seconds
SELECT count(1) FROM trips_2019
WHERE tripduration < 60 OR tripduration IS NULL; -- 0 bad records found