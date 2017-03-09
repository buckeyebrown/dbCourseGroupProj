use insurance;

CREATE TABLE EMPLOYEES
(
	emp_ssn int not null,
	work_phone int,
	salary int,
	fname varchar(30) not null,
	lname varchar(30) not null,
	broker_company varchar(50),
	PRIMARY KEY(emp_ssn)
)