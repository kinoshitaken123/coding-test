-- 20歳未満の男性ユーザーの、全てのカラムの値を取得してください。
SELECT * 
FROM users
WHERE age < 20 AND gender = 0;

-- ユーザーの年齢ごとの人数と、その年齢を取得してください
SELECT age, COUNT(*)
FROM users
GROUP BY age;

-- 全商品の名前を重複無く取得してください
SELECT DISTINCT(name) FROM items;

-- 全商品の名前と値段を、値段が高い順に並べてください
SELECT name,price
FROM items
ORDER BY price DESC;

-- 名前の一部に「シャツ」を含む商品の、全てのカラムの値を取得してください
SELECT *
FROM items
WHERE name LIKE "%シャツ%";

--商品一個あたりの利益の計算
SELECT name,price - cost 
FROM items;

--集計関数と四則演算
--利益、利益率の計算と組み合わせることで、
--利益が最も大きい商品を求めたり、商品全体の利益平均を求めたりすることができます

SELECT AVG(price - cost)
FROM items;

--ORDER BYと四則演算
SELECT name, price - cost
FROM items
ORDER BY price - cost DESC;

-- 「グレーパーカー」より値段が高い商品の名前と値段を取得してください
SELECT name, price
FROM items
WHERE price > (
  SELECT price
  FROM items
  WHERE name = "グレーパーカー"
);

-- 7000円以下で「グレーパーカー」より利益が高い商品を取得してください
SELECT name, price - cost
FROM items
WHERE price <= 7000 AND price - cost > (
  SELECT price - cost
  FROM items
  WHERE name = "グレーパーカー"
);

-- 商品ごとに商品のid、売れた個数を取得してください
SELECT item_id, COUNT(*)
FROM sales_records
GROUP BY item_id;

-- 売れた数が多い上位5商品のidと個数を取得してください
SELECT item_id, COUNT(*)
FROM sales_records
GROUP BY item_id
ORDER BY COUNT(*) DESC
LIMIT 5;

-- 売れた数が多い上位5商品のIDと名前、個数を取得してください
SELECT items.id, items.name, COUNT(*)
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name
ORDER BY COUNT(*) DESC
LIMIT 5;

-- このサイトの総売上と総利益を取得してください
SELECT SUM(items.price) AS "総売上", SUM(items.price - items.cost) AS "総利益"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id;

-- 日ごとの販売個数とその日付を取得してください
SELECT purchased_at, COUNT(*) AS "販売個数"
FROM sales_records
GROUP BY purchased_at
ORDER BY purchased_at ASC;

-- 日ごとの売上額とその日付を取得してください
SELECT sales_records.purchased_at, SUM(items.price) AS "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY purchased_at
ORDER BY purchased_at ASC;

-- 10個以上購入したユーザーIDとユーザー名、購入した商品の数を取得してください
SELECT users.id, users.name, COUNT(*) AS "購入数"
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
GROUP BY users.id, users.name
HAVING COUNT(*) >= 10;

-- 「サンダル」を購入したユーザーのidと名前を重複無く取得してください
SELECT users.id, users.name
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
WHERE sales_records.item_id = (
  SELECT id
  FROM items
  WHERE name = "サンダル"
)
GROUP BY users.id, users.name;

-- 男性向け、女性向け、男女兼用商品ごとに指定されたデータを取得してください
SELECT items.gender, SUM(items.price) AS "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.gender;


-- 売上額が上位5位の商品の指定されたデータを取得してください
SELECT items.id, items.name, SUM(items.price) AS "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name, items.price
ORDER BY SUM(items.price) DESC
LIMIT 5;

-- グレーパーカーより売上額が高い商品の指定されたデータを取得してください
SELECT items.id, items.name, SUM(items.price) AS "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY items.id, items.name, items.price
HAVING SUM(items.price) > (
  SELECT SUM(items.price)
  FROM sales_records
  JOIN items
  ON sales_records.item_id = items.id
  WHERE items.name = "グレーパーカー"
);
