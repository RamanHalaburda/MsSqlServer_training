use RepublicDatabaseAutoservice


truncate table [dbo].[PartOrder]
truncate table [dbo].[WorkOn]




truncate table [dbo].[Review]
truncate table [dbo].[Person]
truncate table [dbo].[Work]
truncate table [dbo].[Owner] 

truncate table [dbo].[Order];
truncate table autoservice;

truncate database [RepublicDatabaseAutoservice]

truncate table address;

-- disable all constraints
EXEC sp_msforeachtable "ALTER TABLE ? NOCHECK CONSTRAINT all"

-- delete data in all tables
EXEC sp_MSForEachTable "DELETE FROM ?"

-- enable all constraints
exec sp_msforeachtable "ALTER TABLE ? WITH CHECK CHECK CONSTRAINT all"