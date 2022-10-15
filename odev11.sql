
-- ÖDEV 11 -- 

-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz. --



-- 1) actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım. --
(
SELECT first_name FROM actor
ORDER BY first_name 
)
UNION
(
SELECT first_name FROM customer
ORDER BY first_name
);

-- 2) actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım. --
(
SELECT first_name FROM actor
ORDER BY first_name
)
INTERSECT
(
SELECT first_name FROM customer
ORDER BY first_name
);

-- 3) actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım. --
(
SELECT first_name FROM actor
ORDER BY first_name
)
EXCEPT
(
SELECT first_name FROM customer
ORDER BY first_name
);

-- 4) İlk 3 sorguyu tekrar eden veriler için de yapalım. 

-- first query
(
SELECT first_name FROM actor
ORDER BY first_name 
)
UNION ALL
(
SELECT first_name FROM customer
ORDER BY first_name
);

--second query

(
SELECT first_name FROM actor
ORDER BY first_name
)
INTERSECT ALL
(
SELECT first_name FROM customer
ORDER BY first_name
);

-- third query
(
SELECT first_name FROM actor
ORDER BY first_name
)
EXCEPT ALL
(
SELECT first_name FROM customer
ORDER BY first_name
);

-- ## NOTES ## --
-- union birleşimini alır
-- ancak veriler aynı tipte ve eş sutünlarda olmalıdır.

-- intersect, uniondaki ortak verileri getirir.

-- except, ilk sorguda olan ama ikinci sorguda olmayan verileri getirir.
