-- Create partitioned table structure
CREATE TABLE Booking_Partitioned (
    booking_id SERIAL,
    property_id INT NOT NULL,
    guest_id INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    booking_status VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, check_in_date)
) PARTITION BY RANGE (check_in_date);

-- Create partitions by year
CREATE TABLE booking_y2023 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE booking_y2024 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE booking_y2025 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Create default partition for future dates
CREATE TABLE booking_future PARTITION OF Booking_Partitioned
    DEFAULT;

-- Migrate data from original table (run during maintenance window)
INSERT INTO Booking_Partitioned 
SELECT * FROM Booking;

-- Create indexes on partitioned table
CREATE INDEX idx_part_booking_guest ON Booking_Partitioned(guest_id);
CREATE INDEX idx_part_booking_property ON Booking_Partitioned(property_id);
CREATE INDEX idx_part_booking_dates ON Booking_Partitioned(check_in_date, check_out_date);