Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

The inner subquery calculates the average rating for each property

It filters to only include properties with average rating > 4.0

The outer query joins this result with the Property table to get full property details

Results are ordered by highest average rating first

Expected Output:

property_id | title                     | city        | price_per_night | average_rating
------------+---------------------------+-------------+-----------------+---------------
1           | Cozy Addis Ababa Apartment| Addis Ababa | 2500 ETB        | 4.8
3           | Hawassa Lakefront Villa   | Hawassa     | 3800 ETB        | 4.5
9           | Lalibela Rock-Hewn Guesthouse | Lalibela | 4000 ETB      | 4.2

Write a correlated subquery to find users who have made more than 3 bookings.

Explanation:

The correlated subquery counts bookings for each user

Outer query filters to only show users with > 3 bookings

The alternative version uses JOIN and GROUP BY which is often more efficient

Results show frequent bookers ordered by number of bookings

Expected Output:

user_id | first_name | last_name | email               | booking_count
--------+------------+-----------+---------------------+--------------
1       | Abebe      | Kebede    | abebe.k@example.com | 5
5       | Tewodros   | Hailu     | tewodros.h@example.com | 4
8       | Yeshi      | Dereje    | yeshi.d@example.com | 4
These queries help identify:

High-quality properties based on guest ratings

Frequent bookers who might qualify for loyalty programs

