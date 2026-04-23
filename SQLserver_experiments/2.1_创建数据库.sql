CREATE DATABASE studentInfo
on PRIMARY
(
    name = 'studentInfo_data1',
    filename = '/var/opt/mssql/data/studentInfo_data1.mdf',
    size = 50mb,
    maxsize = 500mb,
    filegrowth = 10mb
),
(
    name = 'studentInfo_data2',
    filename = '/var/opt/mssql/data/studentInfo_data2.ndf',
    size = 50mb,
    maxsize = 500mb,
    filegrowth = 10mb
)

log ON
(
    name = 'studentInfo_log1',
    filename = '/var/opt/mssql/data/studentInfo_log1.ldf',
    size = 20mb,
    maxsize = 200mb,
    filegrowth = 10mb
);