Drop Procedure usp_registerUser
Go
Create Procedure usp_registerUser
--@username nvarchar(max)=null,
@email varchar(300) = null,
@password nvarchar(max)
--@phoneno varchar(50)= null
as
Begin
Begin Try
Begin Transaction
	Declare @Encrypt varbinary(200),@StatusCode varchar(20) = 'S',@StatusMessage nvarchar(max),@Count int = 0

	--Select @Count = Count(*) from table_user with(nolock) where Username = @username
	--If(@Count > 0)
	--Begin
	--	Set @StatusCode = 'F'
	--	Set @StatusMessage = 'Username already taken'
	--	Set @Count = 0
	--End

	Select @Count = Count(*) from table_user with(nolock) where Email = @email
	If(@Count > 0)
	Begin
		Set @StatusCode = 'F'
		Set @StatusMessage = 'You have already registered with this email.Please try to login.'
		Set @Count = 0
	End

	If(@StatusCode = 'S')
	Begin
		Select @Encrypt = EncryptByPassPhrase('#@#D3DWWEW$T%^%REDW#', @password )  
		Insert Into table_user(Username,Password,Email,PhoneNo) values
		('',@Encrypt,@email,'')
		--@@@@@--Select Convert(varchar,DECRYPTBYPASSPHRASE('#@#D3DWWEW$T%^%REDW#',@Encrypt)) as Decrypt


		--Insert Into table_user(Username,Password,Email,PhoneNo) values
		--(@username,@password,@email,@phoneno)

		Set @StatusCode = 'S'
		Set @StatusMessage = 'Registration successfull'

	End
Commit Transaction
End Try
Begin Catch
	Rollback Transaction
	Set @StatusCode = 'F'
	Set @StatusMessage = ERROR_MESSAGE()
End Catch

	Select @StatusCode StatusCode,@StatusMessage StatusMessage
	
End
