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
SELECT lastName, firstName, jobTitle
FROM employees
ORDER BY
  FIELD(jobTitle, 'President', 'VP Marketing',
        'VP Sales', 'Sales Manager (APAC)',
        'Sale Manager (EMEA)', 'Sales Manager (NA)', 'Sales Rep'),
  lastName ASC, firstName ASC;
