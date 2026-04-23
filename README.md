# 数据库原理实验

本仓库整理了数据库原理课程的全部实验代码，主线实验基于 `studentInfo` 数据库，覆盖数据库管理、表定义、数据操作、查询、视图、存储过程，以及基于 JDBC 的简单数据库编程。

## 仓库结构

- `SQLserver_experiments/`：实验 1 到实验 6，使用 SQL Server / T-SQL。
- `ex7/`：实验 7，使用 Java JDBC 访问 SQLite 数据库。
- `problems/`：补充练习题，语法来源不完全一致，包含 SQL Server 与 MySQL/标准 SQL 风格。
- `sqlite-jdbc-3.7.2.jar`：实验 7 使用的 SQLite JDBC 驱动。
- `company.db`：实验 7 使用的 SQLite 数据库文件占位。

## 实验环境

- SQL Server：用于实验 1 到实验 6。
- JDK 8+：用于编译和运行实验 7 的 Java 程序。
- SQLite JDBC Driver：仓库已提供 `sqlite-jdbc-3.7.2.jar`。

## 核心数据模型

主线实验围绕 `studentInfo` 数据库展开，核心表结构如下：

```sql
student (
  Student_id PK,
  Student_name,
  sex,
  age,
  department
)

course (
  Course_id PK,
  Course_name,
  PreCouId,
  Credits
)

score (
  Student_id FK,
  Course_id FK,
  Grade,
  PRIMARY KEY (Student_id, Course_id)
)
```

实验 2 的建表与初始化数据分别位于：

- `SQLserver_experiments/2.2_创建表.sql`
- `SQLserver_experiments/2.3_插入数据.sql`

## 完成情况

| 实验 | 内容 | 完成情况 | 对应文件 |
|------|------|----------|----------|
| 实验 1 | 数据库的创建与管理 | 已完成 | `1.1` ~ `1.4` |
| 实验 2 | 表的创建与管理 | 已完成 | `2.1` ~ `2.6` |
| 实验 3 | 数据的增删改 | 已完成 | `3_1` ~ `3_9` |
| 实验 4 | 数据查询 | 已完成 | `4_1` ~ `4_21` |
| 实验 5 | 视图 | 已完成 | `5_1` ~ `5_5` |
| 实验 6 | 存储过程 | 已完成 | `6_1` ~ `6_3` |
| 实验 7 | JDBC 数据库编程 | 已完成 | `ex7/main.java` |

## 各实验说明

### 实验 1：数据库管理

| 文件 | 说明 |
|------|------|
| `1.1_创建数据库Test2.sql` | 创建数据库 `Test2`，指定主数据文件、辅助数据文件和日志文件 |
| `1.2_更改数据库文件.sql` | 修改数据库文件属性 |
| `1.3_数据库重命名.sql` | 重命名数据库 |
| `1.4_删除数据库.sql` | 删除数据库 |

### 实验 2：表的创建与管理

| 文件 | 说明 |
|------|------|
| `2.1_创建数据库.sql` | 创建 `studentInfo` 数据库 |
| `2.2_创建表.sql` | 创建 `student`、`course`、`score` 三张表并设置主键、外键、检查约束 |
| `2.3_插入数据.sql` | 插入实验用初始数据 |
| `2.4_增删改字段.sql` | 使用 `ALTER TABLE` 进行字段增删改 |
| `2.5_删除表.sql` | 删除数据表 |
| `2.6_验证数据约束.sql` | 验证主键、外键、检查约束等是否生效 |

### 实验 3：数据的增删改

| 文件 | 说明 |
|------|------|
| `3_1_添加记录.sql` | 插入记录 |
| `3_2.sql` | 插入部分字段数据 |
| `3_3.sql` | 使用 `SELECT INTO` 复制表 |
| `3_4.sql` | 批量更新成绩 |
| `3_5.sql` | 更新指定学生所在院系 |
| `3_6.sql` | 通过子查询更新成绩 |
| `3_7.sql` | 删除空成绩记录 |
| `3_8.sql` | 删除指定学生记录 |
| `3_9.sql` | 通过子查询删除记录 |

### 实验 4：数据查询

| 文件 | 说明 |
|------|------|
| `4_1.sql` | 基本查询与列别名 |
| `4_2.sql` | 多表连接查询 |
| `4_3.sql` | `DISTINCT` 去重 |
| `4_4.sql` | `WHERE` 条件过滤 |
| `4_5.sql` | `BETWEEN` 范围查询 |
| `4_6.sql` | `IN` 条件查询 |
| `4_7.sql` | `LIKE` 模糊匹配 |
| `4_8.sql` | 前缀匹配查询 |
| `4_9.sql` | `NOT LIKE` 查询 |
| `4_10.sql` | `IS NULL` 查询 |
| `4_11.sql` | `COUNT` 聚合查询 |
| `4_12.sql` | `AVG`、`MAX`、`MIN` 聚合查询 |
| `4_13.sql` | `SUM` 聚合查询 |
| `4_14.sql` | `GROUP BY` 分组统计 |
| `4_15.sql` | 课程人数统计 |
| `4_16.sql` | `HAVING` 分组过滤 |
| `4_17.sql` | 三表连接查询 |
| `4_18.sql` | 三表连接成绩展示 |
| `4_19.sql` | 聚合、排序与分组条件组合查询 |
| `4_20.sql` | 子查询 |
| `4_21.sql` | 左外连接查询 |

### 实验 5：视图

| 文件 | 说明 |
|------|------|
| `5_1.sql` | 创建数学系学生视图 `MathStudent` |
| `5_2.sql` | 创建计算机系学生数据库课程成绩视图 |
| `5_3.sql` | 创建学生总成绩统计视图 |
| `5_4.sql` | 创建成绩大于 80 的筛选视图 |
| `5_5.sql` | 删除视图 |

### 实验 6：存储过程

| 文件 | 说明 |
|------|------|
| `6_1.sql` | 创建插入学生信息的存储过程 `insertStudent` |
| `6_2.sql` | 创建更新学生信息的存储过程 `updateStudent` |
| `6_3.sql` | 创建删除学生信息的存储过程 `deleteStudent` |

### 实验 7：JDBC 数据库编程

- 实现文件：`ex7/main.java`
- 主要功能：
  - 动态加载 `sqlite-jdbc-3.7.2.jar`
  - 连接 SQLite 数据库 `company.db`
  - 执行 `UPDATE EMPLOYEE SET SALARY = SALARY - 5000 WHERE KPI = 'D'`
  - 按工资降序查询并输出 `EMPLOYEE` 表数据

运行示例：

```bash
javac -d . ex7/main.java
java ex7.main
```

说明：

- 程序默认从仓库根目录加载 `sqlite-jdbc-3.7.2.jar` 与 `company.db`。
- 当前仓库中的 `company.db` 为空文件；运行实验 7 前，需要先准备包含 `EMPLOYEE` 表及测试数据的 SQLite 数据库。

## 执行顺序建议

如果需要复现实验，可按以下顺序执行：

1. 先运行实验 1，熟悉数据库创建、修改、重命名与删除。
2. 再运行实验 2，创建 `studentInfo` 及三张基础表，并插入初始数据。
3. 在已有数据基础上执行实验 3、实验 4、实验 5、实验 6。
4. 最后单独编译并运行实验 7。

## 补充说明

- `SQLserver_experiments/test.sql` 可用于快速查看 `student`、`course`、`score` 三张表中的数据。
- `problems/` 为课后或平台练习代码，不属于主线实验提交内容，但可作为补充练习保留。
