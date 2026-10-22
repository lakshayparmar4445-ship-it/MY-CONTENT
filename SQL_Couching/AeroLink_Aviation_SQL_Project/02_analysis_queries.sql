-- AeroLink Airways | Analysis Queries
-- Run after 01_schema_and_sample_data.sql in MySQL or MariaDB.

USE aerolink_aviation;

-- 1. Flight schedule with origin, destination, and aircraft details.
SELECT
    f.flight_number,
    origin.airport_code AS origin,
    origin.city AS origin_city,
    destination.airport_code AS destination,
    destination.city AS destination_city,
    f.departure_datetime,
    a.aircraft_model,
    f.flight_status
FROM flights AS f
INNER JOIN airports AS origin
    ON f.departure_airport_id = origin.airport_id
INNER JOIN airports AS destination
    ON f.arrival_airport_id = destination.airport_id
INNER JOIN aircraft AS a
    ON f.aircraft_id = a.aircraft_id
WHERE f.departure_datetime BETWEEN '2026-09-10 00:00:00' AND '2026-09-13 23:59:59'
ORDER BY f.departure_datetime;

-- 2. Booking records and collected amount by flight.
SELECT
    f.flight_number,
    COUNT(b.booking_id) AS booking_records,
    SUM(b.amount_paid) AS total_revenue
FROM flights AS f
INNER JOIN bookings AS b
    ON f.flight_id = b.flight_id
GROUP BY f.flight_id, f.flight_number
ORDER BY total_revenue DESC;

-- 3. Revenue by route.
SELECT
    origin.airport_code AS origin,
    destination.airport_code AS destination,
    COUNT(b.booking_id) AS booking_records,
    SUM(b.amount_paid) AS route_revenue
FROM flights AS f
INNER JOIN airports AS origin
    ON f.departure_airport_id = origin.airport_id
INNER JOIN airports AS destination
    ON f.arrival_airport_id = destination.airport_id
INNER JOIN bookings AS b
    ON f.flight_id = b.flight_id
GROUP BY origin.airport_code, destination.airport_code
ORDER BY route_revenue DESC;

-- 4. Booking status distribution.
SELECT booking_status, COUNT(*) AS booking_count
FROM bookings
GROUP BY booking_status
ORDER BY booking_count DESC;

-- 5. Daily collected amount for non-cancelled bookings.
SELECT booking_date, COUNT(*) AS active_bookings, SUM(amount_paid) AS daily_revenue
FROM bookings
WHERE booking_status <> 'Cancelled'
GROUP BY booking_date
ORDER BY booking_date;

-- 6. Flights with more booking records than the average flight.
WITH flight_bookings AS (
    SELECT flight_id, COUNT(*) AS booking_count
    FROM bookings
    GROUP BY flight_id
), average_bookings AS (
    SELECT AVG(booking_count) AS average_booking_count
    FROM flight_bookings
)
SELECT f.flight_number, fb.booking_count
FROM flight_bookings AS fb
INNER JOIN flights AS f
    ON fb.flight_id = f.flight_id
WHERE fb.booking_count > (SELECT average_booking_count FROM average_bookings)
ORDER BY fb.booking_count DESC, f.flight_number;

-- 7. Top revenue flights, with ties included through RANK().
WITH flight_revenue AS (
    SELECT f.flight_id, f.flight_number, SUM(b.amount_paid) AS total_revenue
    FROM flights AS f
    INNER JOIN bookings AS b
        ON f.flight_id = b.flight_id
    GROUP BY f.flight_id, f.flight_number
), ranked_flights AS (
    SELECT
        flight_number,
        total_revenue,
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
    FROM flight_revenue
)
SELECT flight_number, total_revenue, revenue_rank
FROM ranked_flights
WHERE revenue_rank <= 3
ORDER BY revenue_rank, flight_number;

-- 8. Reusable view for flight-level revenue reporting.
CREATE VIEW flight_revenue_summary AS
SELECT
    f.flight_number,
    origin.airport_code AS origin,
    destination.airport_code AS destination,
    COUNT(b.booking_id) AS booking_records,
    SUM(b.amount_paid) AS total_revenue
FROM flights AS f
INNER JOIN airports AS origin
    ON f.departure_airport_id = origin.airport_id
INNER JOIN airports AS destination
    ON f.arrival_airport_id = destination.airport_id
INNER JOIN bookings AS b
    ON f.flight_id = b.flight_id
GROUP BY f.flight_id, f.flight_number, origin.airport_code, destination.airport_code;

SELECT * FROM flight_revenue_summary ORDER BY total_revenue DESC;
