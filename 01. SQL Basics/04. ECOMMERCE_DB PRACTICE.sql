CREATE DATABASE ecommerce_db;

USE ecommerce_db;

SELECT DATABASE();

SHOW TABLES;

-- CREATE TABLE
CREATE TABLE users
(
    user_id    INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50)  NOT NULL,
    last_name  VARCHAR(50)  NOT NULL,
    email      VARCHAR(100) NOT NULL UNIQUE,
    phone      VARCHAR(15),
    city       VARCHAR(50),
    state      VARCHAR(50),
    status     VARCHAR(20) DEFAULT 'ACTIVE',
    created_at DATETIME    DEFAULT CURRENT_TIMESTAMP
);
DESC users;

SHOW CREATE TABLE users;

-- INSERT DATA INTO TABLE
INSERT INTO users
(first_name, last_name, email, phone, city, state, status, created_at)
VALUES
    ('Amit', 'Sharma', 'amit.sharma@gmail.com', '9876543210', 'Delhi', 'Delhi', 'ACTIVE', '2024-01-15 10:30:00'),
    ('Rahul', 'Verma', 'rahul.verma@gmail.com', '9876543211', 'Noida', 'Uttar Pradesh', 'ACTIVE', '2024-02-20 11:15:00'),
    ('Priya', 'Singh', 'priya.singh@gmail.com', '9876543212', 'Lucknow', 'Uttar Pradesh', 'ACTIVE', '2024-03-10 09:45:00'),
    ('Neha', 'Gupta', 'neha.gupta@gmail.com', '9876543213', 'Gurgaon', 'Haryana', 'INACTIVE', '2024-04-05 14:20:00'),
    ('Rohit', 'Kumar', 'rohit.kumar@gmail.com', '9876543214', 'Patna', 'Bihar', 'ACTIVE', '2024-05-18 16:10:00'),
    ('Anjali', 'Mehta', 'anjali.mehta@gmail.com', '9876543215', 'Mumbai', 'Maharashtra', 'ACTIVE', '2024-06-22 12:40:00'),
    ('Vikas', 'Yadav', 'vikas.yadav@gmail.com', '9876543216', 'Jaipur', 'Rajasthan', 'BLOCKED', '2024-07-12 13:25:00'),
    ('Pooja', 'Mishra', 'pooja.mishra@gmail.com', '9876543217', 'Kanpur', 'Uttar Pradesh', 'ACTIVE', '2024-08-01 10:00:00'),
    ('Arjun', 'Malhotra', 'arjun.malhotra@gmail.com', '9876543218', 'Chandigarh', 'Chandigarh', 'ACTIVE', '2024-08-19 15:30:00'),
    ('Sneha', 'Patel', 'sneha.patel@gmail.com', '9876543219', 'Ahmedabad', 'Gujarat', 'ACTIVE', '2024-09-11 11:45:00'),
    ('Karan', 'Agarwal', 'karan.agarwal@gmail.com', '9876543220', 'Delhi', 'Delhi', 'INACTIVE', '2024-10-03 09:30:00'),
    ('Simran', 'Kaur', 'simran.kaur@gmail.com', '9876543221', 'Amritsar', 'Punjab', 'ACTIVE', '2024-10-25 17:20:00'),
    ('Aditya', 'Jain', 'aditya.jain@gmail.com', '9876543222', 'Indore', 'Madhya Pradesh', 'ACTIVE', '2024-11-07 14:10:00'),
    ('Nisha', 'Rana', 'nisha.rana@gmail.com', '9876543223', 'Dehradun', 'Uttarakhand', 'ACTIVE', '2024-11-22 10:50:00'),
    ('Saurabh', 'Tiwari', 'saurabh.tiwari@gmail.com', '9876543224', 'Varanasi', 'Uttar Pradesh', 'ACTIVE', '2024-12-05 12:15:00'),
    ('Kavya', 'Iyer', 'kavya.iyer@gmail.com', '9876543225', 'Bangalore', 'Karnataka', 'ACTIVE', '2025-01-10 09:20:00'),
    ('Manish', 'Chauhan', 'manish.chauhan@gmail.com', '9876543226', 'Faridabad', 'Haryana', 'BLOCKED', '2025-02-14 16:45:00'),
    ('Divya', 'Shah', 'divya.shah@gmail.com', '9876543227', 'Surat', 'Gujarat', 'ACTIVE', '2025-03-08 13:35:00'),
    ('Akash', 'Sinha', 'akash.sinha@gmail.com', '9876543228', 'Ranchi', 'Jharkhand', 'ACTIVE', '2025-04-17 11:10:00'),
    ('Ishita', 'Das', 'ishita.das@gmail.com', '9876543229', 'Kolkata', 'West Bengal', 'ACTIVE', '2025-05-21 15:55:00');

