use insurance;

/*
* CLIENT INSERTS
*/

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, Employee_SSN, account_number) 
values ('Mike', 'Smith', '123111232', 233, 'mike.smith@gmail.com', '101 Mike Smith Way Columbus, OH 43201', '12/17/1970', '234332243', 55);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, Employee_SSN, account_number) 
values ('Jeffrey', 'Brown', '123343232', 33, 'mrperson@gmail.com', '101 hello Way Columbus, OH 43201', '05/07/1971', '2994432423', 56);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, Employee_SSN, Account_No) 
values ('Adam', 'Morakis', '313343232', 32, 'morakis@gmail.com', '123 Edison Street Columbus, OH 43201', '06/07/1971', '2994432423', 57);

INSERT INTO CLIENT (Fname, Lname, SSN, Primary_Phone_Number, Primary_Email, Address, DOB, Employee_SSN, Account_No) 
values ('Tanya', 'Smith', '783343232', 85, 'tanya@gmail.com', '647 lazenby crossing Columbus, OH 43201', '09/07/1980', '2114432443', 80);


/*
* DEPENDENT INSERTS
*/

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB, Age) 
values ('Sandy', 'Smith', '123118462', '123111232' '11/18/1970', 46);

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB, Age) 
values ('Mark', 'Edison', '953118462', '123343232' '11/18/1980', 36);

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB, Age) 
values ('Halle', 'Berry', '531118462', '313343232' '11/14/1990', 26);

INSERT INTO DEPENDENTS (Fname, Lname, Dependent_SSN, Client_SSN, DOB, Age) 
values ('Brad', 'Pitt', '531118952', '783343232' '11/11/1990', 26);



/*
* LAWYER INSERTS
*/

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Dwane', 'Carter', 'carter@gmail.com', '919-534-9624' '863563', Humana);

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Aubrey', 'Graham', 'graham@gmail.com', '919-354-9624' '103563', Humana);

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Michael', 'Jordan', 'jordan@gmail.com', '862-124-9624' '962563', Humana);

INSERT INTO LAWYERS (Fname, Lname, Primary_Email, Primary_Phone, Lawyer_ID, Insurance_Company_Name) 
values ('Nicki', 'Minaj', 'minaj@gmail.com', '425-921-9224' '123663', Humana);


/*
* ACCOUNTS INSERTS
*/

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account Age, Client SSN) 
values ('326781', '01/10/1994', '22', '123111232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account Age, Client SSN) 
values ('221781', '01/10/1995', '21', '123343232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account Age, Client SSN) 
values ('117815', '02/10/1995', '21', '947243232');

INSERT INTO ACCOUNTS (Account_ID, Date_Created, Account Age, Client SSN) 
values ('117819', '03/11/1996', '20', '947243232');

/*
* PAYMENT INSERTS
*/

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no,) 
values ('64224', 'Credit', '03/11/2000', '100', 'y', '600', '55');

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no,) 
values ('64225', 'Credit', '03/11/2001', '200', 'y', '800', '56');

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no,) 
values ('64226', 'Credit', '03/11/2002', '300', 'y', '900', '57');

INSERT INTO PAYMENT (Transaction_ID,Payment_Method, Payment_Date, Payment_Amount, Paid_Off, Balance, Account_no,) 
values ('64227', 'Credit', '03/11/2003', '400', 'y', '100', '80');


/*
* HOME INSURANCE POLICY INSERTS
*/

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('1', '1000', '5', 'y', '03/08/2014', '3', '55');

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('2', '5000', '10', 'y', '03/01/2010', '7', '56');

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('3', '6000', '10', 'y', '03/10/2015', '2', '57')

INSERT INTO Home_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('4', '3000', '5', 'y', '03/10/2013', '4', '80')

/*
* CAR INSURANCE POLICY INSERTS
*/

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('1', '2000', '5', 'y', '03/08/2014', '3', '55');

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('2', '3000', '10', 'y', '03/01/2010', '7', '56');

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('3', '4000', '10', 'y', '03/10/2015', '2', '57')

INSERT INTO Car_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('4', '5000', '5', 'y', '03/10/2013', '4', '80')


/*
* Boat INSURANCE POLICY INSERTS
*/

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('1', '8000', '5', 'y', '03/08/2014', '3', '55');

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('2', '7000', '10', 'y', '03/01/2010', '7', '56');

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('3', '6000', '10', 'y', '03/10/2015', '2', '57')

INSERT INTO Boat_Insurance_Policy (Policy_Num,Term_Price, Term_Length, Active, Start_Date, Policy_Age, account_no,) 
values ('4', '2000', '5', 'y', '03/10/2013', '4', '80')












