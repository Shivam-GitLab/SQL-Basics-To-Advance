USE ecommerce_db;
-- Q1. Retrieve all users from the users table.
select *
from users;

-- Q2. Retrieve the first name, last name, and email of all users.
select users.first_name, users.last_name, users.email
from users;

-- Q3. Retrieve all active users.
select *
from users
where status = 'ACTIVE';

-- Q4. Retrieve all users from Delhi.
select *
from users
where city = 'Delhi';

-- Q5. Retrieve all users from Delhi or Noida.
select *
from users
where city in ('Delhi', 'Noida');

-- Q6. Retrieve all users whose first name starts with 'A'.
select *
from users
where first_name like 'A%';
select *
from users
where first_name regexp '^A';

-- Q7. Retrieve all users whose last name ends with 'a'.
select *
from users
where last_name like '%a';
select *
from users
where last_name regexp 'a$';

-- Q8. Retrieve all users whose email contains 'Gmail'.
select *
from users
where email like '%gmail%';
select *
from users
where email regexp 'gmail';

-- Q9. Retrieve all users created after January 1, 2025.
select *
from users
where created_at > '2025-01-01';

-- Q10. Retrieve all users created before January 1, 2025.
select *
from users
where created_at < '2025-01-01';

-- Q11. Retrieve all users whose status is not 'ACTIVE'.
select *
from users
where status != 'ACTIVE';
select *
from users
where status <> 'ACTIVE';

-- Q12. Retrieve all unique cities from the users table.
select distinct users.city
from users;

-- Q13. Retrieve all unique states from the users table.
select distinct users.state
from users;

-- Q14. Retrieve all users from Uttar Pradesh.
select *
from users
where state = 'Uttar Pradesh';

-- Q15. Retrieve all users from either Haryana, Bihar, or Gujarat.
select *
from users
where state in ('Haryana', 'Bihar', 'Gujarat');

-- Q16. Retrieve all users whose first name contains the letter 'a'.
select *
from users
where first_name like '%a%';

-- Q17. Retrieve all users whose first name has exactly 5 characters.
select *
from users
where first_name like '_____';

-- Q18. Retrieve all users whose city starts with 'D'.
select *
from users
where city like 'D%';

-- Q19. Retrieve all users whose city contains 'pur'.
select *
from users
where city like '%pur%';

-- Q20. Retrieve all users sorted by first name in ascending order.
select *
from users
order by first_name;

-- Q21. Retrieve all users sorted by created_at from newest to oldest.
select *
from users
order by created_at desc;

-- Q22. Retrieve the 5 most recently registered users.
select *
from users
order by created_at desc
limit 5;

-- Q23. Retrieve the 5 oldest registered users.
select *
from users
order by created_at
limit 5;

-- Q24. Retrieve all active users from Uttar Pradesh.
select *
from users
where status = 'active'
  and state = 'Uttar Pradesh';

-- Q25. Retrieve all users from Delhi whose status is ACTIVE.
select *
from users
where status = 'active'
  and state = 'Delhi';


-- Q26. Retrieve all users whose status is either ACTIVE or BLOCKED.
select *
from users
where status = 'ACTIVE'
   or status = 'BLOCKED';

-- Q27. Retrieve all users whose status is neither ACTIVE nor BLOCKED.
select *
from users
where status <> 'active'
  and status = 'blocked';

select *
from users
WHERE status NOT IN ('ACTIVE', 'BLOCKED');;

-- Q28. Retrieve the total number of users.
select count(*)
from users;

-- Q29. Retrieve the total number of active users.
select count(*)
from users
where status = 'ACTIVE';

-- Q30. Retrieve the total number of inactive users.
select count(*)
from users
where status = 'INACTIVE';

-- Q31. Retrieve the total number of users from each state.
SELECT state, COUNT(*) AS total_users
FROM users
GROUP BY state;

-- Q32. Retrieve the total number of users from each city.
select users.city, count(*) AS Total_Number
from users
group by city;

-- Q33. Retrieve the number of users for each status.
select users.status , count(*) AS To_No from users group by status;

-- Q34. Retrieve states having more than one user.


-- Q35. Retrieve cities having more than one user.

-- Q36. Retrieve users whose first name starts with 'A' and status is ACTIVE.

-- Q37. Retrieve users whose first name starts with 'A' or city is Delhi.

-- Q38. Retrieve users from Uttar Pradesh whose status is ACTIVE.

-- Q39. Retrieve users created between January 1, 2024 and December 31, 2024.

-- Q40. Retrieve users whose first name is either Amit, Rahul, or Priya.

-- Q41. Retrieve users whose city is not Delhi.

-- Q42. Retrieve users whose state is not Uttar Pradesh.

-- Q43. Retrieve users whose phone number starts with '9876'.

-- Q44. Retrieve users whose email ends with '@gmail.com'.

-- Q45. Retrieve the oldest registered user.

-- Q46. Retrieve the newest registered user.

-- Q47. Retrieve the number of users registered in 2024.

-- Q48. Retrieve the number of users registered in 2025.
SELECT COUNT(*) AS total_users
FROM users
WHERE YEAR(created_at) = 2025;

-- Q49. Retrieve the number of users in each year based on created_at.
select YEAR(users.created_at) , count(*) AS T_No from users group by YEAR(users.created_at) order by YEAR(created_at);

-- Q50. Retrieve the users whose first name has the letter 'i' as the second character.
select * from users where first_name like '_i%';