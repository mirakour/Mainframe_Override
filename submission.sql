-- Get the username of the person who made the post about EmptyStack in forum_posts.

-- Table "public.forum_posts"
-- Column  |              Type              | Collation | Nullable | Default 
---------+--------------------------------+-----------+----------+---------
-- id      | text                           |           | not null | 
-- title   | text                           |           | not null | 
-- content | text                           |           | not null | 
-- date    | timestamp(3) without time zone |           | not null | 
-- author  | text                           |           | not null | 

select * from forum_posts where content ilike '%EmptyStack%' and content ilike '%dad%' and date between '2048-04-01' and '2048-04-30';

 --id   |     title     |                                                                                              content                                                                                               |        date         |     author     
-------+---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+----------------
--nbZY_ | Get rich fast | You should all invest in EmptyStack Solutions soon or you'll regret it. My dad works there and he's got some serious inside intel. Their self-driving taxis are the future and the future is here. | 2048-04-08 00:00:00 | smart-money-44

-- Get the last name of the person associated with that username in forum_accounts.

--Table "public.forum_accounts"
--   Column   | Type | Collation | Nullable | Default 
------------+------+-----------+----------+---------
-- username   | text |           | not null | 
-- first_name | text |           | not null | 
-- last_name  | text |           | not null | 

select * from forum_accounts where username = 'smart-money-44';

-- username    | first_name | last_name 
----------------+------------+-----------
-- smart-money-44 | Brad       | Steele

-- Find all other accounts with the same last name.

select * from forum_accounts where last_name = 'Steele';

--    username     | first_name | last_name 
-----------------+------------+-----------
--sharp-engine-57 | Andrew     | Steele
-- stinky-tofu-98  | Kevin      | Steele
-- smart-money-44  | Brad       | Steele

-- Find all accounts in emptystack_accounts with the same last name.

select * from emptystack_accounts where last_name = 'Steele';

-- username    |  password   | first_name | last_name 
----------------+-------------+------------+-----------
-- triple-cart-38 | password456 | Andrew     | Steele
-- lance-main-11  | password789 | Lance      | Steele

