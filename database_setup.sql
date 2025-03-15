-- Create the world database (run this command from psql)
-- CREATE DATABASE world;

-- Connect to the world database
\c world

-- Create the countries table
CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  country_code CHAR(2) UNIQUE NOT NULL,
  country_name VARCHAR(100) NOT NULL
);

-- Create the visited_countries table
CREATE TABLE visited_countries (
  id SERIAL PRIMARY KEY,
  country_code CHAR(2) UNIQUE NOT NULL
);

-- Import data from countries.csv
-- Run this command from the terminal:
-- psql -U your_username -d world -c "\COPY countries(id, country_code, country_name) FROM 'countries.csv' DELIMITER ',' CSV HEADER;"