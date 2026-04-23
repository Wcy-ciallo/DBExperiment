# 数据库原理实验

SQL Server 数据库原理课程实验代码，基于 `studentInfo` 数据库。

## 环境

- **SQL Server**（实验 1–6，`SQLserver_experiments/`）
- **MySQL**（练习题，`problems/`）

## 核心数据库结构

```sql
student (Student_id PK, Student_name, sex, age, department)
course  (Course_id PK, Course_name, PreCouId, Credits)
score   (Student_id FK, Course_id FK, Grade)  -- 复合主键
```

## 实验进度

| 实验 | 内容 | 要求完成题目 | 实现文件 |
|------|------|-------------|---------|
| 实验1 | 数据库的创建与管理 | Q3, Q4, Q5, Q6 | `1.1` ~ `1.4` |
| 实验2 | 表的创建与管理 | 全部（Q1–Q6） | `2.1` ~ `2.6` |
| 实验3 | 数据的增删改 | 全部（Q1–Q9） | `3_1` ~ `3_9` |
| 实验4 | 数据查询 | 全部（Q1–Q21） | `4_1` ~ `4_21` |
| 实验5 | — | Q3 | — |
| 实验6 | — | Q2 | — |

## 实验内容说明

### 实验1：数据库管理
| 文件 | 功能 |
|------|------|
| `1.1_创建数据库Test2.sql` | 创建数据库 |
| `1.2_更改数据库文件.sql` | 修改数据库文件属性 |
| `1.3_数据库重命名.sql` | 重命名数据库 |
| `1.4_删除数据库.sql` | 删除数据库 |

### 实验2：表的 DDL
| 文件 | 功能 |
|------|------|
| `2.1` | 创建 studentInfo 数据库 |
| `2.2` | 创建 student / course / score 表 |
| `2.3` | 插入初始数据 |
| `2.4` | 增删改字段（ALTER TABLE） |
| `2.5` | 删除表 |
| `2.6` | 验证数据约束 |

### 实验3：DML（增删改）
| 文件 | 功能 |
|------|------|
| `3_1` | INSERT 单条记录 |
| `3_2` | INSERT 部分字段（Grade 为 NULL） |
| `3_3` | SELECT INTO 复制表 |
| `3_4` | UPDATE 全表成绩 +5 |
| `3_5` | UPDATE 指定学生所在系 |
| `3_6` | UPDATE 通过子查询更新成绩 |
| `3_7` | DELETE 成绩为 NULL 的记录 |
| `3_8` | DELETE 指定学生 |
| `3_9` | DELETE 通过子查询删除记录 |

### 实验4：SELECT 查询
| 文件 | 功能 |
|------|------|
| `4_1` | 基本查询，列别名 |
| `4_2` | 多表连接 + UPDATE |
| `4_3` | DISTINCT 去重 |
| `4_4` | WHERE 条件过滤 |
| `4_5` | BETWEEN 范围查询 |
| `4_6` | IN 多值匹配 |
| `4_7` | LIKE 模糊匹配（`_` 占位） |
| `4_8` | LIKE 前缀匹配 |
| `4_9` | NOT LIKE |
| `4_10` | IS NULL |
| `4_11` | COUNT 聚合 |
| `4_12` | AVG / MAX / MIN + 子查询 |
| `4_13` | SUM 聚合 |
| `4_14` | GROUP BY + JOIN |
| `4_15` | GROUP BY 统计各课程人数 |
| `4_16` | HAVING 过滤分组 |
| `4_17` | 三表连接 |
| `4_18` | 三表连接 + 成绩展示 |
| `4_19` | 聚合 + HAVING + ORDER BY |
| `4_20` | 子查询（IN） |
| `4_21` | LEFT JOIN 外连接 |
