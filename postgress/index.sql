-- Active: 1747474886536@@127.0.0.1@5432@ph2
SELECT * from  employees;


EXPLAIN ANALYSE
SELECT * FROM employees WHERE last_name = 'genin'

EXPLAIN ANALYSE
SELECT * from employees WHERE emp_no = '10004';

CREATE INDEX idx_employees_last_name
on employees (last_name);

SHOW data_directory;