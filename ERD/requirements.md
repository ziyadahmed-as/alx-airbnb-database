# 🗂️ Entity-Relationship Diagram (ERD) Skills Business 

## 📘 Overview 

This folder contains the **Entity-Relationship Diagram (ERD)** for ALX Airbnb Database project. The ERD shows the framework of an entity-relationship model as a diagram with its corresponding entities, attributes, and relationships. Instead, it is crafted to guide construction and normalization of a relational schema in other steps of the project.

## 🧠 Purpose

The ERD was configured to:

- Identify all critical entities (for example, `User`, `Property`, `Booking`, etc`)

- Identify relationships between these entities (one-to-many, one-to-one) 

- Design a normalized as well as an extendable database framework.

- Assist with the design of the SQL schema and data population for the subsequent modules

## 📦 Entities and Attributes

### 👤 User

- `user_id` (PK)

- `fname`

- `lname`

- emails

- `password_hash`

- `phone_number`

- `role` (ENUM: guest, host, admin)

- `created_at`

### 🏠 Property

- `property_id` (PK)

- `host` (FK → User) 

- `name`

- `description`

- `location`

- `price_per_night`

- `created_at`

- `updated_at`

### 📅 Booking

- `booking_id` (PK)

- `created_at`

- `user_id` (FK → User)

- `start_date`

- `end_date`

- Total Amount

- `status` ENUM: ( pending, confirmed, canceled )

- `property_id` (FK → Property)

### 💳 Payment

- `payment_id` (PK)

- `booking_id` (FK → Booking)

- `amount`

- `payment_date`

- `payment_method` 