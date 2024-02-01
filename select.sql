-- 2 задание 
SELECT song_name, song_length
FROM song
WHERE song_length = (SELECT MAX(song_length) from song)

SELECT song_name, song_length
FROM song
WHERE song_length >= '00:03:30';

SELECT collection_name, collection_year
FROM collection
WHERE collection_year BETWEEN 2018 AND 2020;

SELECT singer_name
FROM singer

SELECT singer_name
FROM singer
WHERE singer_name NOT LIKE '% %';

SELECT song_name
FROM song
WHERE song_name LIKE '%my%' or song_name LIKE '%My%';

-- 3 задание

SELECT genre.genre_name, COUNT(singer_genre.singer_id) number_of_singers
FROM genre
LEFT JOIN singer_genre ON genre.genre_id = singer_genre.genre_id
GROUP BY genre.genre_name;

SELECT COUNT(song.song_id) number_of_tracks
FROM song
JOIN album ON song.album_id = album.album_id
WHERE album.album_year BETWEEN 2019 AND 2020;

SELECT album.album_name, AVG(song.song_length)
FROM album
JOIN song ON album.album_id = song.album_id
GROUP BY album.album_name;

SELECT singer.singer_name
FROM singer
LEFT JOIN singer_album ON singer.singer_id = singer_album.singer_id
LEFT JOIN album ON singer_album.album_id = album.album_id
WHERE (album.album_year IS NULL) OR (album.album_year != 2020);

SELECT collection.collection_name
FROM collection
JOIN song_collection ON collection.collection_id = song_collection.collection_id
JOIN song ON song_collection.song_id = song.song_id
JOIN singer_album ON song.album_id = singer_album.album_id
JOIN singer ON singer_album.singer_id = singer.singer_id
WHERE singer.singer_name = 'Tyga';
