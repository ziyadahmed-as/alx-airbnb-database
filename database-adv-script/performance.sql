-- Initial query (inefficient)
SELECT 
    b.booking_id,
    b.check_in_date,
    b.check_out_date,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.title,
    p.city,
    p.price_per_night,
    py.payment_id,
    py.amount,
    py.payment_status
FROM 
    Booking b
JOIN 
    User u ON b.guest_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment py ON b.booking_id = py.booking_id
ORDER BY 
    b.check_in_date DESC;

-- Optimized query
SELECT 
    b.booking_id,
    b.check_in_date,
    b.check_out_date,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.title,
    p.city,
    p.price_per_night,
    py.payment_id,
    py.amount,
    py.payment_status
FROM 
    Booking b
JOIN 
    User u ON b.guest_id = u.user_id
JOIN 
    Property p ON b.property_id = p.property_id
LEFT JOIN 
    Payment py ON b.booking_id = py.booking_id
WHERE
    b.check_in_date > CURRENT_DATE - INTERVAL '1 year' -- Limit to recent bookings
ORDER BY 
    b.check_in_date DESC
LIMIT 1000; -- Add reasonable limit