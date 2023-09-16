-- count
SELECT COUNT(*)
FROM fake_apps
WHERE price = 0;

-- sum
SELECT SUM (downloads)
FROM fake_apps;

-- max min
SELECT MAX(price)
FROM fake_apps;

-- average
SELECT AVG(price)
FROM fake_apps;

-- round
SELECT ROUND(AVG(price), 2) 
FROM fake_apps;

-- group by
SELECT category,
  price,
  AVG(downloads)
FROM fake_apps
GROUP BY 1, 2;

SELECT category, SUM(downloads)
FROM fake_apps
GROUP BY category;

-- having 
SELECT price, 
  ROUND(AVG(downloads)),
  COUNT(*)
FROM fake_apps
GROUP BY price
HAVING count(name) > 10;