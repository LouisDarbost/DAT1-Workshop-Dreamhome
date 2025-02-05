.open tryCascade.sqlite
-- Switching on Referential Integrity Rules - Foreign Key rules 
PRAGMA foreign_keys = ON;

--DROP TABLE IS EXITS, need to think the order about dropping as some are dependent 
DROP TABLE IF EXISTS track;
DROP TABLE IF EXISTS artist;

CREATE TABLE artist(
    artistid INTEGER PRIMARY KEY,
    artistname TEXT
);

CREATE TABLE track (
    trackid INTEGER,
    trackname TEXT,
    trackartist INTEGER DEFAULT 1,
    FOREIGN KEY (trackartist) REFERENCES artist(artistid)
        ON DELETE CASCADE -- When artist is deleted, so is the tracks
        ON UPDATE SET NULL -- when artistid changes, the tarckartist will be null 
);

INSERT INTO artist(artistid, artistname) VALUES
(1, 'Dean Martin'),
(2, 'Louis Darbost');

INSERT INTO track(trackid, trackname, trackartist) VALUES
(11, 'That is Amore', 1),
(12, 'Christmas Blues', 1),
(13, 'My Way', 2);

