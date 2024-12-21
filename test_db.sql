-- Create the database
CREATE DATABASE test1_db;

-- Switch to the new database
\c test1_db

-- Create a table with 5 fields
CREATE TABLE IF NOT EXISTS test_table1 (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100),
    date_of_birth DATE
);

-- Insert 10 random records
INSERT INTO test_table1 (name, age, email, date_of_birth) VALUES 
('Alice', 24, 'alice@example.com', '1997-01-15'),
('Bob', 30, 'bob@example.com', '1989-05-22'),
('Charlie', 22, 'charlie@example.com', '2000-03-10'),
('Diana', 28, 'diana@example.com', '1995-07-08'),
('Ethan', 35, 'ethan@example.com', '1986-12-03'),
('Fiona', 21, 'fiona@example.com', '2002-08-18'),
('George', 40, 'george@example.com', '1981-04-29'),
('Hannah', 26, 'hannah@example.com', '1997-11-06'),
('Isaac', 33, 'isaac@example.com', '1990-09-14'),
('Julia', 29, 'julia@example.com', '1994-06-25'),
('Tod', 28,'todboehly@example.com','1996-04-03');

-- To verify the data was inserted correctly
SELECT * FROM test_table1;

-- Retrieve member ages
SELECT name, 
       AGE(CURRENT_DATE, date_of_birth) AS current_age 
FROM test_table1;
