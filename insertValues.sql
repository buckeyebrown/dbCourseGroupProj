/*
* INSURANCE COMPANY INSERTS
*/

INSERT INTO INSURANCE_COMPANY (Ins_Company_Name, Ins_Company_Address,Website_URL) 
values ('Humana', '123 Sunshine Street Columbus 43210', 'www.humana.com');

INSERT INTO INSURANCE_COMPANY (Ins_Company_Name, Ins_Company_Address,Website_URL) 
values ('BestInsurance', '321 Happy Street Columbus 43210', 'www.bestinsurance.com');

INSERT INTO INSURANCE_COMPANY (Ins_Company_Name, Ins_Company_Address,Website_URL) 
values ('RightInsurance', '321 Wonderful Avenue Columbus 43210', 'www.rightinsurance.com');

/*
* INSURANCE BROKER INSERTS
*/

INSERT INTO BROKERS (Company_Name, Company_Address,Website_URL) 
values ('Tims brokerage', '123 Doughnut Street Columbus 43210', 'www.timsbrokerage');

INSERT INTO BROKERS (Company_Name, Company_Address,Website_URL) 
values ('best brokers', '123 Cake Street Columbus 43210', 'www.bestbrokers');

INSERT INTO BROKERS (Company_Name, Company_Address,Website_URL) 
values ('Sallys brokerage', '123 Petunia Avenue Columbus 43210', 'www.sallysbrokerage');

/*
* EMPLOYEE INSERTS
*/

INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('234332243', '1234567891', '40000', 'hannah', 'higgins', 'Tims brokerage');

INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('123343232', '3214567891', '50000', 'samantha', 'jones', 'best brokers');

INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('313343232', '3217027891', '90000', 'alexa', 'newman', 'Sallys brokerage');


INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('223343232', '3254567891', '50000', 'sam', 'jennings', 'best brokers');

INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('432343232', '3337027891', '90000', 'alex', 'Obama', 'Sallys brokerage');

INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('555343232', '4447027891', '100000', 'Father', 'Radcliffe', 'Sallys brokerage');


INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('666332243', '6664567891', '32000', 'hannah', 'Bakura', 'Tims brokerage');

INSERT INTO EMPLOYEES (emp_ssn, work_phone, salary, fname, lname, broker_company) 
values ('777332243', '7774567891', '3000', 'DeQuan', 'He', 'Tims brokerage');


/*
* CLIENT INSERTS
*/

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, primary_email, Address, DOB, employee_ssn, account_number) 
values ('Mike', 'Smith', '123111232', 233, 'mike.smith@gmail.com', '101 Mike Smith Way Columbus, OH 43201', '12/17/1970', '234332243', 55);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Jeffrey', 'Brown', '123343232', 33, 'mrperson@gmail.com', '101 hello Way Columbus, OH 43201', '05/07/1971', '234332243', 56);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Adam', 'Morakis', '433343232', 32, 'morakis@gmail.com', '123 Edison Street Columbus, OH 43201', '06/07/1971', '313343232', 57);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Jerry', 'Oswald', '413343232', 32, 'Oswald@gmail.com', '123 Pinewillow Street Columbus, OH 43201', '06/07/1922', '313343232', 58);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Jeffrey', 'Polin', '523343232', 33, 'mrperson54@gmail.com', '101 Savvy Street Columbus, OH 43201', '05/23/1971', '123456789', 59);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Jim', 'Chan', '663343232', 32, 'Chan@gmail.com', '123 PineMeadow Street Columbus, OH 43201', '12/07/1922', ‘223343232', 60);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Paolo', 'Saon', '883343232', 33, 'mrpersonwed@gmail.com', '112 hello Way Columbus, OH 43201', '07/07/1971', '234332243', 61);
INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, employee_ssn, account_number) 
values ('Barack', 'Clinton', '993343232', 32, 'Chan3445@gmail.com', '222 PineMeadow Street Columbus, OH 43201', '12/07/1922', ‘223343232', 62);





/*
* DEPENDENT INSERTS
*/

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB) 
values ('Sandy', 'Smith', '123118462', ‘883343232', '11/18/1970');

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB) 
values ('Mark', 'Edison', '953118462', '123111232', '11/18/1980');

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB) 
values ('Halle', 'Berry', '531118462', '123343232', '11/14/1990');

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB) 
values ('Brad', 'Pitt', '531118952', '663343232', '11/11/1990');



/*
* LAWYER INSERTS
*/

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Dwane', 'Carter', 'carter@gmail.com', '9195349624', '863563', 'Humana');

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Aubrey', 'Graham', 'graham@gmail.com', '9193549624', '103563', 'Humana');

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Michael', 'Jordan', 'jordan@gmail.com', '8621249624', '962563', 'Humana');

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Nicki', 'Minaj', 'minaj@gmail.com', '4259219224', '123663', 'Humana');


