-- create database if not exists codeup_test_db;
use codeup_test_db;

-- SELECT The name of all albums by Pink Floyd.

SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- SELECT The year Sgt. Pepper's Lonely Hearts Club Band was released

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- SELECT The genre for Nevermind
-- SELECT Which albums were released in the 1990s
-- SELECT Which albums had less than 20 million certified sales
-- SELECT All the albums with a genre of "Rock".