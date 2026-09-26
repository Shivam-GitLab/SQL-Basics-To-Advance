-- ============================================
-- 02. Retrieving Data From a Single Table
-- Practice Dataset
-- ============================================

CREATE DATABASE sql_practice;

USE sql_practice;


-- ============================================
-- TABLE
-- ============================================

CREATE TABLE customers
(
    customer_id INT PRIMARY KEY,
    first_name  VARCHAR(50),
    last_name   VARCHAR(50),
    email       VARCHAR(100),
    city        VARCHAR(50),
    state       VARCHAR(50),
    age         INT,
    salary      DECIMAL(10, 2),
    points      INT,
    birth_date  DATE
);


-- ============================================
-- DATA
-- ============================================

INSERT INTO customers
(customer_id, first_name, last_name, email, city, state, age, salary, points, birth_date)
VALUES (1, 'John', 'Smith', 'john@gmail.com', 'New York', 'New York', 28, 55000, 2500, '1998-03-15'),

       (2, 'Sarah', 'Johnson', 'sarah@yahoo.com', 'Delhi', 'Delhi', 32, 72000, 4800, '1994-07-21'),

       (3, 'Amit', 'Sharma', 'amit@gmail.com', 'Gurgaon', 'Haryana', 26, 48000, 1800, '2000-01-10'),

       (4, 'Rahul', 'Singh', 'rahul@gmail.com', 'Noida', 'Uttar Pradesh', 35, 85000, 6200, '1991-11-05'),

       (5, 'Ananya', 'Verma', NULL, 'Mumbai', 'Maharashtra', 24, 42000, 1200, '2002-05-18'),

       (6, 'Robert', 'Brown', 'robert@yahoo.com', 'Chicago', 'Illinois', 41, 92000, 7500, '1985-09-12'),

       (7, 'Riya', 'Shah', 'riya@gmail.com', 'Delhi', 'Delhi', 29, 68000, 3900, '1997-02-25'),

       (8, 'Aman', 'Khan', 'aman@gmail.com', 'Lucknow', 'Uttar Pradesh', 31, 61000, 5400, '1995-06-30'),

       (9, 'Sneha', 'Kapoor', 'sneha@yahoo.com', 'Bangalore', 'Karnataka', 27, 58000, 3100, '1999-12-08'),

       (10, 'David', 'Wilson', NULL, 'Boston', 'Massachusetts', 45, 105000, 8900, NULL),

       (11, 'Arjun', 'Mehta', 'arjun@gmail.com', 'Mumbai', 'Maharashtra', 38, 78000, 6700, '1988-04-17'),

       (12, 'Priya', 'Patel', 'priya@gmail.com', 'Ahmedabad', 'Gujarat', 33, 65000, 4500, '1993-08-09'),

       (13, 'Rohan', 'Das', 'rohan@yahoo.com', 'Kolkata', 'West Bengal', 22, 39000, 900, '2004-10-11'),

       (14, 'Akash', 'Gupta', NULL, 'Delhi', 'Delhi', 36, 73000, 5800, '1990-01-29'),

       (15, 'Simran', 'Arora', 'simran@gmail.com', 'Chandigarh', 'Haryana', 30, 56000, 2700, '1996-03-03'),

       (16, 'Raj', 'Malhotra', 'raj@gmail.com', 'Noida', 'Uttar Pradesh', 42, 98000, 8200, '1984-12-19'),

       (17, 'Ayesha', 'Khan', 'ayesha@yahoo.com', 'Hyderabad', 'Telangana', 25, 47000, 1600, '2001-07-14'),

       (18, 'Sahil', 'Sharma', 'sahil@gmail.com', 'Gurgaon', 'Haryana', 34, 69000, 5100, '1992-05-27'),

       (19, 'Aditya', 'Singh', 'aditya@gmail.com', 'Delhi', 'Delhi', 39, 88000, 7300, '1987-09-22'),

       (20, 'Neha', 'Gupta', NULL, 'Pune', 'Maharashtra', 28, 52000, 2200, NULL);
-- ============================================
-- 02. Retrieving Data From a Single Table
-- Total: 30 Questions
-- ============================================
USE store;

