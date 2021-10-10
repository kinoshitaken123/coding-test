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