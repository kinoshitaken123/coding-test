DISTINCT 
--DISTINCTを用いると、
--検索結果から重複するデータを除くことが可能です。「DISTINCT(カラム名)」とすることで、
--検索結果から指定したカラムの重複するデータを除くことができます。
--purchasesテーブルからnameカラムの重複したデータを省いて取得しています。

SELECT DISTINCT(name) FROM purchases;

--四則演算

--四則演算の使い方
--今回はpriceカラムに1.08をかけ、消費税を含んだ値を取得してみましょう。
--DISTINCTと同様に、四則演算をSELECTで取得するカラムに使用することで、計算後のデータが取得できます

SELECT name, price * 1.08
FROM purchases;

--SUM関数
--SUM関数はSELECTで取得するカラムに用いることで、集計結果を取得することができます。

SELECT SUM(price) FROM purchases;

--WHEREとSUM関数
SELECT SUM(price) FROM purchases WHERE character_name = "xxxx";

--AVG関数

--SQLで数値の平均を計算する場合は、AVGを用います。
--「AVG(カラム名)」のようにすることで、指定したカラムに保存されたデータの平均を計算することが可能です。

SELECT AVG(price) FROM purchases;

--WHEREとAVG関数

--AVG関数はWHEREと併用することができます。
--下の図では、WHEREを使うことで、にんじゃわんこが買った商品の平均金額を取得しています。

SELECT AVG(price)
FROM purchases
WHERE character_name = "xxx";

--COUNT関数
--COUNT関数は、指定したカラムのデータの合計数を計算してくれる関数です

--COUNT関数とnull

--COUNT関数でカラム名を指定した場合、nullになっているデータの数は計算されません。

SELECT COUNT(*) FROM purchases;

--WHEREとCOUNT関数
SELECT COUNT(*)
FROM purchases
WHERE character_name = "xxxx";

--MAX・MIN関数の使い方
--MAX,MINも他の集計関数と同様にSELECTで取得したカラムに使用することができます。

SELECT MAX(price) FROM purchases;

SELECT MAX(price) FROM purchases
WHERE character_name = "xxxx";

--GROUP BY データをグループ化することができます。
--グループ化するには、今までの集計関数を取得するFROMの後ろに「GROUP BY カラム名」を追加します。
--集計関数により、各グループごとにデータが集計されます。

SELECT SUM(price),purchased_at
FROM purchased_at
GROUP BY purchased_at;

-- purchased_atごとのお金を使った数を取得してください

SELECT COUNT(price),purchased_at
FROM purchases
GROUP BY purchased_at;

--複数カラムのGROUP BYの書き方
--GROUP BYは複数のカラム名を適用させることができ、その場合は、カラム名同士をコンマ(,)で繋げます。

SELECT SUM(price),purchased_at,character_name
FROM purchases
GROUP BY purchased_at,character_name;

--集計関数により、各グループごとにデータを集計することができます。
--それぞれグループ化したデータに対してSUM関数とCOUNT関数を用いたものとなっています。