IF EXISTS (SELECT * FROM SYS.PROCEDURES WHERE NAME = 'list')
	DROP PROCEDURE dbo.usp_update_list
GO

	CREATE PROCEDURE dbo.usp_update_list
		@id INT,
		@FirstName NVARCHAR(100), 
		@MiddleName NVARCHAR(100), 
		@LastName NVARCHAR(100),
		@PhoneNumber NVARCHAR(50), 
		@Gender NVARCHAR(50) 
	AS
	BEGIN
		IF NOT EXISTS (SELECT * FROM ListOfContacts WHERE First_Name = @First_Name and 
		MiddleName = @MiddleName and LastName = @LastName and PhoneNumber = @PhoneNumber and Gender = @Gender)
			BEGIN
					UPDATE ListOfContacts
					SET FirstName = @FirstName,
						MiddleName = @MiddleName,
						LastName = @LastName,
						PhoneNumber = @PhoneNumber,
						Gender = @Gender
					WHERE id = @id;
			END
	END
GO