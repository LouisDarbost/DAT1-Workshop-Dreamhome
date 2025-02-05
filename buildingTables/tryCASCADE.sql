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
        ON UPDATE SET NULL -- When artistid changes, the trackartist will be null 
        -- ON UPDATE SET DEFAULT - When artistid changes, the trackartist will be default 
);

INSERT INTO artist(artistid, artistname) VALUES
(1, 'Dean Martin'),
(2, 'Louis Darbost');

INSERT INTO track(trackid, trackname, trackartist) VALUES
(11, 'That is Amore', 1),
(12, 'Christmas Blues', 1),
(13, 'My Way', 2);

-- DELETE FROM artist WHERE artistid = 1;   , Dean Martin (1) has been deleted and so has his tracks
-- UPDATE artist SET artistid = 10 WHERE artistid = 1; Dean Martin(1)has his artist id from 1 to 10. Due to the foreign key, there is no reference anymore to the trackartist. The values in Trackartist is NULL now


