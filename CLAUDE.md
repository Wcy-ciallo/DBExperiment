# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a **database principles course experiment repository** containing SQL scripts for two contexts:

- `SQLserver_experiments/` — Lab exercises targeting **SQL Server** (T-SQL syntax, `GO` batch separators, `sp_rename`, etc.), organized by lab number (1.x through 4.x).
- `problems/` — Practice problems targeting **MySQL/standard SQL** syntax (uses `LIMIT`/`OFFSET`, MySQL-style stored procedures, etc.).

## Core Schema (SQLserver_experiments)

The primary working database is `studentInfo`, containing three tables:

```sql
student  (Student_id PK, Student_name, sex, age, department)
course   (Course_id PK, Course_name, PreCouId, Credits)
score    (Student_id FK, Course_id FK, Grade)  -- composite PK
```

## Lab Structure

| Folder | Labs | Content |
|---|---|---|
| `SQLserver_experiments/` | 1.x | Database create/rename/drop/file modification |
| | 2.x | Table DDL: create, insert seed data, ALTER, constraints, drop |
| | 3.x | DML: INSERT, UPDATE, DELETE |
| | 4.x | SELECT queries: joins, aggregates, subqueries, GROUP BY, HAVING |
| `problems/` | 1–3 | Mixed DDL/DML/SELECT problems on external schemas (actor, employees, emp_v) |

## SQL Dialect Notes

- **SQLserver_experiments**: Use T-SQL — `GO` batch separator, `USE <db>;`, `EXEC sp_rename`, `NUMERIC`, `CHECK` constraints.
- **problems**: Use MySQL-compatible SQL — `LIMIT n OFFSET m`, no `GO`, standard `VARCHAR`.
- Do **not** mix dialects between the two folders.
