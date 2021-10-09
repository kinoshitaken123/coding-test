--HAVING
--GROUP BYでグループ化したデータを更に絞り込みたい場合には、HAVINGを用います。
--図のように「GROUP BY カラム名 HAVING 条件」のようにすることで、条件を満たすグループを取得することができます。

WHEREとHAVINGの違い
実行順序によって、WHEREとHAVINGは検索対象に違いがあります。
WHEREはグループ化される前のテーブル全体を検索対象とするのに対し、
HAVINGはGROUP BYによってグループ化されたデータを検索対象とします。

SELECT SUM(price), purchased_at
FROM purchases
GROUP BY purchased_at
HAVING SUM(price) > 1000;

--サブクエリとは
--SQLでは、クエリの中に他のクエリを入れることができます。この他のクエリをサブクエリと言います。
--2つ以上のクエリを1つにまとめることができるので、より複雑なデータを取得する際に使われます。

--( )で囲むことで、サブクエリを使用できます。
--サブクエリの書き方は基本的に通常のクエリと同じですが、
--()内にセミコロン（;）は不要です。セミコロン（;）はクエリの最後にだけ書くようにしましょう。

SELECT name
FROM players
WHERE goals > (
    SELECT goals
    FROM players
    WHERE name = "xxx"
);

--ASの使い方
--ASを使うことでカラム名などに別名を定義することができます。
--「カラム名 AS "名前"」で、カラム名に定義する名前を指定します。

SELECT goals AS "ウィルの得点"
FROM players
WHERE name = "ウィル";

--結合条件
--結合条件は、「ON テーブル名.カラム名 = テーブル名.カラム名」で指定します。

SELECT *
FROM players
JOIN countries
ON players.county_id = countries.id;

--複数テーブルでのカラムの指定
--複数のテーブルに同じカラム名が存在するときは、「テーブル名.カラム名」で指定しなければなりません。

SELECT players.name,countries.name
FROM players
JOIN countries
ON players.county_id = countries.id;

--複数テーブルでのカラムの指定
--「テーブル名.カラム名」を用いたカラム指定は、WHERE内でも使えます。

SELECT *
FROM players
JOIN countries
ON players.county_id = countries.id;
WHERE players.name = "xxx";

SELECT players.name AS "選手名", teams.name AS "前年所属していたチーム"
FROM players
JOIN teams
ON players.previous_team_id = teams.id
;

--複数テーブルのJOIN
--JOINは1つのクエリで、複数回使用できます。
--JOINを複数回使用しても、FROMは1度だけ書けば大丈夫なので注意しましょう。

SELECT *
FROM players
JOIN countries
ON players.county_id = countries.id
LEFT JOIN teams
ON players.previous_team_id = teams.id
;

SELECT countries.name AS "国名",AVG(goals) AS "平均得点"
FROM players
JOIN countries
ON players.country_id = countries.id
GROUP BY countries.name
;
