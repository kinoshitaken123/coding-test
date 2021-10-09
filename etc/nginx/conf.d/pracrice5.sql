--データを追加しよう
--INSERT
--テーブルにレコードを挿入したいときはINSERTを使います。
--INSERTとは「挿入する」という意味です

INSERT INTO students(id,name,course)
VALUES(4,"Kate","Java");

--AUTO INCREMENT
--多くの場合、idカラムにはAUTO INCREMENTという機能が使われます。
--AUTO INCREMENTとは「自動で増加する」といった意味で、データが作成されるときに自動で値が割り当てられます。

INSERT INTO students(name,course)
VALUES("Kate","Java");

--データを更新しよう
--UPDATE
--データを更新したいときにはUPDATEを使います。
--複数変更したいカラムがある場合、コンマ(,)で区切ります。

UPDATE students
SET name = "Jordan" ,course ="HTML"
WHERE id = 6;

--UPDATEの注意点
--WHEREで更新するレコードを指定しないとカラム内の全データが更新されてしまいます。

--データを削除しよう
--DELETE

DELETE FROM students
WHERE id = 7;