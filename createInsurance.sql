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
	emp_ssn char(9) UNIQUE not null,
	work_phone varchar(10),
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
	ssn char(9) UNIQUE not null,
	primary_phone_number varchar(30),
	primary_email varchar(30),
	address varchar(70),
	dob datetime,
	account_number int not null,
	employee_ssn char(9) not null,
	PRIMARY KEY(ssn),
	FOREIGN KEY(employee_ssn)
	REFERENCES EMPLOYEES(emp_ssn)
)

CREATE TABLE DEPENDENTS
(
	fname varchar(30) not null,
	lname varchar(30) not null,
	dependent_ssn char(9) UNIQUE not null,
	client_ssn char(9) not null,
	dob datetime,
	PRIMARY KEY(dependent_ssn),
	FOREIGN KEY(client_ssn)
	REFERENCES CLIENT(ssn)
)

CREATE TABLE LAWYERS
(
	fname varchar(30) not null,
	lname varchar(30) not null,
	primary_email varchar(30),
	primary_phone varchar(10),
	lawyer_id int not null unique,
	insurance_Company_Name varchar(50) not null,
	PRIMARY KEY(lawyer_id),
	FOREIGN KEY(insurance_Company_Name)
	REFERENCES INSURANCE_COMPANY(Ins_Company_Name)
)

CREATE TABLE ACCOUNTS
(
	Account_ID int not null unique,
	Date_Created datetime,
	Account_Age int,
	client_ssn char(9) not null,
	PRIMARY KEY(Account_ID),
	FOREIGN KEY(client_ssn)
	REFERENCES CLIENT(ssn)
)

CREATE TABLE PAYMENT
(
	transaction_id int not null unique,
	payment_method varchar(15),
	payment_date datetime,
	payment_amount int,
	paid_off varchar(3),
	balance int,
	account_no int not null,
	PRIMARY KEY(transaction_id),
	FOREIGN KEY(account_no)
	REFERENCES Accounts(Account_ID)
)

CREATE TABLE HOME_INSURANCE_POLICY
(
	Policy_Num int not null unique,
	term_price int,
	term_length int,
	active varchar(3),
	startDate datetime,
	policyAge int,
	accountNumber int not null,
	PRIMARY KEY(Policy_Num),
	FOREIGN KEY(accountNumber)
	REFERENCES Accounts(Account_ID)
)

CREATE TABLE CAR_INSURANCE_POLICY
(
	Policy_Num int not null unique,
	term_price int,
	term_length int,
	active varchar(3),
	startDate datetime,
	policyAge int,
	accountNumber int not null,
	PRIMARY KEY(Policy_Num),
	FOREIGN KEY(accountNumber)
	REFERENCES Accounts(Account_ID)
)

CREATE TABLE BOAT_INSURANCE_POLICY
(
	Policy_Num int not null unique,
	term_price int,
	term_length int,
	active varchar(3),
	startDate datetime,
	policyAge int,
	accountNumber int not null,
	PRIMARY KEY(Policy_Num),
	FOREIGN KEY(accountNumber)
	REFERENCES Accounts(Account_ID)
)

CREATE TABLE HOMES
(
	House_ID int not null unique,
	floors int,
	occupants int,
	year_built int,
	house_age int,
	total_cost int,
	liability_deductible int,
	liability_coverage int,
	fire_deductible int,
	fire_coverage int,
	flood_deductible int,
	flood_coverage int,
	home_insurance_policy_num int not null,
	PRIMARY KEY(House_ID),
	FOREIGN KEY(home_insurance_policy_num)
	REFERENCES Home_Insurance_Policy(Policy_Num)
)

CREATE TABLE ACCIDENT_HISTORY
(
	Report_Number int not null unique,
	Accident_Data varchar(100),
	Accident_Date datetime,
	PRIMARY KEY(Report_Number)
)

CREATE TABLE VEHICLES
(
	Vin char(17) not null unique,
	Total_cost int,
	vehicle_year int,
	vehicle_color varchar(30),
	vehicle_make varchar(30),
	vehicle_model varchar(30),
	vehicle_doors int,
	bodily_injury_deductible int,
	bodily_injury_coverage int,
	comprehensive_injury_deductible int,
	comprehensive_injury_coverage int,
	uninsured_motorist_deductible int,
	uninsured_motorist_coverage int,
	collison_injury_deductible int,
	collison_injury_coverage int,
	accident_report_number int not null,
	at_fault varchar(3),
	is_totaled varchar(3),
	damage_cost int,
	vehicles_policy_number int not null,
	PRIMARY KEY(Vin),
	FOREIGN KEY(accident_report_number)
	REFERENCES ACCIDENT_HISTORY(Report_Number),
	FOREIGN KEY(vehicles_policy_number)
	REFERENCES CAR_INSURANCE_POLICY(Policy_Num)
)

CREATE TABLE BOATS
(
	Hin char(12) not null unique,
	Total_cost int,
	bodily_injury_deductible int,
	bodily_injury_coverage int,
	comprehensive_injury_deductible int,
	comprehensive_injury_coverage int,
	collison_injury_deductible int,
	collison_injury_coverage int,
	accident_report_number int not null,
	at_fault varchar(3),
	is_totaled varchar(3),
	damage_cost int,
	boat_insurance_policy_number int not null,
	PRIMARY KEY(Hin),
	FOREIGN KEY(accident_report_number)
	REFERENCES ACCIDENT_HISTORY(Report_Number),
	FOREIGN KEY(boat_insurance_policy_number)
	REFERENCES BOAT_INSURANCE_POLICY(Policy_Num)
)

CREATE TABLE ACCOUNTS_SOLD
(
	emp_ssn char(9) not null unique,
	account_id int not null
	PRIMARY KEY(emp_ssn),
	FOREIGN KEY(account_id)
	REFERENCES ACCOUNTS(Account_ID)
)

CREATE TABLE Policies_Written
(
	Lawyer_ID int not null unique,
	Home_Ins_Policy_Num int,
	Car_Ins_Policy_Num int,
	Boat_Ins_Policy_Num int,
	PRIMARY KEY(Lawyer_ID),
	FOREIGN KEY(Home_Ins_Policy_Num)
	REFERENCES HOME_INSURANCE_POLICY(Policy_Num),
	FOREIGN KEY(Car_Ins_Policy_Num)
	REFERENCES CAR_INSURANCE_POLICY(Policy_Num),
	FOREIGN KEY(Boat_Ins_Policy_Num)
	REFERENCES BOAT_INSURANCE_POLICY(Policy_Num)
)

CREATE TABLE Companies_Brokers
(
	Ins_Company_Name varchar(50) not null,
	Broker_Company_Name varchar(50) not null,
	FOREIGN KEY(Ins_Company_Name)
	REFERENCES INSURANCE_COMPANY(Ins_Company_Name),
	FOREIGN KEY(Broker_Company_Name)
	REFERENCES BROKERS(Company_Name)
)

CREATE TABLE Client_Audit
(
	clientFName varchar(30) not null,
	clientLName varchar(30) not null,
	emp_ssn char(9) not null,
	audit_action varchar(100),
	audit_time datetime
)

CREATE TABLE Past_Clients
(
	clientFname varchar(30) not null,
	clientLname varchar(30) not null,
	ssn char(9) UNIQUE not null,
	primary_phone_number int,
	primary_email varchar(30),
	date_deleted datetime
)
