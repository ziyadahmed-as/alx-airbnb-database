--Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

SELECT 
    p.property_id,
    p.title,
    p.city,
    p.price_per_night,
    avg_rating.average_rating
FROM 
    Property p
JOIN (
    SELECT 
        property_id,
        AVG(guest_rating) AS average_rating
    FROM 
        Review
    GROUP BY 
        property_id
    HAVING 
        AVG(guest_rating) > 4.0
) avg_rating ON p.property_id = avg_rating.property_id
ORDER BY 
    avg_rating.average_rating DESC;

-- Write a correlated subquery to find users who have made more than 3 bookings.
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    COUNT(b.booking_id) AS booking_count
FROM 
    User u
JOIN 
    Booking b ON u.user_id = b.guest_id
GROUP BY 
    u.user_id, u.first_name, u.last_name, u.email
HAVING 
    COUNT(b.booking_id) > 3
ORDER BY 
    booking_count DESC;