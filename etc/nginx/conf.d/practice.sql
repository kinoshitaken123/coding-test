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

LIKE演算子
SELECT * FROM purchases WHERE name LIKE　文字列;

SELECT * FROM purchases wHERE name LIKE "%プリン%";

前方一致
SELECT * FROM purchases wHERE name LIKE "プリン%";
後方一致
SELECT * FROM purchases wHERE name LIKE "%プリン";

NOT演算子
「〇〇を含まないデータ」や「〇〇に一致しないデータ」のような条件でデータを取得したい場合は「否定」を意味する「NOT演算子」を用います
SELECT * FROM purchases WHERE NOT price > 1000;
SELECT * FROM purchases WHERE NOT name LIKE "%プリン%";

NULLのデータを取得する

SELECT * FROM purchases WHERE price IS NULL;

NULLではないデータを取得する

SELECT * FROM purchases WHERE price IS NOT NULL;