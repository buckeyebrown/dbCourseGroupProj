/*
* Union SQL Query (UNION)
* Select all the distinct account numbers from the Boat Insurance and Car Insurance relations
*/

SELECT accountNumber FROM CAR_INSURANCE_POLICY
UNION
SELECT accountNumber FROM BOAT_INSURANCE_POLICY

/*
* Intersection SQL Query (INTERSECT)
* Find a total cost that's the same for a Home Insurance Policy and Boat Insurance Policy
*/

SELECT total_cost FROM HOMES
INTERSECT
SELECT Total_cost FROM BOATS

/*
* Difference SQL Query (EXCEPT)
* Select the first name, last name, and ssn of all the clients without a dependent
*/

SELECT fname, lname, ssn FROM CLIENT
EXCEPT
SELECT fname, lname, client_ssn FROM DEPENDENTS

/*
* Division SQL Query
*/

/*
* Aggregation SQL Query
*/

/*
* JOINs SQL Query
* Retrieve all the accounts, along with the car insurance policies and boat insurance policies attached to them.
*/

SELECT * FROM ACCOUNTS
SELECT * FROM CAR_INSURANCE_POLICY
SELECT * FROM BOAT_INSURANCE_POLICY

SELECT * FROM (ACCOUNTS as a INNER JOIN CAR_INSURANCE_POLICY as c ON a.Account_ID = c.accountNumber) INNER JOIN BOAT_INSURANCE_POLICY as b ON b.accountNumber = a.Account_ID
