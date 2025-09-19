# 📘 Library Management Database

## 📖 Overview
This project is a simple **Library Management System** database implemented in **MySQL**.  
It demonstrates a basic relational schema with **primary keys**, **foreign keys**, **unique constraints**, and **relationships**.

---

## 🗄️ Database Schema

### 1. Students Table
- Stores details about each student.
- **Columns**:
  - `student_id` (Primary Key)
  - `first_name` (NOT NULL)
  - `last_name` (NOT NULL)
  - `email` (UNIQUE, NOT NULL)

### 2. Books Table
- Stores details about each book in the library.
- **Columns**:
  - `book_id` (Primary Key)
  - `title` (NOT NULL)
  - `author` (NOT NULL)
  - `isbn` (UNIQUE, NOT NULL)

### 3. Borrow Records Table
- Tracks which student borrowed which book and when.
- **Columns**:
  - `record_id` (Primary Key)
  - `student_id` (Foreign Key → Students)
  - `book_id` (Foreign Key → Books)
  - `borrow_date` (NOT NULL)
  - `return_date` (nullable)

---

## 🔗 Relationships
- **One-to-Many (Students → Borrow Records):**  
  A single student can borrow many books over time.
  
- **One-to-Many (Books → Borrow Records):**  
  A single book can be borrowed many times by different students.
  
- **Many-to-Many (Students ↔ Books):**  
  Students can borrow many books, and books can be borrowed by many students.  
  This is implemented through the `borrow_records` table.

---

## ✅ Constraints Used
- **PRIMARY KEY** → Uniquely identifies each record.
- **FOREIGN KEY** → Ensures data integrity between tables.
- **UNIQUE** → Prevents duplicate student emails and duplicate book ISBNs.
- **NOT NULL** → Ensures required fields cannot be left empty.

---

