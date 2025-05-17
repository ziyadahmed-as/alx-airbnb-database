# Query Optimization Report

## Initial Query Analysis

### EXPLAIN Output Findings:
- Sequential scans on all tables
- Hash joins between large tables
- No index utilization for sorting
- Processing all rows unnecessarily

### Performance Issues:
1. **Full table scans**: No index usage for joins or filters
2. **Unbounded result set**: Retrieving all historical bookings
3. **Inefficient sorting**: Large in-memory sorts
4. **Redundant data**: Retrieving unused columns

## Optimization Strategies Applied

1. **Query Refactoring**:
   - Added date filter to limit to recent bookings
   - Added LIMIT clause to reduce result size
   - Removed unused columns from SELECT

2. **Index Recommendations**:
```sql
CREATE INDEX idx_booking_guest ON Booking(guest_id);
CREATE INDEX idx_booking_property ON Booking(property_id);
CREATE INDEX idx_booking_dates ON Booking(check_in_date);
CREATE INDEX idx_payment_booking ON Payment(booking_id);