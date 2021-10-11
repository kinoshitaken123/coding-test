-- 最小のIDに基づいて一意の電子メールのみを保持し、
-- Personという名前のテーブル内の重複する電子メールエントリをすべて削除するSQLクエリを記述します。
-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- | 3  | john@example.com |
-- +----+------------------+
-- Id is the primary key column for this table.
-- たとえば、クエリを実行した後、上記のPersonテーブルには次の行が含まれている必要があります。
-- +----+------------------+
-- | Id | Email            |
-- +----+------------------+
-- | 1  | john@example.com |
-- | 2  | bob@example.com  |
-- +----+------------------+

delete person1 from Person as person1
join Person as person2
on person1.Email = person2.Emailwhere person1. id > person2
;