-- Comments in SQL Start with dash-dash --
--1--
SELECT app_name FROM analytics WHERE id = 1880;

--2--
SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

--3--
SELECT category, COUNT(id) FROM analytics GROUP BY category;

--4--
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;

--5--
SELECT app_name FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;

--6--
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER by AVG(rating) desc;

--7--
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price desc LIMIT 1;

--8--
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating desc;

--9--
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 10000;

--10--
SELECT app_name, reviews, price FROM analytics WHERE price BETWEEN 0.10 AND 1 ORDER BY reviews desc LIMIT 10;

--11--
SELECT app_name, last_updated FROM analytics ORDER BY last_updated asc LIMIT 1;

--12--
SELECT app_name, price FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);

--13--
SELECT SUM(reviews) FROM analytics;

--14--
SELECT category, COUNT(id) AS app_count FROM analytics GROUP BY category HAVING COUNT(id) > 300;

--15--
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics WHERE min_installs > 100000 AND min_installs/reviews = (SELECT MAX(min_installs/reviews) FROM analytics WHERE min_installs > 100000);