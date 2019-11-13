CREATE DATABASE cuisinedb;
USE cuisinedb;
CREATE TABLE FOODS (
    id SERIAL PRIMARY KEY,
    food_name VARCHAR(32) NOT NULL,
    country VARCHAR(64),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE Food_Details (
    id SERIAL PRIMARY KEY,
    country VARCHAR(32) NOT NULL,
    continent VARCHAR(64),
    spice_level VARCHAR(32),
    price INT NOT NULL,
    sold VARCHAR(16) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO FOODS (food_name, country) VALUES ('Pizza', 'Italy');
INSERT INTO FOODS (food_name, country) VALUES ('Curry', 'India');
INSERT INTO FOODS (food_name, country) VALUES ('Sushi', 'Japan');
INSERT INTO FOODS (food_name, country) VALUES ('Poutine', 'Canada');

INSERT INTO Food_Details (country, continent, spice_level,price,sold) VALUES ('Italy', 'Europe', 'Medium', 10.50, 'no');
INSERT INTO Food_Details (country, continent, spice_level,price,sold) VALUES ('India', 'South-East Asia', 'Mild', 16.70, 'yes');
INSERT INTO Food_Details (country, continent, spice_level,price,sold) VALUES ('Japan', 'Asia', 'Medium', 10.51, 'no');
INSERT INTO Food_Details (country, continent, spice_level,price,sold) VALUES ('Canada', 'North America', 'Mild', 11.20, 'yes');
