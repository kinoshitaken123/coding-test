-- 各人のアドレスがあるかどうかに関係なく、
-- Personテーブルの各人に次の情報を提供するレポートのSQLクエリを記述します。
-- FirstName, LastName, City, State
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | PersonId    | int     |
-- | FirstName   | varchar |
-- | LastName    | varchar |
-- +-------------+---------+
-- PersonIdは、このテーブルの主キー列です。
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | AddressId   | int     |
-- | PersonId    | int     |
-- | City        | varchar |
-- | State       | varchar |
-- +-------------+---------+
-- AddressIdは、このテーブルの主キー列です。

SELECT FirstName, LastName, City, State
From Person left join Address
on Person.PersonId = Address.PersonId;