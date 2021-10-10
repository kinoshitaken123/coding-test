-- SQLクエリを記述して、Personという名前のテーブル内の重複するすべての電子メールを検索します。
-- +----+---------+
-- | Id | Email   |
-- +----+---------+
-- | 1  | a@b.com |
-- | 2  | c@d.com |
-- | 3  | a@b.com |
-- +----+---------+
-- たとえば、クエリは上記の表に対して次を返す必要があります。
-- +---------+
-- | Email   |
-- +---------+
-- | a@b.com |
-- +---------+
-- 注：すべてのメールは小文字です。

SELECT Email
FROM Person 
GROUP BY Email
HAVING count(Email) > 1
;