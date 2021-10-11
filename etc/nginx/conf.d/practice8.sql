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
