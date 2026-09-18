create database if not exists mall;

USE mall;


CREATE TABLE IF NOT EXISTS payments
(
    payment_id     INT PRIMARY KEY,
    client_id      INT,
    invoice_id     INT,
    payment_date   DATE,
    amount         DECIMAL(9, 2),
    payment_method ENUM ('Credit Card', 'Cash', 'Bank Transfer', 'PayPal')
);


INSERT INTO payments
VALUES (1, 5, 101, '2026-01-15', 1250.50, 'Credit Card'),
       (2, 1, 102, '2026-02-10', 450.00, 'Cash'),
       (3, 3, 103, '2026-02-18', 2200.75, 'Bank Transfer'),
       (4, 2, 104, '2026-03-01', 300.25, 'Credit Card'),
       (5, 4, 105, '2026-03-05', 1500.00, 'PayPal'),
       (6, 1, 106, '2026-03-12', 850.00, 'Bank Transfer');


SELECT *
FROM payments;

USE mall;

-- ==========================================
-- PAYMENTS TABLE PRACTICE QUESTIONS
-- ==========================================

-- Q1: Retrieve a list of all payments where the amount is greater than 1000.
-- (Hint: Use SELECT and WHERE)
-- Your Query:
    select * from payments where amount > 1000;


-- Q2: Find payments where the payment method is either 'Credit Card' or 'PayPal'.
-- (Hint: Use the IN operator)
-- Your Query:
    select * from payments where payments.payment_method in ('Credit Card','PayPal');


-- Q3: Retrieve data for all payments made between '2026-02-01' and '2026-02-28'.
-- (Hint: Use the BETWEEN operator)
-- Your Query:
select *
from payments where payment_date between '2026-02-01' and '2026-02-28';

-- Q4: Find payments where the payment method text contains 'Transfer'.
-- (Hint: Use LIKE '%Transfer%')
-- Your Query:
select *
from payments where payment_method like'%Transfer%';


-- Q5: Sort all payments in descending order based on the amount (highest to lowest).
-- (Hint: Use ORDER BY DESC)
-- Your Query:
    select * from payments order by payments.amount desc ;



-- Q6: Retrieve only the top 3 transactions with the highest amounts.
-- (Hint: Use ORDER BY and LIMIT)
-- Your Query:



-- Q7: Write a query to find the total sum of all payments.
-- (Hint: Use the SUM() aggregate function)
-- Your Query:
select sum(payments.amount) from payments;

USE sql_store;

-- ==========================================================
-- HARD LEVEL PRACTICE QUESTIONS (NO HINTS)
-- ==========================================================

-- Q1: Write a query to find the second-highest payment amount from the payments table.
-- Your Query:
SELECT MAX(amount) AS second_highest
FROM payments
WHERE amount < (
    SELECT MAX(amount)
    FROM payments
);

-- Q2: Find all payments where the amount is strictly greater than the average payment amount of all transactions.
-- Your Query:


-- Q3: Retrieve the total payment amount grouped by each payment_method, but only show those methods where the total sum is greater than 1000.
-- Your Query:


-- Q4: Find the client_id who has made the maximum number of individual payment transactions.
-- Your Query:


-- Q5: List all payments made in the month of March 2026 where the amount is either between 300 and 1000 or greater than 2000.
-- Your Query:


-- Q6: Find the details of the single largest payment transaction for each unique payment_method.
-- Your Query:


-- Q7: Write a query to identify any client_ids that have made transactions using more than one different payment_method.
-- Your Query: