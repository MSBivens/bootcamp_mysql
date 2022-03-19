-- Create 6 users
INSERT INTO users (first_name,last_name)
VALUES ("Naruto","Uzumaki"),("Sasuke","Uchiha"),("Sakura","Haruno"),("Hunata","Hyuga"),("Kiba","Inuzuka"),("Shino","Aburame");

-- Have user 1 be friends with user 2, 4, and 6
-- Have user 2 be friends with user 1, 3 and 5
-- Have user 3 be friends with user 2 and 5
-- Have user 4 be friends with user 3
-- Have user 5 be friends with user 1 and 6
-- Have user 6 be friends with user 2 and 3
INSERT INTO friendships (user_id,friend_id)
VALUES (1,2),(1,4),(1,6),(2,1),(2,3),(2,5),(3,2),(3,5),(4,3),(5,1),(5,6),(6,2),(6,3);

-- Display the relationships create as shown in the provided image
SELECT users.first_name, users.last_name, users2.first_name AS friend_first_name, users2.last_name AS friend_last_name FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id;

-- Return all users who are friends with the first user, make sure their names are displayed in results.
SELECT users2.first_name AS first_name, users2.last_name AS last_name, users.first_name AS friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id
WHERE users.id = 1;

-- Return the count of all friendships
SELECT COUNT(*) AS num_of_friendships from friendships;

-- Find out who has the most friends and return the count of their friends.
SELECT user_id, users.frist_name, users.last_name, count(user_id) AS num_of_friends FROM friendships
JOIN users ON users.id = friendships.user_id
GROUP BY user_id
ORDER BY num_of_friends DESC
LIMIT 1;

-- Return the friends of the third user in alphabetical order
SELECT users2.first_name AS first_name, users2.last_name AS last_name, users.first_name AS friends_with FROM users
JOIN friendships ON users.id = friendships.user_id
LEFT JOIN users AS users2 ON users2.id = friendships.friend_id
WHERE users.id = 3
ORDER BY first_name;