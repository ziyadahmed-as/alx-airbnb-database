# 📊 Entity-Relationship Diagram (ERD)

## 🔍 Introduction

This folder contains the Entity-Relationship Diagram (ERD) for the **ALX Airbnb Database Project**. The ERD illustrates the core structure of the database, showing key entities, their attributes, and how they relate to one another. It serves as a foundational step for building the database schema.

## 🎯 Purpose

The ERD helps to:

- Identify main entities such as `User`, `Property`, `Booking`, etc.
- Define relationships between these entities
- Support a scalable and normalized database design
- Prepare for schema creation and data seeding in later project tasks

## 📚 Entities and Fields

### 👤 User
- `user_id` (Primary Key)
- `fname`
- `lname`
- `email`
- `password_hash`
- `phone_number`
- `role` (guest, host, admin)
- `created_at`

### 🏘️ Property
- `property_id` (Primary Key)
- `host` (Foreign Key → User)
- `name`
- `description`
- `location`
- `price_per_night`
- `created_at`
- `updated_at`

### 📆 Booking
- `booking_id` (Primary Key)
- `created_at`
- `user_id` (Foreign Key → User)
- `start_date`
- `end_date`
- `total_price`
- `status` (pending, confirmed, canceled)
- `property_id` (Foreign Key → Property)

### 💰 Payment
- `payment_id` (Primary Key)
- `booking_id` (Foreign Key → Booking)
- `amount`
- `payment_date`
- `payment_method` (credit_card, paypal, stripe)

### 🌟 Review
- `review_id` (Primary Key)
- `created_at`
- `user_id` (Foreign Key → User)
- `rating` (between 1 and 5)
- `comment`
- `property_id` (Foreign Key → Property)

### 💬 Message
- `message_id` (Primary Key)
- `sender_id` (Foreign Key → User)
- `recipient_id` (Foreign Key → User)
- `sender_body`
- `sent_at`

## 🔗 Entity Relationships

- **User → Booking**: One user can make many bookings.
- **User → Property**: One user (as a host)
- **Property → Booking**: One property can be booked multiple times.
- **Booking → Payment**: Each booking has a single payment.
- **Property → Review**: A property can have many reviews.
- **User → Review**: A user can post multiple reviews.
- **User → Message**: Users can send and receive many messages.

## 🖼️ ERD File

- `er_diagram.png`: The visual ERD created using Draw.io