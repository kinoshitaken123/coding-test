-- 列のあるテーブルコースがあります：学生とクラス
-- 5人以上の生徒がいるすべてのクラスをリストしてください。
-- たとえば、次の表は次のとおりです。
-- +---------+------------+
-- | student | class      |
-- +---------+------------+
-- | A       | Math       |
-- | B       | English    |
-- | C       | Math       |
-- | D       | Biology    |
-- | E       | Math       |
-- | F       | Computer   |
-- | G       | Math       |
-- | H       | Math       |
-- | I       | Math       |
-- +---------+------------+
-- Should output:
-- +---------+
-- | class   |
-- +---------+
-- | Math    |
-- +---------+

Create table If Not Exists courses (student varchar(255), class varchar(255));
Truncate table courses;
insert into courses (student, class) values ('A', 'Math');
insert into courses (student, class) values ('B', 'English');
insert into courses (student, class) values ('C', 'Math');
insert into courses (student, class) values ('D', 'Biology');
insert into courses (student, class) values ('E', 'Math');
insert into courses (student, class) values ('F', 'Computer');
insert into courses (student, class) values ('G', 'Math');
-- insert into courses (student, class) values ('H', 'Math');
-- insert into courses (student, class) values ('I', 'Math');
insert into courses (student, class) values ('A', 'Math');

select class from courses
group by class
having count(distinct student) >= 5;