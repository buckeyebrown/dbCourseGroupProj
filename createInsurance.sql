use insurance;

CREATE TABLE INSURANCE_COMPANY
(
	Ins_Company_Name varchar(50) not null,
	Ins_Company_Address varchar(70) not null,
	Website_URL varchar(30),
	PRIMARY KEY(Ins_Company_Name)
)

CREATE TABLE BROKERS
(
	Company_Name varchar(50) not null,
	Company_Address varchar(70) not null,
	Website_URL varchar(30),
	PRIMARY KEY(Company_Name)
)

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

CREATE TABLE CLIENT
(
	fname varchar(30) not null,
	lname varchar(30) not null,
	snn int not null,
	primary_phone_number int,
	primary_email varchar(30),
	address varchar(70),
	dob datetime,
	age int,
	account_number int not null,
	employee_ssn int not null,
	PRIMARY KEY(ssn),
	FOREIGN KEY(employee_ssn),
	REFERENCES EMPLOYEES(emp_ssn)
)