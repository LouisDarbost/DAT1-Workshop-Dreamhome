.open checkExercise.sqlite
-- Switching on Referential Integrity Rules - Foreign Key rules 
PRAGMA foreign_keys = ON;

--DROP TABLE IS EXITS, need to think the order about dropping as some are dependent 
DROP TABLE IF EXISTS contactsExercise;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS voter;
DROP TABLE IF EXISTS books;


-- Table1
CREATE TABLE contactsExercise (
    contact_id INTEGER PRIMARY KEY NOT NULL,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email TEXT NOT NULL,
    phone TEXT NOT NULL,
    CONSTRAINT chk_phone CHECK (LENGTH(phone) >= 10)
);

CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT NOT NULL,
    list_price DECIMAL (10,2) NOT NULL,
    discount DECIMAL (10, 2) NOT NULL,
    CONSTRAINT chk_prices CHECK(list_price >= discount AND list_price >= 0 AND discount >= 0)
);

CREATE TABLE voter (
    voter_id INTEGER PRIMARY KEY,
    name TEXT,
    age INTEGER,
    dob DATE,
    CONSTRAINT chk_age CHECK(age >= 18),
    CONSTRAINT chk_voterid CHECK (voter_id IN (101, 102, 103, 104, 105, 106))
);
-- Could also do  CONSTRAINT chk_voterid CHECK (voter_id BETWEEN 101 AND 106)

CREATE TABLE books (
    id INTEGER PRIMARY KEY,
    name VARCHAR(50),
    price INTEGER,
    disc_Price INTEGER,
    description VARCHAR(1000),
    CONSTRAINT chk_disc_price CHECK(disc_price < price AND disc_price > 0)
);