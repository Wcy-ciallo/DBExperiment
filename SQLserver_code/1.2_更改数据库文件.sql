alter database Test2
modify file (
    name = Test2_data1,
    size = 50mb,
    maxsize = 200mb,
    filegrowth = 20mb
);

alter database Test2
modify file(
    name = Test2_data2,
    size = 50mb,
    maxsize = 300mb,
    filegrowth = 20mb
);

alter database Test2
modify file(
    name = Test2_log1,
    size = 30mb,
    maxsize = 100mb,
    filegrowth = 10%
);