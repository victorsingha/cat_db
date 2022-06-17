Create Procedure find
@Name varchar(500)
as
Begin
	SELECT Name
	FROM sys.objects
	WHERE OBJECT_DEFINITION(OBJECT_ID) LIKE '%'+ @Name+'%'
End

