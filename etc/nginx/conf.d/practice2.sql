AND演算子

SELECT * FROM purchases WHERE character_name = "ひつじ仙人" AND category = "食費";

OR演算子
SELECT * FROM purchases WHERE character_name = "ひつじ仙人" OR category = "忍者わんこ";

ORDER BY　
データを並び替えるためには、「〜順に並べる」という意味の「ORDER BY」を用います。

ORDER BY
昇順と降順　
「ORDER BY」の並べ方は、「昇順」か「降順」を指定します。
「昇順」は「小さい数から大きい数へ向かう順序」、「降順」は「大きい数から小さい数へ向かう順序」です。
SQLでは「昇順」は「ASC」、「降順」は「DESC」と指定します。

SELECT * FROM purchases ORDER BY price DESC;


「ORDER BY」は「WHERE」と併用することが可能です。

SELECT * FROM purchases WHERE 条件　ORDER BY price DESC;

SELECT *
FROM purchases
WHERE character_name = "とりずきん"
ORDER BY price DESC;

SELECT *
FROM purchases
WHERE character_name = "にんじゃわんこ"
ORDER BY price ASC;