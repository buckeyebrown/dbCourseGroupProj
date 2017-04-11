-- Simple Transaction
DECLARE @intErrorCode INT
BEGIN TRAN
	UPDATE BROKERS
	SET Company_Address = '123 Street Ave Columbus 43201'
	WHERE Website_URL = 'www.sallysbrokerage'

	SELECT @intErrorCode = @@ERROR
	IF (@intErrorCode <> 0) GOTO PROBLEM

	UPDATE EMPLOYEES
	SET salary = 1000
	WHERE fname = 'samantha' and lname ='jones'
COMMIT TRAN
PROBLEM:
IF (@intErrorCode <> 0) BEGIN
PRINT 'Error occurred.'
	ROLLBACK TRAN
END

-- Nested Transaction
SELECT 'Before BEGIN TRAN', @@TRANCOUNT
BEGIN TRAN
	SELECT 'After BEGIN TRAN', @@TRANCOUNT
	INSERT INTO EMPLOYEES values ('123123444', '2333228888', 
		65000, 'doug', 'peters', 'best brokers')

	BEGIN TRAN nested
		SELECT 'After BEGIN TRAN nested', @@TRANCOUNT

		UPDATE EMPLOYEES
		SET salary = '60000'
		WHERE emp_ssn = '123343232'

	COMMIT TRAN nested

	SELECT 'After COMMIT TRAN nested', @@TRANCOUNT

ROLLBACK TRAN

SELECT 'After ROLLBACK TRAN', @@TRANCOUNT

SELECT * FROM EMPLOYEES

-- Transactions with save pointsd
SELECT 'Before BEGIN TRAN', @@TRANCOUNT
BEGIN TRAN main
	SELECT 'After BEGIN TRAN main', @@TRANCOUNT
	INSERT INTO EMPLOYEES values ('123777444', '2533228888', 
		'65000', 'james', 'dudeface', 'best brokers')
		SAVE TRAN addrec
		SELECT 'After SAVE TRAN addrec', @@TRANCOUNT
		SELECT * FROM EMPLOYEES

		BEGIN TRAN nested
			SELECT 'After BEGIN TRAN nested', @@TRANCOUNT

			UPDATE EMPLOYEES
			SET salary = '75000'
			WHERE emp_ssn = '123343232'

			SAVE TRAN updaterec
			SELECT 'After SAVE TRAN updaterec', @@TRANCOUNT
				SELECT * FROM EMPLOYEES

		ROLLBACK TRAN addrec
		SELECT 'After ROLLBACK TRAN addrec', @@TRANCOUNT
		
		SELECT * FROM EMPLOYEES

	IF (@@TRANCOUNT > 0) BEGIN
		ROLLBACK TRAN
		SELECT 'After ROLLBACK TRAN', @@TRANCOUNT

	END
	SELECT * FROM EMPLOYEES