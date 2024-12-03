-- --STUDENT DATABASE MANAGEMENT---- 
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE,
    enrollment_date DATE NOT NULL
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    credits INT NOT NULL
);

CREATE TABLE Enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    grade CHAR(1),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Students (name, email, phone, date_of_birth, enrollment_date)
VALUES
('Alice Johnson', 'alice.johnson@example.com', '1234567890', '2000-05-15', '2023-01-10'),
('Bob Smith', 'bob.smith@example.com', '0987654321', '1999-09-25', '2023-02-05');

INSERT INTO Courses (course_name, credits)
VALUES
('Database Management Systems', 4),
('Introduction to Programming', 3),
('Data Structures', 4);

INSERT INTO Enrollments (student_id, course_id, grade)
VALUES
(1, 1, 'A'),
(1, 2, 'B'),
(2, 1, 'A'),
(2, 3, 'B');

UPDATE Students
SET phone = '1112223333'
WHERE student_id = 1;

UPDATE Enrollments
SET grade = 'A'
WHERE enrollment_id = 2;

DELETE FROM Students
WHERE student_id = 2;

DELETE FROM Courses
WHERE course_id = 3;
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT 
    E.enrollment_id,
    S.name AS student_name,
    C.course_name,
    E.grade
FROM 
    Enrollments E
JOIN 
    Students S ON E.student_id = S.student_id
JOIN 
    Courses C ON E.course_id = C.course_id;

SELECT 
    C.course_name,
    E.grade
FROM 
    Enrollments E
JOIN 
    Courses C ON E.course_id = C.course_id
WHERE 
    E.student_id = 1;

SELECT 
    S.name AS student_name,
    S.email
FROM 
    Enrollments E
JOIN 
    Students S ON E.student_id = S.student_id
WHERE 
    E.course_id = 1;

