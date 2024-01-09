-- write your queries underneath each number:
 
-- 1. the total number of rows in the database
    SELECT COUNT(*) FROM covid_vaccinations;

-- 2. show the first 15 rows, but only display 3 columns (your choice)
    SELECT country, iso_code, date FROM country_vaccinations LIMIT 15;

-- 3. do the same as above, but chose a column to sort on, and sort in descending order
    SELECT country, iso_code, date, total_vaccinations FROM country_vaccinations ORDER BY total_vaccinations DESC LIMIT 15;

-- 4. add a new column without a default value
    ALTER TABLE covid_vaccinations ADD COLUMN new_column VARCHAR(255);

-- 5. set the value of that new column
    UPDATE covid_vaccinations SET new_column = 'new value';

-- 6. show only the unique (non duplicates) of a column of your choice
    SELECT DISTINCT country FROM covid_vaccinations;

-- 7.group rows together by a column value (your choice) and use an aggregate function to calculate something about that group 
    SELECT country, COUNT(*) FROM covid_vaccinations GROUP BY country;

-- 8. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups
    SELECT country, COUNT(*) FROM covid_vaccinations GROUP BY country HAVING COUNT(*) > 100;

-- 9. find the average covid vaccinations of all countries
    SELECT AVG(total_vaccinations) FROM covid_vaccinations;

-- 10. find the top 5 countries with most vaccinations
    SELECT country, total_vaccinations FROM covid_vaccinations ORDER BY total_vaccinations DESC LIMIT 5;

-- 11. find the top 5 countries with most vaccinations per 100 people
    SELECT country, total_vaccinations_per_hundred FROM covid_vaccinations ORDER BY total_vaccinations_per_hundred DESC LIMIT 5;

-- 12. find the top 5 countries with the least vaccinations
    SELECT country, total_vaccinations FROM covid_vaccinations ORDER BY total_vaccinations ASC LIMIT 5;
