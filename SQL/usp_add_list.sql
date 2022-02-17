IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'usp_add_list')
	DROP PROCEDURE usp_add_list
GO

CREATE PROCEDURE	usp_add_list
(
	@FirstName		nvarchar(255),
	@MiddleName		nvarchar(255),
	@LastName		nvarchar(255),
	@PhoneNumber	nvarchar(255),
	@Gender			nvarchar(10)
)
AS
SET NOCOUNT OFF
	
	BEGIN TRY
		BEGIN TRANSACTION 
	
			
				INSERT INTO PhoneBook(FirstName,MiddleName,LastName,PhoneNumber,Gender)
				values(@FirstName,@MiddleName,@LastName,@PhoneNumber,@Gender)

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO