-- AeroLink Airways | Aviation Operations SQL Project
-- Classroom-style MySQL/MariaDB SQL using the topics in SQL-inClass.zip.
-- All names, flights, passengers, bookings, and amounts are fictional.

CREATE DATABASE aerolink_aviation;
USE aerolink_aviation;

CREATE TABLE airports (
    airport_id INT PRIMARY KEY,
    airport_code VARCHAR(3) UNIQUE NOT NULL,
    airport_name VARCHAR(80) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE aircraft (
    aircraft_id INT PRIMARY KEY,
    aircraft_model VARCHAR(50) NOT NULL,
    seat_capacity INT NOT NULL CHECK (seat_capacity > 0)
);

CREATE TABLE passengers (
    passenger_id INT PRIMARY KEY,
    passenger_name VARCHAR(80) NOT NULL,
    email VARCHAR(100) UNIQUE,
    home_city VARCHAR(50)
);

CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10) UNIQUE NOT NULL,
    departure_airport_id INT NOT NULL,
    arrival_airport_id INT NOT NULL,
    aircraft_id INT NOT NULL,
    departure_datetime DATETIME NOT NULL,
    arrival_datetime DATETIME NOT NULL,
    flight_status VARCHAR(20) NOT NULL
        CHECK (flight_status IN ('Completed', 'Scheduled', 'Delayed', 'Cancelled')),
    base_fare DECIMAL(10,2) NOT NULL CHECK (base_fare >= 0),
    CHECK (departure_airport_id <> arrival_airport_id),
    FOREIGN KEY (departure_airport_id) REFERENCES airports(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES airports(airport_id),
    FOREIGN KEY (aircraft_id) REFERENCES aircraft(aircraft_id)
);

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY,
    flight_id INT NOT NULL,
    passenger_id INT NOT NULL,
    booking_date DATE NOT NULL,
    seat_number VARCHAR(5) NOT NULL,
    booking_status VARCHAR(20) NOT NULL
        CHECK (booking_status IN ('Confirmed', 'Checked-in', 'Cancelled')),
    amount_paid DECIMAL(10,2) NOT NULL CHECK (amount_paid >= 0),
    UNIQUE (flight_id, seat_number),
    FOREIGN KEY (flight_id) REFERENCES flights(flight_id),
    FOREIGN KEY (passenger_id) REFERENCES passengers(passenger_id)
);

-- Indexes from the class lessons support common date and status filters.
CREATE INDEX idx_flights_departure_datetime ON flights(departure_datetime);
CREATE INDEX idx_bookings_status ON bookings(booking_status);

INSERT INTO airports (airport_id, airport_code, airport_name, city) VALUES
(1, 'DEL', 'Indira Gandhi International Airport', 'Delhi'),
(2, 'BOM', 'Chhatrapati Shivaji Maharaj International Airport', 'Mumbai'),
(3, 'BLR', 'Kempegowda International Airport', 'Bengaluru'),
(4, 'MAA', 'Chennai International Airport', 'Chennai'),
(5, 'HYD', 'Rajiv Gandhi International Airport', 'Hyderabad');

INSERT INTO aircraft (aircraft_id, aircraft_model, seat_capacity) VALUES
(101, 'Airbus A320', 180),
(102, 'Boeing 737-800', 160),
(103, 'Airbus A321', 200);

INSERT INTO passengers (passenger_id, passenger_name, email, home_city) VALUES
(1, 'Aarav Mehta', 'aarav@example.com', 'Delhi'),
(2, 'Diya Shah', 'diya@example.com', 'Mumbai'),
(3, 'Kabir Rao', 'kabir@example.com', 'Bengaluru'),
(4, 'Anaya Iyer', 'anaya@example.com', 'Chennai'),
(5, 'Ishaan Gupta', 'ishaan@example.com', 'Delhi'),
(6, 'Meera Nair', 'meera@example.com', 'Kochi'),
(7, 'Arjun Das', 'arjun@example.com', 'Kolkata'),
(8, 'Sana Khan', 'sana@example.com', 'Hyderabad'),
(9, 'Rohan Kapoor', 'rohan@example.com', 'Mumbai'),
(10, 'Tara Menon', 'tara@example.com', 'Chennai'),
(11, 'Vivaan Joshi', 'vivaan@example.com', 'Pune'),
(12, 'Nisha Verma', 'nisha@example.com', 'Bhopal');

