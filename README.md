📘 README.md — Ola Ride Analysis Project
🚗 Ola Ride Analysis – SQL + Python + Power BI

This project focuses on analyzing Ola ride booking data using a combination of MySQL, Python (Jupyter Notebook), and Power BI.
The goal of the project is to clean, analyze, visualize, and derive business insights from ride-level booking information.
---
📂 Project Structure
```
DA_Project_1/
│
├── Notebooks/
│     └── Booking.ipynb            # Data cleaning & preprocessing in Python
│
├── Data/
│     └── cleaned_file.csv         # Cleaned dataset after 
│     └── Bookings-100000-Rows     # Uncleaned dataset
Python preprocessing
│
├── Db_Export/
│     ├── Ola_bookings.sql              # SQL analysis queries & views
│     └── ola_routines.sql         # Database–exported SQL routines & view definitions
│
├── PowerBI/
│     └── OLA Dashboard.pbix       # Final Power BI dashboard
│
├── Queries/
│     ├── Ola_sql.sql              # Export file from database
└── README.md
```
🧹 1. Data Cleaning (Python – Jupyter Notebook)

Performed in Booking.ipynb, includes:

- Handling missing values

- Removing duplicates

- Correcting inconsistent values

- Data type conversions

- Exporting cleaned dataset → cleaned_file.csv

Output: A fully cleaned and ready-to-analyze dataset.

---

🗄️ 2. SQL Analysis (MySQL)

All queries are available in:

✔ Ola_sql.sql — Analysis Queries

This file contains 10 structured views such as:

- Successful bookings

- Average ride distance per vehicle type

- Customer & driver cancellations

- Top 5 customers by ride count

- Completed ride revenue

- Incomplete rides & reasons

- Customer ratings

- Driver ratings for Prime Sedan


Ola_sql

✔ ola_routines.sql — Auto-generated view structures

This file includes MySQL dump-generated view definitions for database restoration.

---

📊 3. Power BI Dashboard

File: OLA Dashboard.pbix

The Power BI dashboard highlights:

- Ride success vs cancellation statistics

- Payment method breakdown

- Vehicle type performance

- Customer and driver metrics

- Revenue insights

- Average ratings

- Distance & booking trends

This dashboard provides a complete business overview for decision making.

---

🔍 4. Key Insights Derived
🚙 Ride & Customer Behavior

- Identified top customers based on total rides

- Insights into cancellations done by customers & drivers

- Success rate of rides by payment type

💰 Revenue Findings

- Total booking value of successful rides

- Highest-performing vehicle categories

⭐ Rating Insights

- Driver rating distribution for Prime Sedan

- Vehicle-wise customer ratings

📉 Operational Insights

- Reasons behind incomplete rides

- Vehicle category with highest average ride distance

🛠️ Tools & Technologies Used
| Category        | Tools                                |
| --------------- | ------------------------------------ |
| Programming     | Python (Jupyter Notebook)            |
| Database        | MySQL Workbench (Views, SQL Queries) |
| Visualization   | Power BI Desktop                     |
| Version Control | Git & GitHub                         |

---
🚀 How to Use This Project
1. Run SQL Queries

Import database or use views via:
```
source Ola_sql.sql;
```
2. Open Notebook

Use Jupyter:
```
jupyter notebook Booking.ipynb

```
3. Open Power BI Dashboard

Open the .pbix file directly in Power BI Desktop.

---

📌 Author

Aniket Jain
Data Analyst | SQL | Python | Power BI

---
If you'd like, I can also:

✅ Improve the README further

✅ Add dashboard screenshots

✅ Add badges (GitHub stars, tools, license)

✅ Write a summary section for recruiters

Just tell me!
