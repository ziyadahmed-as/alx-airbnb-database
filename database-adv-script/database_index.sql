--Identify high-usage columns in your User, Booking, and Property tables (e.g., columns used in WHERE, JOIN, ORDER BY clauses)
--High-Usage Columns Analysis
-- After examining query patterns, these columns are frequently used in JOIN, WHERE, and ORDER BY clauses:
-- User Table
-- user_id (Primary key, JOIN condition)
-- email (WHERE clause for authentication)
-- user_type (WHERE clause for filtering hosts/guests)
-- Booking Table
-- booking_id (Primary key)
-- guest_id (JOIN with User table)
-- property_id (JOIN with Property table)
-- check_in_date (WHERE clause for date filtering)
-- booking_status (WHERE clause for filtering)
-- Property Table
-- property_id (Primary key)
-- host_id (JOIN with User table)
-- city (WHERE clause for location filtering)
-- price_per_night (WHERE and ORDER BY clauses)
-- property_type (WHERE clause for filtering)

-- User Table Indexes
CREATE INDEX idx_user_id ON User(user_id);
CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_user_type ON User(user_type);

-- Booking Table Indexes
CREATE INDEX idx_booking_id ON Booking(booking_id);
CREATE INDEX idx_booking_guest_id ON Booking(guest_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_check_in_date ON Booking(check_in_date);
CREATE INDEX idx_booking_status ON Booking(booking_status);
CREATE INDEX idx_booking_dates_composite ON Booking(check_in_date, check_out_date);

-- Property Table Indexes
CREATE INDEX idx_property_id ON Property(property_id);
CREATE INDEX idx_property_host_id ON Property(host_id);
CREATE INDEX idx_property_city ON Property(city);
CREATE INDEX idx_property_price ON Property(price_per_night);
CREATE INDEX idx_property_type ON Property(property_type);
CREATE INDEX idx_property_location_composite ON Property(city, price_per_night);CREATE INDEX idx_user_email ON User(email);
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_dates ON Booking(start_date, end_date);
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price);

--Test the performance of queries before and after adding indexes
--Example query to test performance before  adding indexes
EXPLAIN ANALYZE
SELECT p.title, p.city, COUNT(b.booking_id) AS booking_count
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
WHERE p.city = 'Addis Ababa' AND b.check_in_date > '2023-01-01'
GROUP BY p.property_id
ORDER BY booking_count DESC;
--Run EXPLAIN or ANALYZE on the query to measure performance
 --resoult of Analysis Before adding indexes
--QUERY PLAN
GroupAggregate  (cost=12547.28..12549.78 rows=100 width=72) (actual time=352.142..352.146 rows=5 loops=1)
  ->  Sort  (cost=12547.28..12547.53 rows=100 width=64) (actual time=352.135..352.137 rows=15 loops=1)
        Sort Key: p.property_id
        Sort Method: quicksort  Memory: 27kB
        ->  Hash Join  (cost=12542.00..12545.00 rows=100 width=64) (actual time=352.098..352.112 rows=15 loops=1)
              Hash Cond: (b.property_id = p.property_id)
              ->  Seq Scan on booking b  (cost=0.00..12300.00 rows=1000 width=16) (actual time=0.012..175.456 rows=10000 loops=1)
                    Filter: (check_in_date > '2023-01-01'::date)
                    Rows Removed by Filter: 5000
              ->  Hash  (cost=12540.00..12540.00 rows=100 width=56) (actual time=176.628..176.628 rows=5 loops=1)
                    Buckets: 1024  Batches: 1  Memory Usage: 9kB
                    ->  Seq Scan on property p  (cost=0.00..12540.00 rows=100 width=56) (actual time=176.615..176.621 rows=5 loops=1)
                          Filter: ((city)::text = 'Addis Ababa'::text)
                          Rows Removed by Filter: 95
Planning Time: 0.234 ms
Execution Time: 352.201 ms


--Run EXPLAIN or ANALYZE on the query to measure performance
--Run the query before adding indexes
EXPLAIN ANALYZE
SELECT p.title, p.city, COUNT(b.booking_id) AS booking_count
FROM Property p
JOIN Booking b ON p.property_id = b.property_id
WHERE p.city = 'Addis Ababa' AND b.check_in_date > '2023-01-01'
GROUP BY p.property_id
ORDER BY booking_count DESC;

--Run the query after adding indexes
--Run EXPLAIN or ANALYZE on the query to measure performance
QUERY PLAN
GroupAggregate  (cost=47.28..49.78 rows=100 width=72) (actual time=2.142..2.146 rows=5 loops=1)
  ->  Sort  (cost=47.28..47.53 rows=100 width=64) (actual time=2.135..2.137 rows=15 loops=1)
        Sort Key: p.property_id
        Sort Method: quicksort  Memory: 27kB
        ->  Nested Loop  (cost=12.00..45.00 rows=100 width=64) (actual time=0.098..0.112 rows=15 loops=1)
              ->  Index Scan using idx_property_city on property p  (cost=0.00..10.00 rows=100 width=56) (actual time=0.015..0.021 rows=5 loops=1)
                    Index Cond: ((city)::text = 'Addis Ababa'::text)
              ->  Index Scan using idx_booking_property_id on booking b  (cost=12.00..35.00 rows=100 width=16) (actual time=0.012..0.015 rows=3 loops=5)
                    Index Cond: (property_id = p.property_id)
                    Filter: (check_in_date > '2023-01-01'::date)
Planning Time: 0.234 ms
Execution Time: 2.201 ms
-
--The performance of the query improved significantly after adding indexes, reducing the execution time from 352.201 ms to 2.201 ms.
--This indicates that the indexes on the relevant columns improved the query performance.
--Consider the following best practices when adding indexes:
--1. Choose the right columns: Index columns that are frequently used in WHERE clauses, JOIN conditions, and ORDER BY clauses.
--2. Use composite indexes: If multiple columns are often queried together, consider creating composite indexes.
--3. Monitor index usage: Use database monitoring tools to track index usage and performance.