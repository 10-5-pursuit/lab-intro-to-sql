-- Getting started, do not update
DROP DATABASE IF EXISTS regifter;
CREATE DATABASE regifter;
\c regifter
-- End getting started code

--
-- Write your code below each prompt

--
\echo Create a table called gifts
-- with the following columns
-- id serial primary KEY
-- gift - string
-- giver - string
-- price - integer
-- previously_regifted boolean


--  My Code
-- CREATE TABLE gifts (id SERIAL PRIMARY KEY, gift VARCHAR(100), giver TEXT, price INT, previously_regifted BOOLEAN); 


-- 
\echo See details of the table you created

-- SELECT*FROM gifts 


-- 
\echo Alter the table so that the column price is changed to value 

-- ALTER TABLE gifts RENAME price TO value; 





-- 
\echo Insert a peach candle, given by 'Santa' thats value is 9 and has been previously regifted
-- INSERT TO gifts
-- gift (gift, giver, value, perviously_regifted)
-- VALUES
--  ('peach candle', 'Santa', 9, TRUE);
-- displays it on table


--
\echo Query for all the columns in your gifts table
-- SELECT * FROM gifts;


--
\echo Uncomment below to insert 5 more gifts
-- 

-- INSERT INTO gifts (gift, giver, value, previously_regifted)
-- VALUES
-- ('peach candle', 'Santa', '9', TRUE),
-- ('cinnamon candle', 'Nick', '19', TRUE),
-- ('soap on a rope', 'Rudolf', '29', FALSE),
-- ('potpurri', 'Elf on the Shelf', '39', TRUE),
-- ('mango candle', 'The Boss', '49', FALSE)
-- ;

-- 
\echo Insert 5 more gifts of your own choosing,  include 1 more candle
-- INSERT INTO gifts (gift, giver, value, previously_regifted)
-- VALUES
-- ('Mint Candle', 'Significant Other', 10, TRUE),
-- ('Hulu Subscription', 'Victor', 19, FALSE),
-- ('Roll Over Pillow', 'Christian', 33, TRUE),
-- ('Paint Brush', 'Victoria', 12, FALSE),
-- ('Love Seat', 'Ms.Mellow', 129, TRUE)
-- ;



--
\echo Query for gifts with a value greater than or equal to 20
-- SELECT*FROM gifts WHERE value >= 20;


--
\echo Query for every gift that has the word candle in it, only show the gift column
-- SELECT*FROM gifts WHERE gift LIKE '%candle%';


--
\echo Query for every gift whose giver is Santa OR value is greater than 30
-- SELECT*FROM gifts WHERE giver = 'Santa' OR value >= 30;


--
\echo Query for every gift whose giver is NOT Santa
-- SELECT*FROM gifts WHERE giver != 'Santa';
--  id |       gift        |       giver       | value | previously_regifted
-- ----+-------------------+-------------------+-------+---------------------
--   2 | cinnamon candle   | Nick              |    19 | t
--   3 | soap on a rope    | Rudolf            |    29 | f
--   4 | potpurri          | Elf on the Shelf  |    39 | t
--   5 | mango candle      | The Boss          |    49 | f
--   6 | Mint Candle       | Significant Other |    10 | t
--   7 | Hulu Subscription | Victor            |    19 | f
--   8 | Roll Over Pillow  | Christian         |    33 | t
--   9 | Paint Brush       | Victoria          |    12 | f
--  10 | Love Seat         | Ms.Mellow         |   129 | t
-- (9 rows)


--
\echo Update the second gift to have a value of 2999
-- UPDATE gifts SET value = 2999 WHERE id = 2;



--
\echo Query for the updated item
--
-- id |       gift        |       giver       | value | previously_regifted
-- ----+-------------------+-------------------+-------+---------------------
--   1 | peach candle      | Santa             |     9 | t
--   3 | soap on a rope    | Rudolf            |    29 | f
--   4 | potpurri          | Elf on the Shelf  |    39 | t
--   5 | mango candle      | The Boss          |    49 | f
--   6 | Mint Candle       | Significant Other |    10 | t
--   7 | Hulu Subscription | Victor            |    19 | f
--   8 | Roll Over Pillow  | Christian         |    33 | t
--   9 | Paint Brush       | Victoria          |    12 | f
--  10 | Love Seat         | Ms.Mellow         |   129 | t
--   2 | cinnamon candle   | Nick              |  2999 | t

\echo Delete all the gifts from Santa and return the 'value' and 'gift' of the gift you have deleted
--DELETE FROM gifts WHERE giver = 'Santa';


--
\echo Query for all the columns in your gifts table one more time
--

--  id |       gift        |       giver       | value | previously_regifted
-- ----+-------------------+-------------------+-------+---------------------
--   3 | soap on a rope    | Rudolf            |    29 | f
--   4 | potpurri          | Elf on the Shelf  |    39 | t
--   5 | mango candle      | The Boss          |    49 | f
--   6 | Mint Candle       | Significant Other |    10 | t
--   7 | Hulu Subscription | Victor            |    19 | f
--   8 | Roll Over Pillow  | Christian         |    33 | t
--   9 | Paint Brush       | Victoria          |    12 | f
--  10 | Love Seat         | Ms.Mellow         |   129 | t
--   2 | cinnamon candle   | Nick              |  2999 | t
w


-- BONUSES

--
 \echo Count the total number of gifts that have the word candle in it
-- SELECT COUNT(gift) FROM gifts WHERE gift LIKE '%candle%';


--
\echo Get the AVEREAGE value from all the gifts
-- SELECT AVG(value) FROM gifts;


-- 
 \echo Limit to 3 gifts, offset by 2 and order by price descending
-- SELECT*FROM gifts ORDER BY gift ASC LIMIT 3 OFFSET 2;
-- 
-- finish
--
DROP TABLE IF EXISTS gifts;


