Create Procedure usp_getTranslations
@Language varchar(50)
as
Begin
	Select Code,English Translation from table_translation with(nolock)
End