CREATE TABLE IF NOT EXISTS singer (
    singer_id      SERIAL      PRIMARY KEY,
    singer_name    VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS genre (
    genre_id     SERIAL      PRIMARY KEY,
    genre_name   VARCHAR(40) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS singer_genre (
    singer_id    SERIAL REFERENCES singer(singer_id),
    genre_id     SERIAL REFERENCES genre(genre_id),
                 CONSTRAINT sg PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS album (
    album_id     SERIAL      PRIMARY KEY,
    album_name   VARCHAR(40) NOT NULL UNIQUE,
    album_year   NUMERIC     NOT NULL
);

CREATE TABLE IF NOT EXISTS singer_album (
    singer_id   SERIAL REFERENCES singer(singer_id),
    album_id    SERIAL REFERENCES album(album_id),
                CONSTRAINT sa PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS song (
    song_id       SERIAL         PRIMARY KEY,
    song_name     VARCHAR(40)    NOT NULL UNIQUE,
    song_length   TIME           NOT NULL CHECK (song_length < '00:05:00'),
    album_id      SERIAL         NOT NULL REFERENCES album(album_id)
);

CREATE TABLE IF NOT EXISTS collection (
    collection_id      SERIAL      PRIMARY KEY,
    collection_name    VARCHAR(40) NOT NULL UNIQUE,
    collection_year    INTEGER     NOT NULL
);

CREATE TABLE IF NOT EXISTS song_collection (
    song_id            SERIAL REFERENCES song(song_id),
    collection_id      SERIAL REFERENCES collection(collection_id),
                       CONSTRAINT sc PRIMARY KEY (song_id, collection_id)
);