-- BASIC
-- 1. Retrieve all records from the customers table.
SELECT *
FROM customers;

-- 2. Retrieve the first name, last name, and emails of all customers.
SELECT customers.first_name, customers.last_name, customers.email
FROM customers;

-- 3. Retrieve all customers who are older than 25.
SELECT *
FROM customers
WHERE age >= 25;


-- 4. Retrieve all customers whose salary is greater than 50000.
SELECT *
FROM customers
WHERE salary >= 50000;

-- 5. Retrieve all customers who are older than 25 and earn more than 50000.
SELECT *
FROM customers
WHERE age >= 25
  AND salary >= 50000;

-- 6. Retrieve all customers who live in Delhi or Mumbai.
SELECT *
FROM customers
WHERE city IN ('Delhi', 'Mumbai');

-- 7. Retrieve all customers who do not live in Delhi.
SELECT *
FROM customers
WHERE city <> 'Delhi';
SELECT *
FROM customers
WHERE city != 'Delhi';

-- 8. Retrieve all customers who live in Delhi, Haryana, or 'Haryana'.
SELECT *
FROM customers
WHERE city IN ('Delhi', 'Haryana', 'Haryana');

-- 9. Retrieve all customers whose points are between 1000 and 3000.
SELECT *
FROM customers
WHERE points BETWEEN 1000 AND 3000;

-- 10. Retrieve all customers and display them from the highest salary to the lowest salary.
SELECT customers.first_name, customers.salary
FROM sql_practice.customers
ORDER BY salary DESC;


-- ============================================
-- MEDIUM
-- ============================================


-- 11. Retrieve all customers whose first name starts with the letter A.
SELECT *
FROM customers
WHERE first_name REGEXP '^A';
SELECT *
FROM customers
WHERE first_name LIKE 'A%';

-- 12. Retrieve all customers whose last name ends with the letter n.
SELECT *
FROM customers
WHERE last_name REGEXP 'N$';
SELECT *
FROM customers
WHERE last_name LIKE '%N';

-- 13. Retrieve all customers whose email address contains "Gmail".
SELECT *
FROM customers
WHERE email LIKE '%GMAIL%';
SELECT *
FROM customers
WHERE email REGEXP 'gmail';

-- 14. Retrieve all customers who do not have an email address.
SELECT *
FROM customers
WHERE email IS NULL;

-- 15. Retrieve all customers who have a birthdate.
SELECT *
FROM customers
WHERE birth_date is not null;

-- 16. Retrieve all customers who are older than 30 and earn more than 60000,
-- or have more than 5000 points.
SELECT *
FROM customers
WHERE age >= 25
  AND salary >= 60000
  AND points >= 5000;


-- 17. Retrieve all customers who live in Delhi, Mumbai, Bangalore, or Hyderabad,
-- and display them from the highest points to the lowest points.
SELECT *
FROM customers
WHERE city IN ('Delhi', 'Mumbai', 'Bangalore', 'Hyderabad')
ORDER BY points DESC;

-- 18. Retrieve all customers whose salary is between 40000 and 80000,
-- and display them from the lowest salary to the highest salary.
SELECT *
FROM customers
WHERE salary BETWEEN 40000 AND 80000
ORDER BY salary ASC;

-- 19. Retrieve the 5 customers with the highest points.
SELECT *
FROM customers
ORDER BY points DESC
LIMIT 5;

-- 20. Retrieve the top 3 customers whose first name starts with S,
-- ordered by salary from highest to lowest.
SELECT *
FROM customers
WHERE first_name LIKE 'S%'
ORDER BY salary DESC
LIMIT 3;


-- ============================================
-- ADVANCED
-- ============================================


-- 21. Retrieve all customers who are between 25 and 40 years old,
-- earn more than 50000,
-- and live in Delhi, Haryana, or Uttar Pradesh.
SELECT *
FROM customers
WHERE age BETWEEN 25 AND 40
  AND salary >= 50000
  AND city IN ('Delhi', 'Haryana', 'Uttar Pradesh');

