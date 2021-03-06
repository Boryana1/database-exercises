use codeup_test_db;

-- SELECT The name of all albums by Pink Floyd.
SELECT album_name FROM albums WHERE artist = 'Pink Floyd';

-- SELECT The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- SELECT The genre for Nevermind
SELECT genre FROM albums WHERE album_name = 'Nevermind';

-- SELECT Which albums were released in the 1990s
SELECT * FROM albums WHERE release_date LIKE '199%';

-- SELECT Which albums had less than 20 million certified sales
SELECT * FROM albums WHERE  sales < 20;

-- SELECT All the albums with a genre of "Rock".
SELECT * FROM albums WHERE genre = 'Rock';