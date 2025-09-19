/*WEEK 8 FINAL PROJECT*/
-- Library Management Database Schema

-- 1. Create Database
CREATE DATABASE library_db;
USE library_db;

-- 2. Tables

-- Students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL
);

-- Books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(150) NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL
);

-- Borrow Records table (many-to-many: students <-> books)
CREATE TABLE borrow_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    CONSTRAINT fk_student FOREIGN KEY (student_id) REFERENCES students(student_id),
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES books(book_id)
);
