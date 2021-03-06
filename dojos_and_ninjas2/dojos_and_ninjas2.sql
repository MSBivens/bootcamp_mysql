-- Create 3 new dojos
INSERT INTO dojos (name)
VALUES ("Alpha"), ("Beta"), ("Gamma");

-- Delete the 3 dojos you just created
SET SQL_SAFE_UPDATES = 0;
DELETE FROM dojos;

-- Delete the 3 dojos you just created
INSERT INTO dojos (name)
VALUES ("Delta"), ("Epsilon"), ("Zeta");

-- Create 3 ninjas that belong to the first dojo
INSERT INTO ninjas (first_name,last_name,age,dojo_id)
VALUES ("Mike","Bivens",26,1),
("Cleighton","John",25,1),
("Marco","Jack",26,1);

-- Create 3 ninjas that belong to the second dojo
INSERT INTO ninjas (first_name,last_name,age,dojo_id)
VALUES ("Jane","Doe",27,2),
("Brad","Long",28,2),
("Greg","Lion",22,2);

-- Create 3 ninjas that belong to the third dojo
INSERT INTO ninjas (first_name,last_name,age,dojo_id)
VALUES ("Richard","Friend",36,3),
("Eric","Clinton",21,3),
("Laura","Pringle",30,3);

-- Retrieve all the ninjas from the first dojo
SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = 1;

-- Retrieve all the ninjas from the last dojo
SELECT * FROM dojos
LEFT JOIN ninjas ON dojos.id = ninjas.dojo_id
WHERE dojos.id = 3;

-- Retrieve the last ninja's dojo
SELECT * FROM dojos WHERE dojos.id = (SELECT dojo_id FROM ninjas WHERE id = 15);