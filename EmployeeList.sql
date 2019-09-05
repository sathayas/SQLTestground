USE classicmodels;

--Contents of the table employees
DESCRIBE employees;

--Employee list, lastname, first name, then title
SELECT lastName, firstName, jobTitle
FROM employees;

--Sorted by last name
SELECT lastName, firstName, jobTitle
FROM employees
ORDER BY lastName ASC;

--Sorted by last name, then first name
SELECT lastName, firstName, jobTitle
FROM employees
ORDER BY lastName ASC, firstName ASC;

--Sorted by title in a specified order, then by names
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
ORDER BY
  FIELD(jobTitle, 'President', 'VP Marketing',
        'VP Sales', 'Sales Manager (APAC)',
        'Sale Manager (EMEA)', 'Sales Manager (NA)', 'Sales Rep'),
  lastName ASC, firstName ASC;

--Only the sales reps
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY officeCode;

--Only the sales reps from office 6
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' AND officeCode=6
ORDER BY officeCode;

--Only the sales reps from offices 1, 2, and 6
SELECT lastName, firstName, jobTitle, officeCode
FROM employees
WHERE jobTitle = 'Sales Rep' AND officeCode in (1,2,6)
ORDER BY officeCode;