INSERT INTO flights
    (flight_id, flight_number, departure_airport_id, arrival_airport_id, aircraft_id,
     departure_datetime, arrival_datetime, flight_status, base_fare)
VALUES
(1001, 'AL701', 3, 2, 101, '2026-09-10 07:30:00', '2026-09-10 09:20:00', 'Completed', 6500.00),
(1002, 'AL702', 2, 1, 102, '2026-09-10 10:30:00', '2026-09-10 12:45:00', 'Completed', 7800.00),
(1003, 'AL703', 1, 3, 103, '2026-09-11 14:00:00', '2026-09-11 16:50:00', 'Completed', 7200.00),
(1004, 'AL704', 3, 4, 101, '2026-09-11 19:00:00', '2026-09-11 20:10:00', 'Completed', 4800.00),
(1005, 'AL705', 4, 5, 102, '2026-09-12 08:15:00', '2026-09-12 09:45:00', 'Scheduled', 5200.00),
(1006, 'AL706', 5, 2, 103, '2026-09-12 12:30:00', '2026-09-12 14:00:00', 'Completed', 6100.00),
(1007, 'AL707', 1, 4, 102, '2026-09-13 17:20:00', '2026-09-13 20:00:00', 'Delayed', 6900.00),
(1008, 'AL708', 2, 3, 101, '2026-09-13 06:00:00', '2026-09-13 07:50:00', 'Cancelled', 6500.00);

INSERT INTO bookings
    (booking_id, flight_id, passenger_id, booking_date, seat_number, booking_status, amount_paid)
VALUES
(1, 1001, 1, '2026-09-01', '1A', 'Confirmed', 6500.00),
(2, 1001, 2, '2026-09-02', '1B', 'Checked-in', 6500.00),
(3, 1001, 3, '2026-09-02', '2A', 'Cancelled', 0.00),
(4, 1002, 4, '2026-09-02', '1A', 'Confirmed', 7800.00),
(5, 1002, 5, '2026-09-03', '1B', 'Confirmed', 7800.00),
(6, 1002, 1, '2026-09-04', '2A', 'Confirmed', 7800.00),
(7, 1003, 6, '2026-09-03', '1A', 'Checked-in', 7200.00),
(8, 1003, 7, '2026-09-04', '1B', 'Confirmed', 7200.00),
(9, 1004, 8, '2026-09-04', '1A', 'Confirmed', 4800.00),
(10, 1004, 9, '2026-09-05', '1B', 'Confirmed', 4800.00),
(11, 1004, 10, '2026-09-05', '2A', 'Cancelled', 0.00),
(12, 1005, 11, '2026-09-06', '1A', 'Confirmed', 5200.00),
(13, 1005, 12, '2026-09-06', '1B', 'Confirmed', 5200.00),
(14, 1006, 2, '2026-09-06', '1A', 'Confirmed', 6100.00),
(15, 1006, 3, '2026-09-07', '1B', 'Checked-in', 6100.00),
(16, 1006, 4, '2026-09-07', '2A', 'Confirmed', 6100.00),
(17, 1007, 5, '2026-09-07', '1A', 'Confirmed', 6900.00),
(18, 1007, 6, '2026-09-08', '1B', 'Cancelled', 0.00),
(19, 1008, 7, '2026-09-08', '1A', 'Confirmed', 6500.00),
(20, 1008, 8, '2026-09-09', '1B', 'Confirmed', 6500.00);

-- Initial row counts for a quick setup check.
SELECT COUNT(*) AS airport_count FROM airports;
SELECT COUNT(*) AS flight_count FROM flights;
SELECT COUNT(*) AS booking_count FROM bookings;
