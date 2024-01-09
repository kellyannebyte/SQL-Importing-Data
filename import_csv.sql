-- write your COPY statement to import a csv here
COPY covid_vaccinations(country, iso_code, date, total_vaccinations, people_vaccinated, people_fully_vaccinated, daily_vaccinations_raw, daily_vaccinations, total_vaccinations_per_hundred, people_vaccinated_per_hundred, people_fully_vaccinated_per_hundred, vaccines, source_name, source_website)

FROM 'country_vaccinations.csv'

DELIMITER ','

CSV HEADER;