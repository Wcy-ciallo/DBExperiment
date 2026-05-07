CREATE VIEW studentSumview AS
SELECT
  Student_id AS 学号,
  SUM(Grade) AS 总成绩
FROM score
GROUP BY Student_id;