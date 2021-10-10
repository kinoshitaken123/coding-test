-- WebサイトにCustomersテーブルとOrdersテーブルの2つのテーブルが含まれているとします。 
-- SQLクエリを記述して、何も注文したことがないすべての顧客を検索します。
-- Table: Customers.
-- +----+-------+
-- | Id | Name  |
-- +----+-------+
-- | 1  | Joe   |
-- | 2  | Henry |
-- | 3  | Sam   |
-- | 4  | Max   |
-- +----+-------+
-- Table: Orders.
-- +----+------------+
-- | Id | CustomerId |
-- +----+------------+
-- | 1  | 3          |
-- | 2  | 1          |
-- +----+------------+
-- 上記の表を例として使用して、以下を返します。
-- +-----------+
-- | Customers |
-- +-----------+
-- | Henry     |
-- | Max       |
-- +-----------+

select Customers.name as Customers
from Customers
where Customers.id not in (select CustomerId from Orders);