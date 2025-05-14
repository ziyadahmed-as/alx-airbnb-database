-- Insert sample data into User table with Ethiopian names
INSERT INTO User (user_id, first_name, last_name, email, phone, password_hash, registration_date, user_type)
VALUES
(1, 'Abebe', 'Kebede', 'abebe.k@example.com', '+251911234567', 'hashed_password_1', '2022-01-15', 'guest'),
(2, 'Alemitu', 'Tesfaye', 'alemitu.t@example.com', '+251922345678', 'hashed_password_2', '2022-02-10', 'host'),
(3, 'Mekonnen', 'Assefa', 'mekonnen.a@example.com', '+251933456789', 'hashed_password_3', '2022-03-05', 'both'),
(4, 'Worknesh', 'Girma', 'worknesh.g@example.com', '+251944567890', 'hashed_password_4', '2022-04-20', 'host'),
(5, 'Tewodros', 'Hailu', 'tewodros.h@example.com', '+251955678901', 'hashed_password_5', '2022-05-12', 'guest'),
(6, 'Selamawit', 'Abate', 'selamawit.a@example.com', '+251966789012', 'hashed_password_6', '2022-06-08', 'both'),
(7, 'Getachew', 'Mulugeta', 'getachew.m@example.com', '+251977890123', 'hashed_password_7', '2022-07-30', 'host'),
(8, 'Yeshi', 'Dereje', 'yeshi.d@example.com', '+251988901234', 'hashed_password_8', '2022-08-14', 'guest'),
(9, 'Bereket', 'Yohannes', 'bereket.y@example.com', '+251999012345', 'hashed_password_9', '2022-09-22', 'host'),
(10, 'Etenesh', 'Solomon', 'etenesh.s@example.com', '+251900123456', 'hashed_password_10', '2022-10-18', 'both');

-- Insert sample data into Property table with Ethiopian locations
INSERT INTO Property (property_id, host_id, title, description, property_type, room_type, max_guests, bedrooms, beds, bathrooms, price_per_night, address, city, state, zip_code, country, latitude, longitude, created_at, updated_at)
VALUES
(1, 2, 'Cozy Addis Ababa Apartment', 'A charming apartment in the heart of Addis', 'Apartment', 'Entire home/apt', 4, 2, 2, 1, 2500.00, '123 Bole Road', 'Addis Ababa', 'Addis Ababa', '1000', 'Ethiopia', 9.0054, 38.7636, '2022-02-15', '2022-02-15'),
(2, 2, 'Luxury View Condo', 'Stunning views of Entoto mountains', 'Apartment', 'Entire home/apt', 6, 3, 3, 2, 4500.00, '456 Kazanchis', 'Addis Ababa', 'Addis Ababa', '1000', 'Ethiopia', 9.0227, 38.7469, '2022-03-10', '2022-03-10'),
(3, 3, 'Hawassa Lakefront Villa', 'Direct lake access with private garden', 'House', 'Entire home/apt', 8, 4, 5, 3, 3800.00, '789 Lake View', 'Hawassa', 'Sidama', '1400', 'Ethiopia', 7.0475, 38.4767, '2022-04-05', '2022-04-05'),
(4, 4, 'Semen Mountain Lodge', 'Secluded lodge with amazing mountain views', 'Lodge', 'Entire home/apt', 4, 2, 3, 1, 3200.00, '101 Simien Park Rd', 'Debark', 'Amhara', '2000', 'Ethiopia', 13.1589, 38.0665, '2022-05-12', '2022-05-12'),
(5, 6, 'Traditional Addis Guesthouse', 'Cultural experience in historic neighborhood', 'Guesthouse', 'Private room', 2, 1, 1, 1, 1800.00, '202 Piassa St', 'Addis Ababa', 'Addis Ababa', '1000', 'Ethiopia', 9.0349, 38.7464, '2022-06-20', '2022-06-20'),
(6, 7, 'Bahir Dar Lakeside Cottage', 'Quaint cottage with Blue Nile views', 'House', 'Entire home/apt', 3, 1, 2, 1, 2800.00, '303 Lakeshore Dr', 'Bahir Dar', 'Amhara', '1000', 'Ethiopia', 11.6000, 37.3833, '2022-07-15', '2022-07-15'),
(7, 9, 'Gondar Heritage House', 'Historic home near Fasil Ghebbi', 'House', 'Entire home/apt', 4, 2, 2, 2, 3500.00, '404 Castle Rd', 'Gondar', 'Amhara', '1000', 'Ethiopia', 12.6075, 37.4606, '2022-08-22', '2022-08-22'),
(8, 3, 'Langano Resort Villa', 'Private beach on Lake Langano', 'Villa', 'Entire home/apt', 6, 3, 4, 2, 4200.00, '505 Beachfront Ave', 'Langano', 'Oromia', '2000', 'Ethiopia', 7.6000, 38.7167, '2022-09-05', '2022-09-05'),
(9, 4, 'Lalibela Rock-Hewn Guesthouse', 'Unique stay near the famous churches', 'Guesthouse', 'Entire home/apt', 5, 3, 3, 2.5, 4000.00, '606 Church St', 'Lalibela', 'Amhara', '1000', 'Ethiopia', 12.0300, 39.0476, '2022-10-10', '2022-10-10'),
(10, 6, 'Bale Mountain Eco Lodge', 'Nature retreat with wildlife viewing', 'Lodge', 'Entire home/apt', 10, 5, 8, 4, 5500.00, '707 Forest Way', 'Goba', 'Oromia', '2000', 'Ethiopia', 6.7667, 39.8500, '2022-11-15', '2022-11-15');

