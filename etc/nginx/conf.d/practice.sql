SELECT name FROM purchases;

//複数の絡むからデータを取得
SELECT name,price

//全てのカラムからデータを取得
SELECT * FROM purchases;

//食費のデータを取得
「数値データ」はクォーテーションで囲んではいけないため、注意しましょう。
SELECT * FROM purchases WHERE category = "食費";

//食費のデータを取得
SELECT * FROM purchases WHERE price = 1000;

SELECT * FROM purchases WHERE purchased_at = "2017-07-01"; 

比較演算子
a < b aがbより小さいデータを検索
a <= b aがbより小さいまたはaがbと等しいデータを検索

SELECT * FROM purchases WHERE price >= 1000;

SELECT * FROM purchases WHERE purchased_at <= "2017-07-01";