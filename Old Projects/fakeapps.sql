/* Freeform Project: Fake Apps */
/* Sonny Li */

-- View
SELECT * FROM fake_apps;

-- 1. Return the total number of apps inthe table fake_apps.
SELECT COUNT(*) FROM fake_apps;

-- 2. Return the name, category, and price of the app that has been downloaded the least amount of times.
SELECT name, category, price, MIN(downloads) FROM fake_apps;

-- 3. Return the total number of apps for each category.
SELECT category, COUNT(*) FROM fake_apps GROUP BY category;

-- 4. Return the name and category of the app that has been downloaded the most amount of times.
SELECT name, category, MAX(downloads) FROM fake_apps;

-- 5. Return the name and category of the app that has been downloaded the least amount of times.
SELECT name, category, MIN(downloads) FROM fake_apps;

-- 6. Return the average price for an app in each category.
SELECT category, AVG(price) FROM fake_apps GROUP BY category;

-- 7. Return the average price for an app in each category. Round the averages to two decimal places.
SELECT category, ROUND(AVG(price), 2) FROM fake_apps GROUP BY category;

-- 8. Return the maximum price for an app.
SELECT MAX(price) FROM fake_apps;

-- 9. Return the minimum number of downloads for an app.
SELECT MIN(downloads) FROM fake_apps;

-- 10. Return the total number of downloads for apps that belong to the Games category.
SELECT COUNT(*) FROM fake_apps WHERE category = 'Games';

-- 11. Return the total number of apps that are free.
SELECT COUNT(*) FROM fake_apps WHERE price = 0;

-- 12. Return the total number of apps that cost 14.99.
SELECT COUNT(*) FROM fake_apps WHERE price = 14.99;

-- 13. Return the sum of the total number of downloads for apps that belong to Music category.
SELECT SUM(downloads) FROM fake_apps WHERE category = 'Music';

-- 14. Return the sum of the total number of downloads for apps that belong to the Business category.
SELECT SUM(downloads) FROm fake_apps WHERE category = 'Business';

-- 15. Return the name of each category with the total number of apps that belong to it.
SELECT category, COUNT(*) from fake_apps GROUP BY category;

-- 16. Return the price and average number of downloads grouped by price.
SELECT price, AVG(downloads) from fake_apps GROUP BY price;

-- 17. Return the price and average number of downloads grouped by price. Round the averages to the nearest integer.
SELECT price, ROUND(AVG(downloads),0) from fake_apps GROUP BY price;

-- 18. Return the name and category and price of the most expensive app for each category.
SELECT name, category, MAX(price) FROM fake_apps GROUP BY category;

-- 19. Return the total number of apps whose name begin with the letter 'A'.
SELECT COUNT(*) FROM fake_apps WHERE name LIKE 'A%';

-- 20. Return the total number of downloads for apps belonging to the Sports or Health & Fitness category.
SELECT SUM(downloads) FROM fake_apps WHERE category = 'Sports' OR category = 'Health & Fitness';
