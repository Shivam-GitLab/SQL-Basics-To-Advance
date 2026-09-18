-- Q1: Find the top 5 highest payment amounts, excluding payments of exactly 0.
    SELECT * FROM payments WHERE amount <> 0 ORDER BY payments.amount DESC LIMIT 2;

-- Q2: Find customers whose last_name starts with A, B, or C, contains at least one 'e', and is not NULL.
   SELECT * FROM
-- Q3: Find customers from California, Texas, Florida, or New York, excluding customers whose first_name starts with 'J'.

-- Q4: Find payments with amount between 5 and 10, excluding exactly 5 and 10. Sort highest to lowest.

-- Q5: Find the 10 largest payments where amount is greater than 2, customer_id is between 10 and 100, and amount is not 5.99.

-- Q6: Find customers whose first_name starts with M, ends with a and has exactly 5 characters.

-- Q7: Find customers whose last_name contains either 'son' or 'man', but does not start with S.

-- Q8: Find customers whose first_name starts with a vowel and whose last_name does not start with a vowel.

-- Q9: Find customers whose address_id is 5, 10, 15, 20, or 25, excluding first names containing 'a'.

-- Q10: Find the 5 smallest payment amounts greater than 1, excluding amounts between 5 and 7.

-- Q11: Find customers whose last_name contains exactly one 'a', starts with M or N, and is not NULL.

-- Q12: Find payments where amount is greater than 3 and less than 10, and customer_id is not between 50 and 100.

-- Q13: Find customers whose first_name has exactly 4 characters, starts with A, and whose last_name contains 'r'.

-- Q14: Find the 3 highest payments made by customers with customer_id 1, 5, 10, 15, 20, 25, or 30, excluding payments below 2.

-- Q15: Find customers whose first_name starts with a vowel, contains exactly one 'a', and does not end with 'n'.

-- Q16: Find the 10 highest payments where amount is between 2 and 10, customer_id is not between 20 and 50, and amount is not 5.99.

-- Q17: Find customers whose last_name starts with a letter from A to M, contains either 'e' or 'i', and does not end with 's'.

-- Q18: Find customers whose first_name is John, Mary, Robert, or Linda, but whose last_name does not contain 'a'.

-- Q19: Find the 7 highest payments where amount is greater than 1, not between 4 and 6, customer_id is between 1 and 200, and customer_id is not 10, 20, or 30.

-- Q20: Find customers whose first_name starts with a vowel, has exactly 5 characters, contains 'r', does not end with 'y', and last_name is not NULL.


-- https://www.eisele.net/

-- https://www.scribd.com/document/942321899/Agents-Book