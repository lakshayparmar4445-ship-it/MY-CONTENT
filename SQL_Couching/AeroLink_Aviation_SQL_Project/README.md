# AeroLink Airways SQL Project

An introductory airline operations analysis project built with the MySQL/MariaDB topics in the supplied `SQL-inClass.zip` lessons.

## Scenario

A fictional airline needs a small relational database to review its airport network, aircraft, scheduled flights, and passenger bookings. The sample data exists only for classroom practice. It does not describe a real airline or real passengers.

## Run the project

1. Open `01_schema_and_sample_data.sql` in MySQL Workbench or a compatible MySQL/MariaDB client and run it once. It creates the `aerolink_aviation` database, tables, indexes, and sample rows.
2. Run `02_analysis_queries.sql` to review the schedule, booking totals, route revenue, booking status, daily revenue, above-average flights, revenue ranking, and reusable view.

The setup script intentionally does not drop an existing database. If the schema already exists, use a fresh database name or remove the practice schema through your database client before running setup again.

## Tables and relationships

- `airports` stores airport codes, names, and cities.
- `aircraft` stores aircraft models and seat capacity.
- `passengers` stores fictional passenger details.
- `flights` connects one origin airport, one destination airport, and one aircraft to a dated flight.
- `bookings` connects a passenger to a flight and records the seat, booking status, and amount paid.

`flights` references `airports` twice, for origin and destination. `bookings` references both `flights` and `passengers`.

## Class topics used

The scripts use database and table creation, primary and foreign keys, `NOT NULL`, `UNIQUE` and `CHECK` constraints, inserts, select filters, joins, sorting, aggregate functions, `GROUP BY`, a subquery, CTEs, a view, indexes, and the `RANK()` window function. The examples follow the SQL style in the supplied class files.

## Sample-data assumptions

- All records and names are invented for this project.
- `amount_paid` and `base_fare` are fictional INR amounts. `amount_paid` is the collected amount stored on each booking. Cancelled bookings use `0.00` in this example.
- Revenue queries sum `amount_paid`; they do not calculate taxes, refunds, operating costs, or profit.
- The small booking sample demonstrates query patterns. It is not a representative load factor or airline performance measure.
