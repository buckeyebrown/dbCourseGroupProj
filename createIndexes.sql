/*
* Organize the Employees, Lawyers, Clients by their last, then first name
* Organize Dependents by first name.
* Organize payments by the payment date
*/

CREATE INDEX EmpIndex
ON EMPLOYEES (lname, fname)

CREATE INDEX CliIndex
ON CLIENT (lname, fname)

CREATE INDEX DepIndex
ON DEPENDENTS (fname, lname)

CREATE INDEX LawIndex
ON LAWYERS (lname, fname)

CREATE INDEX PayIndex
ON PAYMENT (Payment_date)

