# ✈️ Travel Agency Database

A relational database design for a travel agency. It stores and manages customers, trips, bookings, hotels, employees, payments, and reviews.

**Course:** Database project — Helwan University, Business Information Systems
**Supervisor:** Dr. Mohamed Hasan
**Group:** 7

## 📑 Table of Contents

- [Introduction](#-introduction)
- [Entities and Attributes](#-entities-and-attributes)
- [ERD](#-erd)
- [Relational Schema](#-relational-schema)
- [ERD to Relational Mapping](#-erd-to-relational-mapping)
- [Database Instance](#-database-instance)
- [SQL](#-sql)
- [Team](#-team)

## 📖 Introduction

A travel agency database stores, organizes, and manages all information related to customers, trips, bookings, hotels, employees, payments, and reviews.

The main goal is to support the agency's operations with an integrated system that tracks customer reservations, trip destinations, hotel arrangements, and payment details. It helps the agency:

- keep accurate records of every transaction,
- keep communication between customers and travel agents smooth,
- simplify the management of travel packages and hotel partnerships,
- improve data consistency, reduce redundancy, and generate reports that support decision-making.

For example, a customer can book multiple trips, each booking links a trip, a hotel and an employee, payments are recorded per booking, and customers can leave reviews after their trips.

## 🗂️ Entities and Attributes

| Entity | Attributes |
| --- | --- |
| **Customer** | `Customer_id` (PK), First_name, Last_name, Phone_number, Email_address |
| **Trip** | `Trip_id` (PK), Trip_Name, Destination, Start_Date, End_Date |
| **Booking** | `Booking_id` (PK), Booking_date, Status (Confirmed / Pending / Cancelled), `Customer_id` (FK), `Employee_id` (FK), `Trip_id` (FK), `Hotel_id` (FK) |
| **Employee** | `Employee_id` (PK), First_name, Last_name, Email, Phone_number, Salary |
| **Hotel** | `Hotel_id` (PK), Name, City, Rating |
| **Payment** | `Payment_id` (PK), Method, Amount, Payment_date, `Booking_id` (FK) |
| **Review** | `Review_id` (PK), Review_date, Rating, Comment, `Booking_id` (FK) |

## 🧩 ERD

![ERD](images/erd.png)

`Booking` is the central entity: a customer makes many bookings, and each booking is assigned to one hotel, includes one trip, is handled by one employee, has payments, and can receive reviews.

## 🔗 Relational Schema

![Relational schema](images/relational-schema.png)

## 🔄 ERD to Relational Mapping

Multivalued attributes (phone numbers) get their own tables.

| Table | Columns |
| --- | --- |
| **Employee** | Emp_id, E-mail, First_name, Last_name, Salary |
| **Employee_phone_number** | Emp_id, Emp_number |
| **Trip** | Trip_id, Trip_name, Destination, Start_date, End_date |
| **Customer** | Customer_id, First_name, Last_name, Email |
| **Customer_phone_number** | Customer_id, Customer_phone |
| **Booking** | Booking_id, Booking_date, Status, Customer_id, Employee_id, Trip_id, Hotel_id |
| **Hotel** | Hotel_id, Name, City, Rating |
| **Payment** | Payment_id, Method, Amount, Payment_date, Booking_id |
| **Review** | Review_id, Review_date, Rating, Comment, Booking_id |

## 🧪 Database Instance

### Customer

| Customer_id | First_name | Last_name | Phone | Email |
| --- | --- | --- | --- | --- |
| 1 | Mohamed | Aly | 01123456789 | mohamed@gmail.com |
| 2 | Ahmed | Ashraf | 01234565434 | ahmed@gmail.com |
| 3 | Mona | Zeyad | 01087654674 | mona@gmail.com |

### Trip

| Trip_id | Trip_Name | Destination | Start_Date | End_Date |
| --- | --- | --- | --- | --- |
| T1 | Trip 663 | Tokyo | 15-07-2025 | 25-07-2025 |
| T2 | Trip 504 | Paris | 01-06-2025 | 10-06-2025 |
| T3 | Trip 729 | Roma | 20-08-2025 | 28-08-2025 |

### Booking

| Booking_id | Booking_date | Status | Customer_id | Employee_id | Trip_id | Hotel_id |
| --- | --- | --- | --- | --- | --- | --- |
| B1 | 10-05-2025 | Confirmed | 1 | A1 | T2 | H2 |
| B2 | 02-07-2025 | Pending | 2 | A2 | T1 | H1 |
| B3 | 12-08-2025 | Confirmed | 3 | A3 | T3 | H3 |

### Employee

| Employee_id | First_name | Last_name | Phone | Email | Salary |
| --- | --- | --- | --- | --- | --- |
| A1 | Sara | Aly | 01123456789 | Sara@gmail.com | 9,000 |
| A2 | Youssef | Ashraf | 01234565434 | youssef@gmail.com | 8,000 |
| A3 | Lena | Saied | 01087654674 | lena@gmail.com | 7,000 |

### Hotel

| Hotel_id | Name | City | Rating |
| --- | --- | --- | --- |
| H1 | Sakura Hotel | Tokyo | 4.5 |
| H2 | Eiffel Stay | Paris | 4.8 |
| H3 | Roma Palace | Roma | 4.2 |

### Payment

| Payment_id | Method | Amount | Payment_date | Booking_id |
| --- | --- | --- | --- | --- |
| P1 | Credit Card | 9,000 | 10-05-2025 | B1 |
| P2 | Cash | 7,500 | 14-07-2025 | B2 |
| P3 | Bank Transfer | 8,200 | 12-08-2025 | B3 |

### Review

| Review_id | Review_date | Rating | Comment | Booking_id |
| --- | --- | --- | --- | --- |
| R1 | 11-06-2025 | 4.5 | Nice | B1 |
| R2 | 27-07-2025 | 4.8 | A good place | B2 |
| R3 | 29-08-2025 | 4.2 | Hotel need some fixes | B3 |

## 💾 SQL

| File | Purpose |
| --- | --- |
| [`sql/schema.sql`](sql/schema.sql) | Creates all tables with primary keys, foreign keys and constraints |
| [`sql/sample_data.sql`](sql/sample_data.sql) | Inserts the sample data shown above |
| [`sql/queries.sql`](sql/queries.sql) | Example queries (joins, aggregation) |

Run them in this order: `schema.sql` → `sample_data.sql` → `queries.sql`.

## 👥 Team

- Menna Muhammad Ali
- Menna Khaled Gamal
- Nour Yasser Nabil
- Norhan Khalid Mohamed
- Nour Mohamed Kamal
- Lujain Medhat Noureldien
- Hager Ayman Abd Alftah Kasm
- Malak Eslam Badr
- Felopateer Fathy Ebrahim
- Abd El-Rahman Elsebaey

## 📁 Repository Structure

```text
.
├── README.md
├── images/
│   ├── erd.png
│   └── relational-schema.png
└── sql/
    ├── schema.sql
    ├── sample_data.sql
    └── queries.sql
```
