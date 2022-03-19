-- 1)
SELECT countries.name AS name, languages.language AS language, languages.percentage AS percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.language = "Slovene"
ORDER BY languages.percentage DESC;

-- 2)
SELECT countries.name AS name, COUNT(cities.name) AS cities
FROM countries
LEFT JOIN cities ON countries.id = cities.country_id
GROUP BY countries.name
ORDER BY cities DESC;

-- 3)
SELECT name, population, country_id FROM cities
WHERE cities.population > 500000
AND cities.country_id = (SELECT id FROM countries WHERE countries.name = "Mexico")
ORDER BY population DESC;

-- 4)
SELECT countries.name AS name, languages.language AS language, languages.percentage AS percentage
FROM countries
JOIN languages ON countries.id = languages.country_id
WHERE languages.percentage > 89
ORDER BY languages.percentage DESC;

-- 5)
SELECT name, surface_area, population
FROM countries
WHERE surface_area < 501 
AND population > 100000;

-- 6)
SELECT name, government_form, capital, life_expectancy
FROM countries
WHERE government_form = "Constitutional Monarchy"
AND capital > 200
AND life_expectancy > 75;

-- 7)
SELECT countries.name AS country_name, cities.name AS city_name, cities.district AS district, cities.population AS population
FROM countries
JOIN cities ON countries.id = cities.country_id
WHERE cities.district = "Buenos Aires"
AND cities.population > 500000;

-- 8)
SELECT region, COUNT(name) AS countries
FROM countries
GROUP BY countries.region
ORDER BY countries DESC;