-- Insert sample data into Booking table (updated with Ethiopian context)
INSERT INTO Booking (booking_id, property_id, guest_id, check_in_date, check_out_date, total_price, booking_status, created_at, updated_at)
VALUES
(1, 1, 1, '2023-01-10', '2023-01-15', 12500.00, 'completed', '2022-12-15', '2023-01-16'),
(2, 3, 5, '2023-02-14', '2023-02-20', 22800.00, 'completed', '2023-01-10', '2023-02-21'),
(3, 2, 8, '2023-03-05', '2023-03-10', 22500.00, 'completed', '2023-02-01', '2023-03-11'),
(4, 4, 1, '2023-04-15', '2023-04-20', 16000.00, 'completed', '2023-03-20', '2023-04-21'),
(5, 5, 3, '2023-05-01', '2023-05-05', 7200.00, 'completed', '2023-04-15', '2023-05-06'),
(6, 7, 5, '2023-06-10', '2023-06-15', 17500.00, 'completed', '2023-05-20', '2023-06-16'),
(7, 6, 10, '2023-07-20', '2023-07-25', 14000.00, 'completed', '2023-06-30', '2023-07-26'),
(8, 8, 8, '2023-08-12', '2023-08-18', 25200.00, 'completed', '2023-07-25', '2023-08-19'),
(9, 9, 1, '2023-09-05', '2023-09-10', 20000.00, 'completed', '2023-08-20', '2023-09-11'),
(10, 10, 6, '2023-12-20', '2023-12-27', 38500.00, 'confirmed', '2023-11-15', '2023-11-15'),
(11, 1, 3, '2023-11-01', '2023-11-05', 10000.00, 'completed', '2023-10-20', '2023-11-06'),
(12, 2, 10, '2023-10-10', '2023-10-15', 22500.00, 'completed', '2023-09-25', '2023-10-16'),
(13, 3, 5, '2024-01-15', '2024-01-22', 26600.00, 'confirmed', '2023-12-10', '2023-12-10'),
(14, 4, 8, '2024-02-14', '2024-02-18', 12800.00, 'pending', '2024-01-30', '2024-01-30'),
(15, 5, 1, '2024-03-20', '2024-03-25', 9000.00, 'confirmed', '2024-02-28', '2024-02-28');

