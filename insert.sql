INSERT INTO singer(singer_name)
VALUES
	('Smino'),
	('Tyga'),
	('21 Savage');

INSERT INTO genre(genre_name)
VALUES
	('Hip hop'),
	('Pop'),
	('Country');

INSERT INTO album(album_name, album_year)
VALUES
	('Alone in a Crowd', 2023),
	('Legendary', 2019),
	('American Dream', 2024);

INSERT INTO song(song_name, song_length, album_id)
VALUES
	('Highlight of My Life', '00:02:47', 1),
	('Essence', '00:02:49', 1),
	('Too Many', '00:02:25', 2),
	('Lightskin Lil Wayne', '00:02:33', 2),
	('Letter to My Brudda', '00:03:18', 3),
	('Redrum', '00:04:30', 3);

INSERT INTO collection(collection_name, collection_year)
VALUES
	('In car', 2021),
	('Lo-Fi', 2018),
	('Bass', 2019),
	('Chill', 2024);

INSERT INTO singer_genre (singer_id, genre_id) 
VALUES
    (1, 3),
    (2, 2),
    (3, 1),
    (4, 1);

INSERT INTO singer_album (singer_id, album_id) 
VALUES
    (1, 1),
    (2, 2),
    (3, 3);

INSERT INTO song_collection (song_id, collection_id) 
VALUES
    (1, 2),
    (2, 1),
    (3, 3),
    (4, 4),
    (5, 4),
    (6, 2);