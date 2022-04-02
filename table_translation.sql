create table table_translation (Code int ,English varchar(max),
Arabic nvarchar(max),Transdate DateTime default getdate())

insert into table_translation(Code,English,Arabic) values(1,'Change Language',N'تغيير اللغة')
insert into table_translation(Code,English,Arabic) values(2,'Username',N'اسم االمستخدم')
insert into table_translation(Code,English,Arabic) values(3,'Password',N'كلمه السر')
insert into table_translation(Code,English,Arabic) values(4,'Please enter username',N'الرجاء إدخال اسم المستخدم') 
insert into table_translation(Code,English,Arabic) values(5,'Please enter password',N'الرجاء إدخال كلمة المرور')

