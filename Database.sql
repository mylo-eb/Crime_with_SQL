CREATE TABLE crimes (
    crime_id SERIAL PRIMARY KEY,
    crime_date TIMESTAMP,
    street_name VARCHAR(100),
    crime_type VARCHAR(150),
    crime_description VARCHAR(250),
    location_description VARCHAR(150),
    arrest BOOLEAN,
    domestic BOOLEAN,
    community_id INT,
    latitude NUMERIC,
    longitude NUMERIC
);

CREATE TABLE community (
    area_id INT PRIMARY KEY,
    community_name VARCHAR(250),
    population INT,
    area_size NUMERIC,
    density NUMERIC
);

CREATE TABLE weather (
    weather_date DATE PRIMARY KEY,
    temp_high INT,
    temp_low INT,
    precipitation NUMERIC
);

COPY crimes (crime_date, street_name, crime_type, crime_description, location_description, arrest, domestic, community_id, latitude, longitude)
FROM 'C:\Users\uset\Desktop\sql/chicago_crimes_2021.csv' DELIMITER ',' CSV HEADER;

COPY community (area_id, community_name, population, area_size, density)
FROM 'C:\Users\uset\Desktop\sql/chicago_areas.csv' DELIMITER ',' CSV HEADER;

COPY weather (weather_date, temp_high, temp_low, precipitation)
FROM 'C:\Users\uset\Desktop\sql/chicago_temps_2021.csv' DELIMITER ',' CSV HEADER;
