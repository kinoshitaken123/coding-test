DISTINCT 
DISTINCTを用いると、
検索結果から重複するデータを除くことが可能です。「DISTINCT(カラム名)」とすることで、
検索結果から指定したカラムの重複するデータを除くことができます。
purchasesテーブルからnameカラムの重複したデータを省いて取得しています。

SELECT DISTINCT(name) FROM purchases;
