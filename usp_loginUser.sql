Drop Procedure usp_loginUser
Go
Create Procedure usp_loginUser
@username nvarchar(100) = null,
@password nvarchar(100),
@email varchar(300) = null,
@phoneno varchar(50) = null
as
Begin
	Declare @Encrypt varbinary(200),@StatusCode varchar(20) = 'S',@StatusMessage nvarchar(max),@Count int,
	@Decrypt nvarchar(100)

	Select @Decrypt = Convert(varchar,DECRYPTBYPASSPHRASE('#@#D3DWWEW$T%^%REDW#',Password))
	from table_user with(nolock) where username = @username 



	Select @Count = Count(*) from table_user with(nolock) where Username = @username and @Decrypt = @password
	If(@Count = 0)
	Begin
		Set @StatusCode = 'F'
		Set @StatusMessage = 'Invalid Credentials'
	End


	If(@Count > 0)
	Begin
		Set @StatusCode = 'S'
		Set @StatusMessage = 'Login Successfull'
	End

	Select @StatusCode StatusCode,@StatusMessage StatusMessage
	
End