-- 22. Retrieve all customers who do not belong to Delhi, Maharashtra, or Karnataka,
-- and display them from oldest to youngest.
SELECT *
FROM customers
WHERE city NOT IN ('DELHI', 'Maharashtra', 'Karnataka')
ORDER BY age DESC;

-- 23. Retrieve all customers who have between 2000 and 8000 points,
-- earn more than 60000,
-- have an email address,
-- and do not live in Delhi.
SELECT *
FROM customers
WHERE points BETWEEN 2000 AND 8000
  AND salary >= 60000
  AND email IS NOT NULL
  AND city <> 'DELHI';

-- 24. Retrieve all customers whose first name starts with A,
-- whose last name contains "sh",
-- and whose email contains "Gmail".
SELECT *
FROM customers
WHERE first_name LIKE 'A%'
  AND last_name LIKE '%SH%'
  AND email LIKE '%GMAIL%';

-- 25. Retrieve all customers whose first name starts with A, B, or C.
INSERT INTO customers
(customer_id, first_name, last_name, email, city, state, age, salary, points, birth_date)
VALUES (21, 'Brian', 'Taylor', 'brian@gmail.com', 'Delhi', 'Delhi', 29, 59000, 3400, '1997-04-12'),

       (22, 'Bella', 'Martin', 'bella@yahoo.com', 'Noida', 'Uttar Pradesh', 33, 67000, 5100, '1993-08-25'),

       (23, 'Chris', 'Evans', 'chris@gmail.com', 'Mumbai', 'Maharashtra', 27, 54000, 2900, '1999-01-18'),

       (24, 'Charlie', 'Brown', 'charlie@gmail.com', 'Gurgaon', 'Haryana', 36, 76000, 6300, '1990-06-07');

SELECT *
FROM customers
WHERE first_name LIKE 'A%'
   OR first_name LIKE 'B%'
   OR first_name LIKE 'C%';

SELECT *
FROM customers
WHERE first_name REGEXP '^[ABC]';


-- 26. Retrieve all customers whose email address belongs to either gmail.com or yahoo.com.
SELECT *
FROM customers
WHERE email LIKE '%gmail.com%'
   OR email LIKE '%yahoo.com%';
SELECT *
FROM customers
WHERE email REGEXP 'gmail.com|yahoo.com';

-- 27. Retrieve all customers who do not have an email address or birthdate,
-- and whose salary is greater than 40000.
SELECT *
FROM customers
WHERE email IS NULL
   OR birth_date IS NULL AND salary >= 40000;

-- 28. Retrieve all customers who are between 25 and 45 years old,
-- have a salary between 50000 and 100000,
-- do not have points between 1000 and 3000,
-- and live in Delhi, Haryana, or Uttar Pradesh.
-- Display them by salary from highest to lowest and points from highest to lowest.
SELECT *
FROM customers
WHERE age BETWEEN 25 AND 45
  AND salary BETWEEN 50000 AND 100000
  AND points NOT BETWEEN 1000 and 3000
  AND state IN ('Delhi', 'Haryana', 'Uttar Pradesh')
ORDER BY salary DESC, points DESC;

SELECT *
FROM customers
WHERE age BETWEEN 25 AND 45
  AND salary BETWEEN 50000 AND 100000
  AND points NOT BETWEEN 1000 AND 3000
  AND state IN ('Delhi', 'Haryana', 'Uttar Pradesh')
ORDER BY salary DESC, points DESC;


-- 29. Retrieve the customer with the second-highest salary.
SELECT * FROM customers ORDER BY salary DESC LIMIT 1 OFFSET 1;

-- 30. Retrieve the top 5 customers who are between 25 and 40 years old,
-- earn more than 60000,
-- have between 2000 and 10000 points,
-- live in Delhi, Haryana, or Uttar Pradesh,
-- have an email address,
-- and whose first name starts with A, R, or S.
-- Display them by salary from highest to lowest and points from highest to lowest.
SELECT * FROM customers
WHERE age BETWEEN 25 AND 40
AND salary > 60000
AND points between 2000 AND 10000
AND state IN ('Delhi', 'Haryana', 'Uttar Pradesh')
AND email IS NOT NULL
AND first_name REGEXP '^[ARS]'
ORDER BY salary DESC , points DESC;