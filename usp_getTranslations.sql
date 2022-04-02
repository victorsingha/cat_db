Drop Procedure usp_getTranslations
Go
Create Procedure usp_getTranslations
@language varchar(50)
as
Begin
	If(@language = 'EN')
	Begin
	Select Code,English Translation from table_translation with(nolock)
	End
	
	If(@language = 'AR')
	Begin
	Select Code,Arabic Translation from table_translation with(nolock)
	End
End
