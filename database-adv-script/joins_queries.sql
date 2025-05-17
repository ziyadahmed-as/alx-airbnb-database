--Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.
SELECT 
    b.booking_id,
    b.property_id,
    b.check_in_date,
    b.check_out_date,
    b.total_price,
    b.booking_status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Booking b
INNER JOIN 
    User u ON b.guest_id = u.user_id
ORDER BY 
    b.booking_id;

--Write a query using a LEFT JOIN to retrieve all properties and their respective bookings, including properties that have no bookings.
SELECT 
    p.property_id,
    p.property_name,
    p.location,
    p.price_per_night,
    b.booking_id,
    b.check_in_date,
    b.check_out_date,
    b.total_price,
    b.booking_status    
FROM
    Property p
LEFT JOIN
    Booking b ON p.property_id = b.property_id
ORDER BY
    p.property_id;

-- Write a query using a FULL OUTER JOIN to retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.property_id,
    b.check_in_date,
    b.check_out_date,
    b.total_price,
    b.booking_status
FROM
    User u
LEFT JOIN
    Booking b ON u.user_id = b.guest_id
UNION
SELECT 
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    b.booking_id,
    b.property_id,
    b.check_in_date,
    b.check_out_date,
    b.total_price,
    b.booking_status
FROM
    User u
RIGHT JOIN
    Booking b ON u.user_id = b.guest_id 
ORDER BY
    u.user_id, b.booking_id;
--Write a query using a CROSS JOIN to retrieve all combinations of properties and users.
