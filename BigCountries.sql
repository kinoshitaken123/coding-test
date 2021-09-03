-- +-----------------+------------+------------+--------------+---------------+
-- | name            | continent  | area       | population   | gdp           |
-- +-----------------+------------+------------+--------------+---------------+
-- | Afghanistan     | Asia       | 652230     | 25500100     | 20343000      |
-- | Albania         | Europe     | 28748      | 2831741      | 12960000      |
-- | Algeria         | Africa     | 2381741    | 37100000     | 188681000     |
-- | Andorra         | Europe     | 468        | 78115        | 3712000       |
-- | Angola          | Africa     | 1246700    | 20609294     | 100990000     |
-- +-----------------+------------+------------+--------------+---------------+
-- 面積が300万平方キロメートルを超えるか、人口が2,500万人を超える国は、大きな国です。 
-- 大国の名前、人口、地域を出力するSQLソリューションを作成します。 
-- たとえば、上記の表によれば、次のように出力する必要があります。
-- +--------------+-------------+--------------+
-- | name         | population  | area         |
-- +--------------+-------------+--------------+
-- | Afghanistan  | 25500100    | 652230       |
-- | Algeria      | 37100000    | 2381741      |
-- +--------------+-------------+--------------+

Create table If Not Exists World (name varchar(255), continent varchar(255), area int, population int, gdp int);
Truncate table World;
insert into World (name, continent, area, population, gdp) values ('Afghanistan', 'Asia', '652230', '25500100', '2034300');
insert into World (name, continent, area, population, gdp) values ('Albania', 'Europe', '28748', '2831741', '1296000');
insert into World (name, continent, area, population, gdp) values ('Algeria', 'Africa', '2381741', '37100000', '18868100');
insert into World (name, continent, area, population, gdp) values ('Andorra', 'Europe', '468', '78115', '3712000000');
insert into World (name, continent, area, population, gdp) values ('Angola', 'Africa', '1246700', '20609294', '10099000');

select name, population, area from World
where area > 3000000 or population > 25000000;