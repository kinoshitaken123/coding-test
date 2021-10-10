
-- SQLクエリを記述して、Employeeテーブルから2番目に高い給与を取得します。
-- たとえば、下記のEmployeeテーブルが与えられた場合、
-- クエリは2番目に高い給与として200を返す必要があります。 
-- 2番目に高い給与がない場合、クエリはnullを返す必要があります。
-- +----+--------+
-- | Id | Salary |
-- +----+--------+
-- | 1  | 100    |
-- | 2  | 200    |
-- | 3  | 300    |
-- +----+--------+
-- +---------------------+
-- | SecondHighestSalary |
-- +---------------------+
-- | 200                 |
-- +---------------------+

SELECT MAX(Salary) as SecondHighestSalary 
FROM Employee 
WHERE Salary < (
    SELECT MAX(Salary)
    FROM Employee
);