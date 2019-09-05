CREATE DATABASE IF NOT EXISTS bookstore;

USE bookstore;


--Creating a table books
CREATE TABLE books (
isbn CHAR(20) PRIMARY KEY,
title VARCHAR(50),
author_id INT,
publisher_id INT,
year_pub CHAR(4),
description TEXT );


--Creaging a table for authors
CREATE TABLE authors
(author_id INT AUTO_INCREMENT PRIMARY KEY,
name_last VARCHAR(50),
name_first VARCHAR(50),
country VARCHAR(50) );


--First entry into the author table
INSERT INTO authors
(name_last, name_first, country)
VALUES('Kafka', 'Franz', 'Czech Republic');


--First entro into the book table
INSERT INTO books
(title, author_id, isbn, year_pub)
VALUES('The Castle', '1', '0805211063', '1998');


--More entries into the book table
INSERT INTO books
(title, author_id, isbn, year_pub)
VALUES('The Trial', '1', '0805210407', '1995'),
('The Metamorphosis', '1', '0553213695', '1995'),
('America', '1', '0805210644', '1995');


--Printing out the content of the book table
SELECT title
FROM books;


--Combining title and author last name (from authors table)
SELECT title, name_last
FROM books
JOIN authors USING (author_id);


--Change the heading to Kafka Books, and only the record with Kafka printed
SELECT title AS 'Kafka Books'
FROM books
JOIN authors USING (author_id)
WHERE name_last = 'Kafka';
