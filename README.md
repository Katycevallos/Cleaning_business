🧹 Cleaning Services Database

A relational database project designed to simulate the operations of a cleaning services business.
It focuses on modeling real-world scenarios such as order management, employee assignments, and service performance tracking.

📌 Project Overview

This project was built to practice:

Database design and normalization
Writing analytical SQL queries
Handling real-world relationships (many-to-many)
Query optimization using indexes

The database reflects how a cleaning business manages services, employees, and customer orders.

🧱 Database Structure
Main Tables:
services → Types of cleaning services offered
orders → Customer bookings and job details
employees → Workers available for assignments
🔗 Junction Table:
order_employees
Handles the many-to-many relationship between orders and employees.

This allows:

Multiple employees per order
Accurate tracking of workload
More realistic business modeling

⚙️ Key Features
Track completed and cancelled orders
Calculate revenue based on service duration
Analyze employee workload
Measure service performance 

🚀Key learnings:

Index order matters in composite indexes
Design indexes based on how queries filter, join, and group data
Avoid unnecessary or duplicate indexes

🧠 What I Learned
How to design scalable database structures
The importance of junction tables in real-world scenarios
How SQL queries are executed step by step
How indexing can significantly impact performance

📂 Future Improvements
Add customer table and relationships
Include pricing variations per service
Build a dashboard for data visualization
Integrate with a frontend application

🛠️ Tech Used
SQLite 
DB Browser / Command Line
Git & GitHub
🤝 About

This project is part of my journey into data and software development, focusing on building practical and real-world database solutions.
