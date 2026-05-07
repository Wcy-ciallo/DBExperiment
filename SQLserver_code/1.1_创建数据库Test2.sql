create database Test2
on PRIMARY
(
    name = 'Test2_data1',
    filename = '/var/opt/mssql/data/Test2_data1.mdf',
    size = 10mb,
    maxsize = 100mb,
    filegrowth = 10mb
),
(
    name = 'Test2_data2',
    filename = '/var/opt/mssql/data/Test2_data2.ndf',
    size = 10mb,
    maxsize = 10mb,
    filegrowth = 15%
)

log ON
(
    name = 'Test2_log1',
    filename = '/var/opt/mssql/data/Test2_log1.ldf',
    size = 10mb,
    maxsize = 50mb,
    filegrowth = 20mb
)