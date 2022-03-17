SELECT * FROM users;

INSERT into users (name)
VALUES ("Mike"), ("Marco");

UPDATE setup_schema.users SET name = 'Brock' WHERE id = 3;

DELETE FROM setup_schema.users WHERE id = 2;