This README documents the SQL queries for an Airbnb-style database system with Ethiopian context, focusing on different join operations to retrieve booking, property, and user information.

Database Schema
The database contains the following main tables:

User: Stores guest and host information

Property: Contains property listings with Ethiopian locations

Booking: Records all reservations made

Payment: Tracks payment transactions in ETB

Review: Stores guest feedback on properties


Ethiopian names (Abebe, Alemitu, etc.)

Ethiopian cities (Addis Ababa, Hawassa, Bahir Dar)

Prices in ETB (Ethiopian Birr)

Payment Methods:

Includes Telebirr mobile payment

Local phone numbers (+251)

Property Types:

Traditional Ethiopian guesthouses

Eco lodges in national parks

Heritage homes near historical sites

Example Outputs
Bookings with Guest Details
booking_id | check_in_date | check_out_date | total_price | user_id | first_name | last_name
-----------+---------------+----------------+-------------+---------+------------+----------
1          | 2023-01-10    | 2023-01-15     | 12500 ETB   | 1       | Abebe      | Kebede
2          | 2023-02-14    | 2023-02-20     | 22800 ETB   | 5       | Tewodros   | Hailu
Properties with Reviews
property_id | title                     | city        | price_per_night | rating | comment
------------+---------------------------+-------------+-----------------+--------+-------------------------
1           | Cozy Addis Ababa Apartment| Addis Ababa | 2500 ETB        | 5      | Perfect location in Bole
3           | Hawassa Lakefront Villa   | Hawassa     | 3800 ETB        | 4      | Beautiful lake views
Usage Notes
Performance: Ensure proper indexing on join fields (user_id, property_id)

Filtering: Add WHERE clauses for date ranges or specific locations

Pagination: Implement LIMIT and OFFSET for large result sets

Currency: All monetary values are in Ethiopian Birr (ETB)

