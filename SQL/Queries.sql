-- DDL Commands for creating tables
CREATE DATABASE Cyclistic
USE Cyclistic;

-- 2020 Table
CREATE TABLE `2020data` (
	ride_id VARCHAR (255) PRIMARY KEY,
	rideable_type MEDIUMTEXT,
	started_at DATETIME,
	ended_at DATETIME,
	start_station_name MEDIUMTEXT,
	start_station_id MEDIUMTEXT,
	end_station_name MEDIUMTEXT,
	end_station_id MEDIUMTEXT,
	start_lat DOUBLE,
	start_lng DOUBLE,
	end_lat DOUBLE,
	end_lng DOUBLE,
	member_casual MEDIUMTEXT
);

-- 2019 Table
CREATE TABLE `2019data` (
  trip_id VARCHAR(20) PRIMARY KEY,
  start_time DATETIME,
  end_time DATETIME,
  bikeid VARCHAR(20),
  tripduration INT,
  from_station_id INT,
  from_station_name VARCHAR(255),
  to_station_id INT,
  to_station_name VARCHAR(255),
  usertype VARCHAR(50),
  gender VARCHAR(20),
  birthyear INT
);

-- Inserting data will not embedded here.
-- But can be found in data folder as CSV files.

-- DML Queries

-- 1
SELECT COUNT(*) AS total_rows
FROM combined_table;

-- 2
SELECT start_station_id, start_station_name, COUNT(*) AS total_rides
FROM combined_table

-- 3
/* Find All data from combined table where the start station name is Canal St and Adams St */
SELECT DISTINCT * FROM combined_table
WHERE start_station_name = 'Canal St & Adams St';
