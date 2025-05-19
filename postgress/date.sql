-- SHOW timezone;

SELECT now();


CREATE table timez(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT into timez VALUES('2025-05-20 12:44:00', '2025-05-20 12:44:00');

SELECT * FROM timez;


SELECT now();

SELECT CURRENT_DATE;

SELECT now()::date;


SELECT now()::time;


SELECT to_char(now(), 'yyyy/mm/dd');


SELECT to_char(now(), 'dd/mm/yyyy');


SELECT to_char(now(), 'DDD');


SELECT CURRENT_DATE - INTERVAL '1 year 2 month';

-- age calculate
SELECT age(CURRENT_DATE, '2004-12-31');


SELECT *, age(CURRENT_DATE, dob) FROM students;


SELECT extract(day from '2025-05-20'::date);

SELECT 1::BOOLEAN;