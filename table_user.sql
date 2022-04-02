create table table_user (UserId int identity(1,1),Username varchar(300),
Password nvarchar(max),Email varchar(300),PhoneNo varchar(100),Transdate DateTime default getdate(),
CreatedBy varchar(100),UpdatedBy varchar(100),Verified varchar(30) default 'No')


Insert Into table_user (Username,Password,Email,PhoneNo) values ('admin','123','admin@gmail.com','0000000000')

Insert Into table_user (Username,Password,Email,PhoneNo) values ('victor','123','victor@gmail.com','1111111111')


