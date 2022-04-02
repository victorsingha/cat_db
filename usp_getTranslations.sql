Drop Procedure usp_getTranslations
Go
Create Procedure usp_getTranslations
@Language varchar(50)
as
Begin
	If(@Language = 'EN')
	Begin
	Select Code,English Translation from table_translation with(nolock)
	End
	
	If(@Language = 'AR')
	Begin
	Select Code,Arabic Translation from table_translation with(nolock)
	End
End