#avg_points by country
SELECT country, ROUND(AVG(points),2) as points FROM wines_csv
GROUP BY country
ORDER BY points desc
LIMIT 5

#count of wines by country
SELECT country, COUNT(*) as ccount FROM wines_csv
GROUP BY country
ORDER BY ccount DESC
LIMIT 10

#avg_points and count by variety
SELECT country, variety, count(variety) as vcount, ROUND(AVG(points),2) as points 
FROM "wines_csv"
GROUP BY country, variety
HAVING count(variety) > 3000
ORDER BY points DESC
LIMIT 10

#prices by variety
SELECT country, variety, count(variety) as vcount, MIN(price) as min_price, MAX(price) as max_price, ROUND(AVG(price),2) as avg_price
FROM "wines_csv"
WHERE price > 1
GROUP BY country, variety
HAVING count(variety) > 1000
ORDER BY avg_price DESC
LIMIT 10

#max_price by winery
SELECT country, winery, MAX(price) as price
FROM wines_csv
GROUP BY country, winery
ORDER BY price desc
LIMIT 5