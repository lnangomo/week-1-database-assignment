
-- Week 1 Database Assignment
-- Topic: School Management System
-- Student: Logy Bwoy

-- Create a database
CREATE DATABASE school_management;

-- Select the database
USE school_management;

-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(10),
    age INT,
    email VARCHAR(100)
);

-- Create teachers table
CREATE TABLE teachers (
    teacher_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_name VARCHAR(100) NOT NULL,
    subject VARCHAR(50),
    email VARCHAR(100)
);

-- Create courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teachers(teacher_id)
);

-- Display all tables
SHOW TABLES;

-- Display database information
SELECT DATABASE();
