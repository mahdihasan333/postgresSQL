CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
VALUES
    ('John', 'Doe', 20, 'A+', 'Math', 'john.doe@example.com', '2004-05-12', 'O+', 'USA'),
    ('Jane', 'Smith', 22, 'B', 'Physics', 'jane.smith@example.com', '2002-03-25', 'A-', 'UK'),
    ('Robert', 'Brown', 21, 'A', 'Chemistry', 'robert.brown@example.com', '2003-08-19', 'B+', 'Canada'),
    ('Emily', 'Davis', 19, 'C+', 'Biology', 'emily.davis@example.com', '2005-11-07', 'AB-', 'Australia'),
    ('Michael', 'Johnson', 23, 'B-', 'Math', 'michael.johnson@example.com', '2001-01-14', 'O-', 'USA'),
    ('Sarah', 'Wilson', 20, 'A-', 'English', 'sarah.wilson@example.com', '2004-06-30', 'A+', 'India'),
    ('David', 'Lee', 18, 'C', 'Computer', 'david.lee@example.com', '2006-09-22', 'B-', 'South Korea'),
    ('Laura', 'Garcia', 21, 'A+', 'History', 'laura.garcia@example.com', '2003-02-10', 'O+', 'Spain'),
    ('James', 'Martinez', 22, 'B+', 'Math', 'james.martinez@example.com', '2002-12-03', 'AB+', 'Mexico'),
    ('Linda', 'Anderson', 20, 'A', 'Physics', 'linda.anderson@example.com', '2004-07-15', 'B+', 'USA'),
    ('Daniel', 'Thomas', 19, 'B-', 'Biology', 'daniel.thomas@example.com', '2005-04-17', 'A-', 'UK'),
    ('Olivia', 'Taylor', 22, 'A+', 'Computer', 'olivia.taylor@example.com', '2002-10-29', 'O-', 'Germany'),
    ('Matthew', 'Hernandez', 20, 'C+', 'Chemistry', 'matthew.hernandez@example.com', '2004-01-06', 'B+', 'Brazil'),
    ('Sophia', 'Moore', 21, 'A', 'English', 'sophia.moore@example.com', '2003-09-14', 'AB+', 'France'),
    ('Anthony', 'Jackson', 23, 'B+', 'History', 'anthony.jackson@example.com', '2001-05-05', 'O-', 'USA'),
    ('Chloe', 'White', 18, 'C-', 'Math', 'chloe.white@example.com', '2006-12-27', 'A-', 'Australia'),
    ('Joshua', 'Lopez', 20, 'A', 'Computer', 'joshua.lopez@example.com', '2004-03-02', 'B+', 'Colombia'),
    ('Grace', 'Gonzalez', 19, 'B', 'Physics', 'grace.gonzalez@example.com', '2005-08-11', 'O+', 'Argentina'),
    ('Andrew', 'Clark', 21, 'A+', 'Biology', 'andrew.clark@example.com', '2003-06-20', 'A+', 'Canada'),
    ('Ella', 'Lewis', 22, 'B-', 'English', 'ella.lewis@example.com', '2002-04-08', 'AB-', 'USA');

SELECT email FROM students;

-- Ascending
SELECT * FROM students ORDER BY first_name ASC


-- Descending
SELECT * FROM students ORDER BY first_name DESC


SELECT DISTINCT country from students;

SELECT DISTINCT blood_group from students;


-- data filtering

-- Select students from the USA
-- Select students with 'A' grade in Physics
-- Select students with a specific blood group ('A+')
-- Select students from the USA or from Australia
-- Select students from the USA or from Australia and the age is 20
-- Select students with a grade of 'A' or 'B' in Math or Physics:

-- Select students older than 20

SELECT * FROM students
    WHERE grade = 'A';

SELECT * FROM students
    WHERE grade = 'A' AND course = 'Physics';

SELECT * from students
    WHERE blood_group = 'A+';

SELECT * from students
    WHERE country = 'USA' OR country = 'Australia'

SELECT * from students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

SELECT * FROM students
    WHERE age > 20;


SELECT * FROM students
    WHERE age > 20 AND course = 'History';

SELECT * FROM students
    WHERE age != 20;

SELECT * FROM students
    WHERE country <> 'USA';


SELECT * FROM students;

-- upperCase
SELECT upper(first_name) as first_name_in_upper_case , * from students;

-- concat
SELECT concat(first_name, ' ', last_name) from students;



SELECT length(first_name) from students;

/*
    @Scalar functions
 UPPER() Converts a string to uppercase.
 LOWER() Converts a string to lowercase.
 CONCAT() Concatenates two or more strings.
 LENGTH() Returns the number of characters in a string.
 
    @Aggregate functions
 AVG() Calculate the average of a set of values.
 MAX() Returns the max value in a set.
 MIN() Returns the minimum value in a set.
 SUM Calculates the sum of values in a set.
 COUNT() Counts the number of rows in a set.

*/


SELECT avg(age) from students;

SELECT max(age) from students;

SELECT min(age) from students;

SELECT sum(age) from students;

SELECT count(*) from students;


SELECT max(length(first_name)) FROM students;



-- NOT
SELECT * from students
    WHERE NOT country = 'USA'


-- SELECT NULL = 1


SELECT * from students
    WHERE email is NOT NULL;


SELECT * from students


-- SELECT COALESCE(NULL, NULL, 5)


SELECT COALESCE(email, 'Email not provided') as "Email", blood_group, first_name from students;



--  SELECT * FROM students WHERE country = 'USA' or country = 'Canada' or country = 'UK';
 SELECT * FROM students WHERE country IN('USA', 'UK', 'Canada');
 SELECT * FROM students WHERE country NOT IN('USA', 'UK', 'Canada');


 SELECT * FROM students
    WHERE age BETWEEN 19 and 23


 SELECT * FROM students
    WHERE dob BETWEEN '2000-01-01' and '2005-01-01' ORDER BY dob;



SELECT * from students
    WHERE first_name LIKE '%a';

SELECT * from students
    WHERE first_name LIKE 'A%';

SELECT * from students
    WHERE first_name LIKE 'A%';

SELECT * from students
    WHERE first_name ILIKE '%a';

SELECT * from students
    WHERE first_name ILIKE 'A%';

SELECT * from students
    WHERE first_name ILIKE 'A%';