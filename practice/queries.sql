ALTER TABLE books ADD COLUMN genre TEXT;

ALTER TABLE books DROP COLUMN genre;

ALTER TABLE books ADD COLUMN in_stock BOOLEAN DEFAULT true;

-- rename table name
ALTER TABLE books RENAME COLUMN author_name TO author;

SELECT * FROM books;

SELECT title, price FROM books;

SELECT * FROM books WHERE in_stock = false;

SELECT * FROM books WHERE author = 'George Orwell';

SELECT title, LENGTH(title) FROM books;

SELECT COUNT(*) FROM books;

SELECT AVG(price) FROM books;

SELECT MAX(price), MIN(price) FROM books;

SELECT * FROM books WHERE price BETWEEN 150 AND 200;

SELECT * FROM books WHERE author LIKE '%Orwell%'; 

SELECT * FROM books WHERE author ILIKE '%orwell%';

SELECT title, author, price FROM books WHERE author IN ('George Orwell', 'J.K. Rowling');


SELECT * FROM books LIMIT 3;
SELECT * FROM books LIMIT 10 OFFSET 5;


UPDATE books SET price = price*1.10;
SELECT * FROM books;

SELECT author, COUNT(*) FROM books GROUP BY author;

SELECT author, COUNT(*) FROM books GROUP BY author HAVING COUNT(*)>1;


ALTER TABLE books DROP CONSTRAINT books_publisher_id_fkey;

ALTER TABLE books ADD CONSTRAINT books_publisher_id_fkey FOREIGN KEY (publisher_id) REFERENCES publishers(id)
ON DELETE CASCADE;

DELETE FROM publishers WHERE id = 3;

SELECT * FROM books;
SELECT * FROM publishers;


SELECT b.title,b.author_name, p.name AS publiher FROM books b INNER JOIN publishers p ON b.publisher_id = p.id;


SELECT b.title, b.author_name, p.name AS publisher From books b LEFT JOIN publishers p ON b.publisher_id = p.id; 

SELECT b.title, b.author_name, p.name AS publisher From books b RIGHT JOIN publishers p ON b.publisher_id = p.id; 

SELECT b.title, b.author_name, p.name AS publisher From books b FULL JOIN publishers p ON b.publisher_id = p.id; 


SELECT CURRENT_DATE;

SELECT EXTRACT(YEAR FROM CURRENT_DATE) AS year,
EXTRACT(MONTH FROM CURRENT_DATE) AS month,
EXTRACT(DAY FROM CURRENT_DATE)  AS day;