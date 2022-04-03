create table table_user (UserId int identity(1,1),Username nvarchar(300),
Password varbinary(500),Email varchar(300),PhoneNo varchar(100),Transdate DateTime default getdate(),
CreatedBy varchar(100),UpdatedBy varchar(100),Verified varchar(30) default 'No')



delete from table_user

drop table table_user