IF EXISTS (SELECT * FROM sys.procedures WHERE name = 'usp_update_list')
	DROP PROCEDURE usp_update_list
GO

CREATE PROCEDURE	usp_update_list
(
	@id				INT,
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
	
			
				UPDATE		PhoneBook SET
				FirstName	= @FirstName,
				MiddleName	= @MiddleName,
				LastName	= @LastName,
				PhoneNumber	= @PhoneNumber,
				Gender		= @Gender
				where id	= @id

		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		ROLLBACK TRANSACTION
	END CATCH
GO