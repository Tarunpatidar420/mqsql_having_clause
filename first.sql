
CREATE DATABASE IF NOT EXISTS college;
USE college;


CREATE TABLE IF NOT EXISTS department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    block_name VARCHAR(20),
    hod_name VARCHAR(50)
);

INSERT INTO department (dept_id, dept_name, block_name, hod_name) VALUES
(101, 'CSE', 'A-Block', 'Dr. Sharma'),
(102, 'Mechanical', 'B-Block', 'Dr. Verma'),
(103, 'Civil', 'C-Block', 'Dr. Singh'),
(104, 'Electrical', 'D-Block', 'Dr. Patel'),
(105, 'IT', 'A-Block', 'Dr. Mishra');


CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT,
    gender VARCHAR(10),
    city VARCHAR(30),
    course_year INT,
    marks INT,
    phone VARCHAR(15),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES department(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================
-- 3) 60+ student rows
-- =========================
INSERT INTO student (id, name, age, gender, city, course_year, marks, phone, dept_id) VALUES
(1, 'Aarav', 19, 'Male', 'Indore', 1, 78, '9000000001', 101),
(2, 'Vivaan', 20, 'Male', 'Bhopal', 2, 82, '9000000002', 102),
(3, 'Aditya', 21, 'Male', 'Ujjain', 3, 69, '9000000003', 103),
(4, 'Krishna', 22, 'Male', 'Indore', 4, 91, '9000000004', 101),
(5, 'Rohan', 19, 'Male', 'Dewas', 1, 73, '9000000005', 104),
(6, 'Sarthak', 20, 'Male', 'Bhopal', 2, 88, '9000000006', 105),
(7, 'Ananya', 18, 'Female', 'Indore', 1, 84, '9000000007', 101),
(8, 'Priya', 21, 'Female', 'Ratlam', 3, 77, '9000000008', 102),
(9, 'Sneha', 20, 'Female', 'Ujjain', 2, 92, '9000000009', 103),
(10, 'Kavya', 22, 'Female', 'Bhopal', 4, 66, '9000000010', 104),

(11, 'Rahul', 19, 'Male', 'Indore', 1, 81, '9000000011', 105),
(12, 'Tarun', 20, 'Male', 'Dhar', 2, 74, '9000000012', 101),
(13, 'Aman', 21, 'Male', 'Bhopal', 3, 59, '9000000013', 102),
(14, 'Deepak', 22, 'Male', 'Indore', 4, 87, '9000000014', 103),
(15, 'Nikhil', 19, 'Male', 'Sehore', 1, 64, '9000000015', 104),
(16, 'Yash', 20, 'Male', 'Indore', 2, 71, '9000000016', 105),
(17, 'Pooja', 18, 'Female', 'Dewas', 1, 89, '9000000017', 101),
(18, 'Neha', 21, 'Female', 'Bhopal', 3, 94, '9000000018', 102),
(19, 'Muskan', 20, 'Female', 'Ujjain', 2, 76, '9000000019', 103),
(20, 'Riya', 22, 'Female', 'Indore', 4, 83, '9000000020', 104),

(21, 'Harsh', 19, 'Male', 'Ratlam', 1, 72, '9000000021', 105),
(22, 'Manish', 20, 'Male', 'Indore', 2, 67, '9000000022', 101),
(23, 'Shivam', 21, 'Male', 'Bhopal', 3, 85, '9000000023', 102),
(24, 'Lokesh', 22, 'Male', 'Ujjain', 4, 79, '9000000024', 103),
(25, 'Mohan', 19, 'Male', 'Indore', 1, 55, '9000000025', 104),
(26, 'Gaurav', 20, 'Male', 'Dhar', 2, 90, '9000000026', 105),
(27, 'Sakshi', 18, 'Female', 'Indore', 1, 88, '9000000027', 101),
(28, 'Ishita', 21, 'Female', 'Bhopal', 3, 61, '9000000028', 102),
(29, 'Aditi', 20, 'Female', 'Dewas', 2, 80, '9000000029', 103),
(30, 'Simran', 22, 'Female', 'Ratlam', 4, 93, '9000000030', 104),

(31, 'Karan', 19, 'Male', 'Indore', 1, 70, '9000000031', 105),
(32, 'Vikas', 20, 'Male', 'Bhopal', 2, 86, '9000000032', 101),
(33, 'Abhishek', 21, 'Male', 'Ujjain', 3, 62, '9000000033', 102),
(34, 'Ritesh', 22, 'Male', 'Dewas', 4, 95, '9000000034', 103),
(35, 'Pratik', 19, 'Male', 'Indore', 1, 68, '9000000035', 104),
(36, 'Arjun', 20, 'Male', 'Bhopal', 2, 84, '9000000036', 105),
(37, 'Nandini', 18, 'Female', 'Indore', 1, 75, '9000000037', 101),
(38, 'Payal', 21, 'Female', 'Dhar', 3, 91, '9000000038', 102),
(39, 'Komal', 20, 'Female', 'Ujjain', 2, 57, '9000000039', 103),
(40, 'Tanvi', 22, 'Female', 'Bhopal', 4, 82, '9000000040', 104),

(41, 'Suresh', 19, 'Male', 'Indore', 1, 65, '9000000041', 105),
(42, 'Raj', 20, 'Male', 'Ratlam', 2, 78, '9000000042', 101),
(43, 'Om', 21, 'Male', 'Bhopal', 3, 88, '9000000043', 102),
(44, 'Jatin', 22, 'Male', 'Indore', 4, 73, '9000000044', 103),
(45, 'Hemant', 19, 'Male', 'Sehore', 1, 60, '9000000045', 104),
(46, 'Umesh', 20, 'Male', 'Dewas', 2, 97, '9000000046', 105),
(47, 'Megha', 18, 'Female', 'Indore', 1, 79, '9000000047', 101),
(48, 'Bhavna', 21, 'Female', 'Bhopal', 3, 85, '9000000048', 102),
(49, 'Rekha', 20, 'Female', 'Ujjain', 2, 69, '9000000049', 103),
(50, 'Palak', 22, 'Female', 'Indore', 4, 92, '9000000050', 104),

(51, 'Dev', 19, 'Male', 'Dhar', 1, 74, '9000000051', 105),
(52, 'Kishan', 20, 'Male', 'Indore', 2, 81, '9000000052', 101),
(53, 'Nitin', 21, 'Male', 'Bhopal', 3, 58, '9000000053', 102),
(54, 'Pankaj', 22, 'Male', 'Ujjain', 4, 89, '9000000054', 103),
(55, 'Tushar', 19, 'Male', 'Indore', 1, 63, '9000000055', 104),
(56, 'Ravi', 20, 'Male', 'Ratlam', 2, 87, '9000000056', 105),
(57, 'Divya', 18, 'Female', 'Bhopal', 1, 90, '9000000057', 101),
(58, 'Sonal', 21, 'Female', 'Indore', 3, 72, '9000000058', 102),
(59, 'Jyoti', 20, 'Female', 'Dewas', 2, 84, '9000000059', 103),
(60, 'Shreya', 22, 'Female', 'Ujjain', 4, 96, '9000000060', 104),
(61, 'Chirag', 20, 'Male', 'Indore', 2, 77, '9000000061', 105),
(62, 'Vaibhav', 21, 'Male', 'Bhopal', 3, 83, '9000000062', 101),
(63, 'Ayesha', 19, 'Female', 'Indore', 1, 86, '9000000063', 102),
(64, 'Ritika', 20, 'Female', 'Dhar', 2, 71, '9000000064', 103),
(65, 'Kriti', 21, 'Female', 'Bhopal', 3, 88, '9000000065', 104);
select*from department;