/*
* ACCOUNTS INSERTS
*/

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account_Age, client_ssn) 
values ('326781', '01/10/1994', '22', '123111232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account_Age, client_ssn) 
values ('221781', '01/10/1995', '21', '123343232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account_Age, client_ssn) 
values ('117815', '02/10/1995', '21', '313343232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account_Age, client_ssn) 
values ('447815', '02/10/1996', '20', '663343232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account_Age, client_ssn) 
values ('654321', '02/10/1997', '19', '523343232');



/*
* PAYMENT INSERTS
*/

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no) 
values ('64224', 'Credit', '03/11/2000', '100', 'y', '600', '326781');

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no) 
values ('64225', 'Credit', '03/11/2001', '200', 'y', '800', '326781');

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no) 
values ('64226', 'Credit', '03/11/2002', '300', 'y', '900', '221781');

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no) 
values ('64227', 'Credit', '03/11/2003', '400', 'y', '100', '117815');


/*
* HOME INSURANCE POLICY INSERTS
*/

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('1', '1000', '5', 'y', '03/08/2014', '3', '326781');

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('2', '5000', '10', 'y', '03/01/2010', '7', '326781');

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('3', '6000', '10', 'y', '03/10/2015', '2', '221781')

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('4', '3000', '5', 'y', '03/10/2013', '4', '117815')

/*
* CAR INSURANCE POLICY INSERTS
*/

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('1', '2000', '5', 'y', '03/08/2014', '3', '117815');

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber)  
values ('2', '3000', '10', 'y', '03/01/2010', '7', '117815');

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('3', '4000', '10', 'y', '03/10/2015', '2', '221781')

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('4', '5000', '5', 'y', '03/10/2013', '4', '326781')

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('13', '5000', '5', 'y', '03/10/2013', '4', '447815')

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('13', '5000', '5', 'y', '03/10/2013', '4', '654321')



/*
* Boat INSURANCE POLICY INSERTS
*/

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('1', '8000', '5', 'y', '03/08/2014', '3', '221781');

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber)  
values ('2', '7000', '10', 'y', '03/01/2010', '7', '326781');

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('3', '6000', '10', 'y', '03/10/2015', '2', '326781')

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('4', '2000', '5', 'y', '03/10/2013', '4', '117815')


INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('13', '2000', '5', 'y', '03/10/2013', '4', '447815')

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, startDate, policyAge, accountNumber) 
values ('14', '2000', '5', 'y', '03/10/2013', '4', '654321')


/*
* HOME INSERTS
*/

INSERT INTO HOMES(House_ID, floors, occupants, year_built, house_age, total_cost, liability_deductible, liability_coverage, fire_deductible, fire_coverage, flood_deductible, flood_coverage, home_insurance_policy_num)
values ('55', '2', '2', '1920', '97', '800000', '10000', '500000', '10000', '500000', '10000', '500000', '1')

INSERT INTO HOMES(House_ID, floors, occupants, year_built, house_age, total_cost, liability_deductible, liability_coverage, fire_deductible, fire_coverage, flood_deductible, flood_coverage, home_insurance_policy_num)
values ('53', '5', '4', '1960', '57', '300000', '4000', '60000', '3000', '70000', '2000', '20000', '2')

INSERT INTO HOMES(House_ID, floors, occupants, year_built, house_age, total_cost, liability_deductible, liability_coverage, fire_deductible, fire_coverage, flood_deductible, flood_coverage, home_insurance_policy_num)
values ('50', '5', '3', '1970', '47', '500000', '4000', '60000', '3000', '70000', '2000', '20000', '3')

/*
* ACCIDENT HISTORY INSERTS
*/

INSERT INTO ACCIDENT_HISTORY(Report_Number, Accident_Data, Accident_Date)
values ('400', 'Owner injured another passenger with her truck.', '12/17/2016')

INSERT INTO ACCIDENT_HISTORY(Report_Number, Accident_Data, Accident_Date)
values ('402', 'Non injury, owner ran into a flag pole.', '12/18/2016')

INSERT INTO ACCIDENT_HISTORY(Report_Number, Accident_Data, Accident_Date)
values ('401', 'Non injury, owner got into a fender bender.', '12/31/2016')

INSERT INTO ACCIDENT_HISTORY(Report_Number, Accident_Data, Accident_Date)
values ('500', 'Crashed into a harbor.', '06/17/2016')

INSERT INTO ACCIDENT_HISTORY(Report_Number, Accident_Data, Accident_Date)
values ('502', 'DUI boat collision', '07/18/2016')

INSERT INTO ACCIDENT_HISTORY(Report_Number, Accident_Data, Accident_Date)
values ('501', 'Non injury, owner got into a fender bender with another boat', '08/31/2016')


