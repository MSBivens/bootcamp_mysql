-- Create 3 new users 
INSERT INTO users (first_name, last_name, email)
VALUES ("Mike", "Bivens", "mikebiv95@gmail.com"),
("Marco", "John", "mjohn@gmail.com"),
("Cleighton", "Jack", "cjack@gmail.com");

-- Retrieve all the users
SELECT * FROM users;

-- Retrieve the first user using their email address
SELECT * FROM users WHERE email = "mikebiv95@gmail.com";

-- Retrieve the last user using their id
SELECT * FROM users WHERE id = 3;

-- Change the user with id=3 so their last name is Pancakes
UPDATE users Set last_name = "Pancakes" WHERE users.id = 3;

-- Delete the user with id=2 from the database
DELETE FROM users WHERE users.id = 2;

-- Get all the users, sorted by their last name
SELECT * FROM users ORDER BY first_name;

-- Get all the users, sorted by their last name in descending order
SELECT * FROM users ORDER BY first_name DESC;