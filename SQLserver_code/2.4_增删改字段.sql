--（1）	为表student增加一个memo（备注）字段，类型为varchar（200）。
alter table student add memo varchar(200);
GO

--（2）	将memo字段的数据类型更改为varchar（300）。
alter table student alter column memo varchar(300);
GO

--（3）	删除memo字段
alter table student drop column memo;
GO