-- write your table creation sql here!
CREATE TABLE IF NOT EXISTS covid_vaccinations (
    id SERIAL PRIMARY KEY,
    country VARCHAR(255),
    iso_code VARCHAR(255),
    date DATE,
    total_vaccinations NUMERIC NOT NULL,
    people_vaccinated NUMERIC NOT NULL,
    people_fully_vaccinated NUMERIC NOT NULL,
    daily_vaccinations_raw NUMERIC NOT NULL,
    daily_vaccinations NUMERIC NOT NULL,
    total_vaccinations_per_hundred NUMERIC NOT NULL,
    people_vaccinated_per_hundred NUMERIC NOT NULL,
    people_fully_vaccinated_per_hundred NUMERIC NOT NULL,
    vaccines VARCHAR(255),
    source_name VARCHAR(255),
    source_website VARCHAR(255)
);