/*
* Vehicles
*/
INSERT INTO VEHICLES(Vin, Total_cost, vehicle_year, vehicle_make, vehicle_model, vehicle_doors, bodily_injury_deductible, bodily_injury_coverage, comprehensive_injury_deductible, comprehensive_injury_coverage, uninsured_motorist_deductible, uninsured_motorist_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, vehicles_policy_number)
values('11111222223333344', '13000', '1994', 'Mazda', 'Mazda6', '4', '10000', '5000000', '600', '30000', '500', '50000', '300', '30000', '400', 'yes', 'yes', '500000', '2')

INSERT INTO VEHICLES(Vin, Total_cost, vehicle_year, vehicle_make, vehicle_model, vehicle_doors, bodily_injury_deductible, bodily_injury_coverage, comprehensive_injury_deductible, comprehensive_injury_coverage, uninsured_motorist_deductible, uninsured_motorist_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, vehicles_policy_number)
values('77711222223333344', '13000', '1996', 'Honda', 'Accord', '4', '14000', '1000000', '500', '30000', '501', '50000', '300', '30000', NULL, 'yes', 'yes', '500000', '1')

INSERT INTO VEHICLES(Vin, Total_cost, vehicle_year, vehicle_make, vehicle_model, vehicle_doors, bodily_injury_deductible, bodily_injury_coverage, comprehensive_injury_deductible, comprehensive_injury_coverage, uninsured_motorist_deductible, uninsured_motorist_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, vehicles_policy_number)
values('7771122222333DD44', '13000', '1998', 'Honda', 'Civic', '4', '13000', '2000000', '500', '30000', '502', '50000', '300', '30000', '400', 'yes', 'yes', '500000', '3')

INSERT INTO VEHICLES(Vin, Total_cost, vehicle_year, vehicle_make, vehicle_model, vehicle_doors, bodily_injury_deductible, bodily_injury_coverage, comprehensive_injury_deductible, comprehensive_injury_coverage, uninsured_motorist_deductible, uninsured_motorist_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, vehicles_policy_number)
values('8971122222333DD44', '13000', '1998', 'Honda', 'Ultra', '4', '13000', '2000000', '500', '30000', '502', '50000', '300', '30000', '23', 'No', 'No', '0', '4')

INSERT INTO VEHICLES(Vin, Total_cost, vehicle_year, vehicle_make, vehicle_model, vehicle_doors, bodily_injury_deductible, bodily_injury_coverage, comprehensive_injury_deductible, comprehensive_injury_coverage, uninsured_motorist_deductible, uninsured_motorist_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, vehicles_policy_number)
values('6661122222333DD44', '13000', '1998', 'Toyota', 'Winchester', '4', '13000', '2000000', '500', '30000', '502', '50000', '300', '30000', '23', 'No', 'No', '0', '4')


/*
* Boats
*/

INSERT INTO BOATS(Hin, Total_cost, bodily_injury_deductible, bodily_injury_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, boat_insurance_policy_number)
values('98734453HH22', '500000', '2000', '70000', '100', '300000', '500', 'no', 'no', '0', '2')

INSERT INTO BOATS(Hin, Total_cost, bodily_injury_deductible, bodily_injury_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, boat_insurance_policy_number)
values('987FFFF3HH22', '50000', '200', '7000', '100', '300000', '501', 'no', 'no', '0', '4')

INSERT INTO BOATS(Hin, Total_cost, bodily_injury_deductible, bodily_injury_coverage, collison_injury_deductible, collison_injury_coverage, accident_report_number, at_fault, is_totaled, damage_cost, boat_insurance_policy_number)
values('987QQ453HH22', '230000', '1000', '80000', '500', '300000', '502', 'no', 'no', '0', '3')

/*
* Accounts Sold
*/ 

INSERT INTO ACCOUNTS_SOLD(emp_ssn, account_id)
values('234332243', '326781')

INSERT INTO ACCOUNTS_SOLD(emp_ssn, account_id)
values('313343232', '221781')

INSERT INTO ACCOUNTS_SOLD(emp_ssn, account_id)
values('123343232', '326781')

/*
* Policies Written
*/

INSERT INTO Policies_Written(Lawyer_ID, Home_Ins_Policy_Num, Car_Ins_Policy_Num, Boat_Ins_Policy_Num)
values('863563', NULL, NULL, '2')

INSERT INTO Policies_Written(Lawyer_ID, Home_Ins_Policy_Num, Car_Ins_Policy_Num, Boat_Ins_Policy_Num)
values('962563', NULL, '3', NULL)

INSERT INTO Policies_Written(Lawyer_ID, Home_Ins_Policy_Num, Car_Ins_Policy_Num, Boat_Ins_Policy_Num)
values('103563', '1', '1', NULL)

/*
* Companies_Brokers
*/
INSERT INTO Companies_Brokers(Ins_Company_Name, Broker_Company_Name)
values('Humana', 'best brokers')

INSERT INTO Companies_Brokers(Ins_Company_Name, Broker_Company_Name)
values('BestInsurance', 'Sallys brokerage')

INSERT INTO Companies_Brokers(Ins_Company_Name, Broker_Company_Name)
values('RightInsurance', 'Tims brokerage')

