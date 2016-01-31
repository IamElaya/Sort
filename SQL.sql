1.
SELECT e.isbn
FROM editions AS e INNER JOIN publishers AS p 
ON e.publisher_id = p.id 
WHERE p.name = 'Random House';

2.
SELECT e.isbn, b.title
FROM publishers AS p 
JOIN editions AS e ON p.id = e.publisher_id
JOIN books AS b ON b.id = e.book_id
WHERE p.name = 'Random House';

3.
SELECT e.isbn, b.title, s.stock, s.retail
FROM editions AS e 
JOIN publishers AS p ON p.id = e.publisher_id
JOIN books AS b ON b.id = e.book_id
JOIN stock AS s ON s.isbn = e.isbn
WHERE p.name = 'Random House';

4.
SELECT e.isbn, b.title, s.stock, s.retail
FROM editions AS e 
JOIN publishers AS p ON p.id = e.publisher_id
JOIN books AS b ON b.id = e.book_id
JOIN stock AS s ON s.isbn = e.isbn
WHERE p.name = 'Random House' 
AND NOT s.stock = '0';

5.
SELECT *,
  CASE WHEN type = 'h' THEN 'Hardcover'
    WHEN type = 'p' THEN 'Paperback'
    END AS type
    FROM editions;

6.
SELECT b.title, e.publication
FROM books AS b
FULL OUTER JOIN editions AS e ON b.id = e.book_id; 

7.
SELECT SUM(stock)
FROM stock

8.
SELECT avg(cost) AS average_cost,
  avg(retail) AS average_price,
  avg(retail - cost) AS average_proit
  FROM stock;

9.
SELECT MAX(stock), e.book_id
FROM (stock as s NATURAL JOIN editions) 
JOIN editions as e (isbn)
 USING (isbn)
GROUP BY e.book_id
ORDER BY max DESC
LIMIT 1;

10.
SELECT count(b.id) AS "number of books", a.id AS "ID",
  CONCAT(a.first_name, a.last_name) AS "Fullname"
  FROM books AS b
  INNER JOIN authors AS a
  ON (b.author_id = a.id)
  GROUP BY a.id;

11.
  SELECT count(b.id) AS "number of books", a.id AS "ID",
  CONCAT(a.first_name, a.last_name) AS "Fullname"
  FROM books AS b
  INNER JOIN authors AS a
  ON (b.author_id = a.id)
  GROUP BY a.id
  ORDER BY "number of books" DESC;

  12.
  SELECT b.title
FROM books AS b
JOIN editions as c
ON b.id = c.book_id
WHERE type = 'h' 

13.
SELECT AVG(s.cost) AS "Average book sale price", SUM(e.edition) AS "number of editions", p.id AS "ID"
FROM stock as s
JOIN editions as e
ON s.isbn = e.isbn
JOIN publishers as p
ON e.publisher_id = p.id
GROUP BY p.id
