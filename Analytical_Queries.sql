SELECT * FROM PROCESSED_USERS;


-- This query finds the top 5 countries with the highest number of users.
SELECT country, COUNT(identifierHash) AS user_count
FROM my_table
GROUP BY country
ORDER BY user_count DESC
LIMIT 5;


-- This query calculates the average account age of users in each country.
SELECT country, AVG(account_age_years) AS avg_account_age
FROM my_table
GROUP BY country
ORDER BY avg_account_age DESC;  

-- This query identifies the top 5 users who have sold the most products.
SELECT identifierHash, productsSold
FROM my_table
ORDER BY productsSold DESC
LIMIT 5;


-- This query shows the distribution of users across different account age groups.
SELECT account_age_group, COUNT(identifierHash) AS user_count
FROM my_table
GROUP BY account_age_group
ORDER BY user_count DESC; 


-- This query calculates the average number of products liked by users, grouped by gender.
SELECT gender, AVG(socialProductsLiked) AS avg_products_liked
FROM my_table
GROUP BY gender;

-- This query finds users who haven't sold any products but have a high product pass rate (over 50%).
SELECT identifierHash, productsSold, productspassrate
FROM my_table
WHERE productsSold = 0 AND productspassrate > 50
ORDER BY productspassrate DESC;


-- This query lists the top languages spoken by the highest number of users.
SELECT language, COUNT(identifierHash) AS user_count
FROM my_table
GROUP BY language
ORDER BY user_count DESC;


-- This query calculates the average seniority (in years) of users in each country.
SELECT country, AVG(seniorityasyears) AS avg_seniority_years
FROM my_table
GROUP BY country
ORDER BY avg_seniority_years DESC;


-- This query counts the number of users who have installed any mobile app.
SELECT COUNT(identifierHash) AS user_count
FROM my_table
WHERE hasanyapp = 1;


- This query identifies the top 5 countries with the highest total number of products listed by users.
SELECT country, SUM(productsListed) AS total_products_listed
FROM my_table
GROUP BY country
ORDER BY total_products_listed DESC
LIMIT 5;
