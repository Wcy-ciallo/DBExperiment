use master;
GO

alter database Test1 set single_user with rollback immediate;
GO

exec sp_renamedb 'Test1', 'New_Test1';
GO

alter database Test1 set multi_user;
GO