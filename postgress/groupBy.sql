SELECT * FROM students;

SELECT country, count(*), avg(age) from students
    GROUP BY country


SELECT country, avg(age) from students
    GROUP BY country
        HAVING avg(age) > 20



-- Filter Groups Using HAVING to Show Only Countries With Average Age Above 22
SELECT country, avg(age) from students
    GROUP BY country
        HAVING avg(age) > 22



-- Count Students Born in Each Year
SELECT extract(year from dob) as birth_year, count(*)
    FROM students
    GROUP BY birth_year