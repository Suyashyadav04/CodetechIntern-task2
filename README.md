# Student Database Management System

This project is a SQL-based relational database for managing student records, courses, and grades. It is designed to demonstrate database design, SQL commands, and relational data manipulation.

## Features

- Manage **Students**: Add, update, delete, and retrieve student information.
- Manage **Courses**: Add, update, delete, and retrieve course details.
- Record **Enrollments**: Link students to courses and track grades.
- Use **Joins**: Combine data across tables for meaningful insights.

## Database Schema

### Tables

1. **Students**
   - `student_id`: Unique identifier.
   - `name`: Full name of the student.
   - `email`: Unique email address.
   - `phone`: Contact number.
   - `date_of_birth`: Date of birth.
   - `enrollment_date`: Enrollment date.

2. **Courses**
   - `course_id`: Unique identifier.
   - `course_name`: Name of the course.
   - `credits`: Number of credits.

3. **Enrollments**
   - `enrollment_id`: Unique identifier.
   - `student_id`: Links to `Students.student_id`.
   - `course_id`: Links to `Courses.course_id`.
   - `grade`: Grade for the course.

## Setup Instructions

### Prerequisites

- A SQL-compatible database (e.g., MySQL, PostgreSQL).
- SQL client or tool for database interaction.

### Steps

1. Clone this repository:
   ```bash
   git clone https://github.com/your-username/student-database-management.git
   cd student-database-management
