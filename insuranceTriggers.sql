/**
* This trigger creates an audit record for every client added, and the date which they are added
*/
CREATE TRIGGER clientAfterInsTrigger ON Client
FOR INSERT
AS
	declare @firstname varchar(30);
	declare @lastname varchar(30);
	declare @emp_ssn int;
	declare @audit_action varchar(100);

	select @firstname=i.Fname from inserted i;
	select @lastname=i.Lname from inserted i;
	select @emp_ssn=i.employee_ssn from inserted i;
	set @audit_action='Client record added - After Insert Trigger'
	
	insert into Client_Audit(clientFName, clientLName, emp_ssn, audit_action, audit_time) values(@firstname, @lastname, @emp_ssn, @audit_action, getdate());
	
	PRINT 'AFTER INSERT Client Audit Record added.'
GO

/**
* This trigger will create a record of every client that is deleted, or customers that have "moved on" from the Broker.
*/
CREATE TRIGGER pastClientsTrigger ON Client
AFTER DELETE
AS
	declare @firstname varchar(30);
	declare @lastname varchar(30);
	declare @ssn int;
	declare @phone int;
	declare @email varchar(30);

	select @firstname=d.Fname from deleted d;
	select @lastname=d.Lname from deleted d;
	select @ssn=d.ssn from deleted d;
	select @phone=d.primary_phone_number from deleted d;
	select @email=d.primary_email from deleted d;
	
	insert into Past_Clients(clientFName, clientLName, ssn, primary_phone_number, primary_email, date_deleted) values(@firstname, @lastname, @ssn, @phone, @email, getdate());
	
GO