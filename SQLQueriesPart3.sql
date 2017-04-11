/*
* Union SQL Query (UNION)
* Select the first and last name of Clients who either have a dependent or the employee's last name is higgins.
*/

SELECT fname, lname FROM CLIENT WHERE ssn IN (SELECT client_ssn FROM DEPENDENTS)
UNION
SELECT fname, lname FROM CLIENT WHERE employee_ssn IN (SELECT emp_ssn FROM EMPLOYEES WHERE lname = 'higgins')

/*
* Intersection SQL Query (INTERSECT)
* Select the first and last name of Clients who have a dependent and the employee's last name is higgins.
*/

SELECT fname, lname FROM CLIENT WHERE ssn IN (SELECT client_ssn FROM DEPENDENTS)
INTERSECT
SELECT fname, lname FROM CLIENT WHERE employee_ssn IN (SELECT emp_ssn FROM EMPLOYEES WHERE lname = 'higgins')

/*
* Difference + Intersect SQL Query (EXCEPT)
* Select the Account_ID on all accounts of Clients who don't have a dependent and employee with the last name higgins.
*/

SELECT Account_ID FROM ACCOUNTS
EXCEPT
(SELECT ssn FROM CLIENT WHERE ssn IN (SELECT client_ssn FROM DEPENDENTS)
INTERSECT
SELECT employee_ssn FROM CLIENT WHERE employee_ssn IN (SELECT emp_ssn FROM EMPLOYEES WHERE lname = 'higgins'))


/*
* Division SQL Query
* Select all vehicle models that have not been in an accident
*/

SELECT vehicle_model FROM VEHICLES WHERE NOT EXISTS (SELECT Report_Number FROM ACCIDENT_HISTORY)



/*
* Aggregation SQL Query
* Get the sum of all the employee salaries who make more than $40,000
*/
SELECT SUM(salary) FROM EMPLOYEES WHERE salary > 40000


/*
* JOINs SQL Query
* Retrieve all the accounts, along with the car insurance policies and boat insurance policies attached to them.
*/

SELECT * FROM (ACCOUNTS as a INNER JOIN CAR_INSURANCE_POLICY as c ON a.Account_ID = c.accountNumber) INNER JOIN BOAT_INSURANCE_POLICY as b ON b.accountNumber = a.Account_ID
