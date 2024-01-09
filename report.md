# Overview

### From Data Visualization Project
1. Name / Title: Covid-19 World Vaccination Progress
2. Link to Data: https://www.kaggle.com/gpreda/covid-world-vaccination-progress
3. Source / Origin: 
	* Author or Creator: Gabriel Preda
	* Publication Date: 03/10/21 
	* Publisher: Kaggle
	* Version or Data Accessed: 02/16/23
4. License: CC BY-NC-SA 4.0

* Format: csv
* Size: 324 KB
* Number of Records: 11338

The data for this project comes from the Kaggle dataset "COVID-19 World Vaccination Progress" created by Gabriel Preda. The dataset is a collection of vaccination data for various countries across the world. The data includes information on the total number of vaccine doses administered, the number of people fully vaccinated, the type of vaccine used, and the date of the last update.

### Fields or Column Headers

* Field/Column 1: country (string)
* Field/Column 2: iso_code (string)
* Field/Column 3: date (string)
* Field/Column 4: total_vaccinations (integer)
* Field/Column 5: people_vaccinated (integer)
* Field/Column 6: people_fully_vaccinated (integer)
* Field/Column 7: daily_vaccinations_raw (integer)
* Field/Column 8: daily_vaccinations (integer)
* Field/Column 9: total_vaccinations_per_hundred (float)


# Table Design
* I will set null values for daily_vaccinations_raw and people_fully_vaccinated, as there may be missing data for those fields
* I will also not permit null values for id, country, iso_code, and date
* Not allowing duplicates for id, country, iso_code, and date
* Set a default value of 0 for daily_vaccinations_raw and people_fully_vaccinated

# Import
Import succeeded without errors

# Database Information
```
postgres=# \l
                              List of databases
   Name    |  Owner   | Encoding | Collate |  Ctype  |   Access privileges
-----------+----------+----------+---------+---------+-----------------------
 homework06| postgres | UTF8     | C.UTF-8 | C.UTF-8 |
 postgres  | postgres | UTF8     | C.UTF-8 | C.UTF-8 |
 template0 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
 template1 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
(4 rows)
```

```
postgres-# psql homework06
postgres-# \dt
                 List of relations
 Schema |        Name         |   Type   |  Owner
--------+---------------------+----------+----------
 public | covid_vaccinations  | table    | postgres
```

# Query Results
### 1. the total number of rows in the database
```	
     | count   
-----+-------
 1   | 26991 
```

### 2. show the first 15 rows, but only display 3 columns (your choice)
```
   country   		| iso_code |    date     
------------------------+----------+------------
 Afghanistan		| AFG      | 2021-02-22
 Albania		| ALB      | 2021-01-10
 Algeria		| DZA      | 2021-01-29
 Andorra		| AND      | 2021-03-17
 Angola			| AGO      | 2021-03-24
 Anguilla		| AIA      | 2021-02-27
 Antigua and Barbuda 	| ATG      | 2021-03-16
 Argentina		| ARG      | 2021-02-23
 Armenia		| ARM      | 2021-01-14
 Australia		| AUS      | 2021-03-17
 Austria		| AUT      | 2021-01-06
 Azerbaijan		| AZE      | 2021-02-08
 Bahamas		| BHS      | 2021-03-02
 Bahrain		| BHR      | 2021-01-10
 Bangladesh		| BGD      | 2021-02-07
(15 rows)
```

### 3. do the same as above, but chose a column to sort on, and sort in descending order
```
   country   	| iso_code |    date     
----------------+----------+------------
 China		| CHN	   | 2021-03-31
 India		| IND      | 2021-03-31
 United States 	| USA      | 2021-03-31
 Brazil		| BRA	   | 2021-03-31
 United Kingdom | GBR      | 2021-03-31
 Turkey 	| TUR      | 2021-03-31
 Indonesia 	| IDN      | 2021-03-31
 Germany 	| DEU      | 2021-03-31
 Russia 	| RUS      | 2021-03-31
 Italy 		| ITA      | 2021-03-31
 Mexico 	| MEX      | 2021-03-31
 France 	| FRA      | 2021-03-31
 Chile		| CHL      | 2021-03-31
 Spain 		| ESP      | 2021-03-31
 Israel 	| ISR      | 2021-03-31
(15 rows)
```

### 6. show only the unique (non duplicates) of a column of your choice
```
        country        
-----------------------
 Albania
 Algeria
 Andorra
 Angola
 Anguilla
 Antigua and Barbuda
 Argentina
 Armenia
 Aruba
 Australia
 Austria
 Azerbaijan
 Bahamas
 Bahrain
 Bangladesh
 Barbados
 Belarus
 
 (prints the rest of the countries)
 ```

 ### 9. find the average covid vaccinations of all countries
```
       avg       
-----------------
 8883193.3422772
(1 row)
```

 ### 10. find the top 5 countries with most vaccinations
```
country         | total_vaccinations
----------------+-------------------
China           | 2.58211e+09
India           | 1.79732e+09
United States   | 4.49789e+08
Brazil          | 2.32129e+08
Indonesia       | 1.52754e+08

```

 ### 11. find the top 5 countries with most vaccinations per 100 people
```
      country       | total_vaccinations_per_hundred 
--------------------+--------------------------------
 Gibraltar          |                       196.27   
 Pitcairn Islands   |                       177.25   
 Saint Helena       |                       163.82   
 Falkland Islands   |                       127.68   
 Nauru              |                       121.29   
```

 ### 12. find the top 5 countries with the least vaccinations

```
  country       | total_vaccinations
----------------+-------------------
 Pitcairn       |                 11
 Saint Helena   |                325
 Nauru          |                688
 Montserrat     |               1600
 Saint Eustatius|               1665

```