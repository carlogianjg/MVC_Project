
IF EXISTS (SELECT * FROM SYS.PROCEDURES WHERE NAME = 'usp_read_list')
	DROP PROCEDURE usp_read_list
GO
CREATE PROCEDURE usp_read_list
(
	@Keyword nvarchar(255) = null
)
AS 
BEGIN
		SELECT	User_id,
				FirstName,
				MiddleName,
				LastName,
				PhoneNumber,
				Gender 
		FROM	PhoneBook
		WHERE	(
					FirstName like '%'+@Keyword+'%'
					OR
					MiddleName like '%'+@Keyword+'%'
					OR
					LastName like '%'+@Keyword+'%'
					OR
					Gender like '%'+@Keyword+'%'
					OR
					PhoneNumber like '%'+@Keyword+'%'
				)
				
END
GO
