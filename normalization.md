# 📊 Database Normalization – Achieving 3NF

## 🎯 Objective

Make sure the structure of the database is normalized fully up to **Third Normal Form (3NF)**. This allows for optimal reduction in data redundancy while improving data consistency across the system.  

---  

## 🧩 Steps in Normalization

### 🔸 First Normal Form (1NF)

- Each field must contain a single item without any lists or grouped information.
- Each column contains unique and indivisible values.

✅  Our tables do not have repeating groups or multi-valued columns, thus preserving 1NF.  

---

### 🔸 Second Normal Form (2NF)

- No requirements of 1st and 2nd 1NF are in violation. 
- Each non-primary key field is completely dependent on the primary key in its entirety.  

✅ There are no partial dependencies in tables where we use single column primary keys (UUIDs). All attributes depend directly on their table's primary key.  

---  

### 🔸 Third Normal Form (3NF)

- All requirements of 2NF are met.  
- There are no transitive dependencies, so non-key fields do not depend on each other.  

✅ No non-key field in any table is dependant on anything other than the primary key. E.g.: In the `User` table, `email`, `role` and  `phone_number`. All 3 are dependent on `user_id`.

- For both `Review` and `Payment`, all columns are functionally dependent on the respective primary key.

## ✅ Normalized Design Overview

- Each table holds only relevant and non-duplicated data.

- Foreign keys are used to maintain relational integrity.

- Repetition is avoided using enumerated values (e.g. roles, status, payment methods).

- No superfluous fragments or derived data are stored.

---

## 📌 Remaining Remarks

- The schema structure now has well-defined boundaries with enhanced relations and streamlined maintenance.

- The design adheres to proper database regulations and is set for execution.

---

## ✔️ Remarks

The schema outlined above meets **3NF** requirements. Thus, performance is enhanced while duplication is minimized, and robust data integrity is maintained within the Airbnb-similar system.