-- Insert sample data into Payment table (updated with ETB currency)
INSERT INTO Payment (payment_id, booking_id, amount, payment_method, payment_status, transaction_date, processed_at)
VALUES
(1, 1, 12500.00, 'credit_card', 'completed', '2022-12-15', '2022-12-15'),
(2, 2, 22800.00, 'credit_card', 'completed', '2023-01-10', '2023-01-10'),
(3, 3, 22500.00, 'telebirr', 'completed', '2023-02-01', '2023-02-01'),
(4, 4, 16000.00, 'credit_card', 'completed', '2023-03-20', '2023-03-20'),
(5, 5, 7200.00, 'telebirr', 'completed', '2023-04-15', '2023-04-15'),
(6, 6, 17500.00, 'credit_card', 'completed', '2023-05-20', '2023-05-20'),
(7, 7, 14000.00, 'telebirr', 'completed', '2023-06-30', '2023-06-30'),
(8, 8, 25200.00, 'credit_card', 'completed', '2023-07-25', '2023-07-25'),
(9, 9, 20000.00, 'telebirr', 'completed', '2023-08-20', '2023-08-20'),
(10, 10, 19250.00, 'credit_card', 'partial', '2023-11-15', '2023-11-15'),
(11, 11, 10000.00, 'telebirr', 'completed', '2023-10-20', '2023-10-20'),
(12, 12, 22500.00, 'credit_card', 'completed', '2023-09-25', '2023-09-25'),
(13, 13, 13300.00, 'telebirr', 'partial', '2023-12-10', '2023-12-10'),
(14, 15, 9000.00, 'credit_card', 'completed', '2024-02-28', '2024-02-28');

-- Insert sample data into Review table
INSERT INTO Review (review_id, booking_id, property_id, guest_id, host_id, guest_rating, host_rating, guest_comment, host_comment, guest_review_date, host_review_date)
VALUES
(1, 1, 1, 1, 2, 5, 5, 'Perfect location in Bole, very clean and comfortable!', 'Abebe was an excellent guest, left everything in order.', '2023-01-16', '2023-01-16'),
(2, 2, 3, 5, 3, 4, 5, 'Beautiful lake views and peaceful atmosphere in Hawassa.', 'Tewodros and his family were wonderful guests.', '2023-02-21', '2023-02-21'),
(3, 3, 2, 8, 2, 5, 4, 'The view of Entoto mountains was breathtaking!', 'Yeshi was respectful and left the condo clean.', '2023-03-11', '2023-03-11'),
(4, 4, 4, 1, 4, 5, 5, 'An unforgettable experience in the Simien Mountains.', 'Abebe appreciated our local culture and traditions.', '2023-04-21', '2023-04-21'),
(5, 5, 5, 3, 6, 4, 5, 'Authentic Addis experience in Piassa neighborhood.', 'Mekonnen was very polite and respectful.', '2023-05-06', '2023-05-06'),
(6, 6, 7, 5, 9, 3, 5, 'Historic house but the water pressure was low.', 'Tewodros was understanding about the water issue.', '2023-06-16', '2023-06-16'),
(7, 7, 6, 10, 7, 5, 4, 'Waking up to Lake Tana views was magical!', 'Etenesh left the cottage very clean.', '2023-07-26', '2023-07-26'),
(8, 8, 8, 8, 3, 5, 5, 'Perfect family vacation by Lake Langano!', 'Yeshi and her family were perfect guests.', '2023-08-19', '2023-08-19'),
(9, 9, 9, 1, 4, 4, 5, 'Unique experience near the rock-hewn churches.', 'Abebe showed great respect for our heritage.', '2023-09-11', '2023-09-11'),
(10, 11, 1, 3, 2, 5, 4, 'Second stay at this property - just as good as the first!', 'Mekonnen is becoming a regular guest.', '2023-11-06', '2023-11-06'),
(11, 12, 2, 10, 2, 4, 5, 'Luxury condo with amazing city views.', 'Etenesh and her friends were wonderful guests.', '2023-10-16', '2023-10-16');
