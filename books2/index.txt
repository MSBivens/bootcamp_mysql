-- Create 5 different authors: Jane Austen, Emily Dickinson, Fyodor Dostoevsky, William Shakespeare, Lau Tzu
INSERT INTO authors (name)
VALUES ("Jane Austen"),("Emily Dickenson"), ("Fyodor Dostoevsky"), ("William Shakespeare"), ("Lau Tzu");

-- Create 5 books with the following names: C Sharp, Java, Python, PHP, Ruby
INSERT INTO books (title)
VALUES ("C Sharp"), ("Java"), ("Python"), ("PHP"), ("Ruby");

-- Change the name of the C Sharp book to C#
UPDATE books SET title = "C#" WHERE books.id = 1;

-- Change the first name of the 4th author to Bill
UPDATE authors SET name = "Bill Shakespeare" WHERE id = 4;

-- Have the first author favorite the first 2 books
INSERT INTO favorites (author_id,book_id)
VALUES (1,1),(1,2);

-- Have the second author favorite the first 3 books
INSERT INTO favorites (author_id,book_id)
VALUES (2,1),(2,2),(2,3);

-- Have the third author favorite the first 4 books
INSERT INTO favorites (author_id,book_id)
VALUES (3,1),(3,2),(3,3),(3,4);

-- Have the fourth author favorite all the books
INSERT INTO favorites (author_id,book_id)
VALUES (4,1),(4,2),(4,3),(4,4),(4,5);

-- Retrieve all the authors who favorited the 3rd book
SELECT * FROM books
JOIN favorites ON books.id = favorites.book_id
Join authors ON authors.id = favorites.author_id
WHERE books.id = 3;

-- Remove the first author of the 3rd book's favorites
DELETE FROM favorites 
WHERE book_id = 3
AND author_id = 2;

-- Add the 5th author as an other who favorited the 2nd book
INSERT INTO favorites (author_id,book_id)
Values (5,2);

-- Find all the books that the 3rd author favorited
SELECT * FROM authors
JOIN favorites ON authors.id = favorites.author_id
Join books ON books.id = favorites.book_id
WHERE authors.id = 3;

-- Find all the authors that favorited the 5th book
SELECT * FROM books
JOIN favorites ON books.id = favorites.book_id
Join authors ON authors.id = favorites.author_id
WHERE books.id = 5;