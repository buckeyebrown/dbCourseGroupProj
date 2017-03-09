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
	ssn int not null,
	primary_phone_number int,
	primary_email varchar(30),
	address varchar(70),
	dob datetime,
	account_number int not null,
	employee_ssn int not null,
	PRIMARY KEY(ssn),
	FOREIGN KEY(employee_ssn)
	REFERENCES EMPLOYEES(emp_ssn)
)

CREATE TABLE DEPENDENTS
(
	fname varchar(30) not null,
	lname varchar(30) not null,
	dependent_ssn int not null,
	client_ssn int not null,
	dob datetime,
	PRIMARY KEY(dependent_ssnssn),
	FOREIGN KEY(client_ssn)
	REFERENCES CLIENT(ssn)
)

CREATE TABLE LAWYERS
(
	fname varchar(30) not null,
	lname varhcar(30) not null,
	primary_email varchar(30),
	primary_phone varchar(30),
	lawyer_id int not null,
	insurance_Company_Name varchar(50) not null,
	PRIMARY KEY(lawyer_id),
	FOREIGN KEY(insurance_Company_Name)
	REFERENCES INSURANCE_COMPANY(Ins_Company_Name)
)

CREATE TABLE ACCOUNTS
(
	Account_ID int not null,
	Date_Created datetime,
	Account_Age int,
	client_ssn int not null,
	PRIMARY KEY(Account_ID),
	FOREIGN KEY(client_ssn)
	REFERENCES CLIENT(ssn)
)
CREATE TABLE Client_Audit
(
	clientFName varchar(30) not null,
	clientLName varchar(30) not null,
	emp_ssn int not null,
	audit_action varchar(100),
	audit_time datetime
)

CREATE TABLE Past_Clients
(
	clientFname varchar(30) not null,
	clientLname varchar(30) not null,
	ssn int not null,
	primary_phone_number int,
	primary_email varchar(30),
	date_deleted datetime
)