.open ddlpractice.sqlite
-- Switching on Referential Integrity Rules - Foreign Key rules 
PRAGMA foreign_keys = ON;

--DROP TABLE IS EXITS, need to think the order about dropping as some are dependent 
DROP TABLE IF EXISTS SalesStaff;
DROP TABLE IF EXISTS appearance;
DROP TABLE IF EXISTS contacts;
--create parent table
CREATE TABLE contacts (
    contactsID INTEGER PRIMARY KEY NOT NULL,
    fname VARCHAR(25),
    lname VARCHAR(25),
    email VARCHAR(25),
    phone CHAR(11)
);

-- INSERT DATA INTO TABLE

INSERT INTO contacts (fname, lname, email, phone)
VALUES
       ('Louis', 'Darbost', 'LD@gmail.com', '07704926872'),
       ('Steve', 'Jobs', 'stevejobs@boss.com', '0111111111'),
       ('Joe', 'Mehf', 'JoeMehf@you.com', '069420694200'),
       ('Mike', 'Abu', 'MikeAbu@co.org', '0777777777');

-- My made Table
CREATE TABLE SalesStaff (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,  -- Automatically increment EmployeeID
    SalesPerson VARCHAR(25),
    SalesOffice VARCHAR(25),
    OfficeNumber VARCHAR(15),  -- Specify data type for OfficeNumber
    Customer1 VARCHAR(8) DEFAULT 'No information',
    Customer2 VARCHAR(8) DEFAULT 'No information',
    Customer3 VARCHAR(8) DEFAULT 'No information',
    CONSTRAINT chk_OfficeNumber CHECK (OfficeNumber LIKE '0%' AND LENGTH(OfficeNumber) BETWEEN 0 AND 15)
);

-- INSERT DATA INTO TABLE

INSERT INTO SalesStaff (EmployeeID, SalesPerson, SalesOffice, OfficeNumber, Customer1, Customer2, Customer3)
VALUES
       (1003, 'Mary Smith', 'Chicago', '07704926872', 'Ford', 'GM', '');

INSERT INTO SalesStaff (SalesPerson, SalesOffice, OfficeNumber, Customer1, Customer2, Customer3)
VALUES ('John Hunt', 'New York', '0949038', 'Dell', 'HP', 'Google'),
       ('Louis Darbost', 'London', '0949458', '', '', 'Apple' );

INSERT INTO SalesStaff (SalesPerson)
VALUES ('Mike Polse');

-- Child Table to Contacts, need to be dropped first as relies on Contacts
CREATE TABLE appearance (
    appearanceID INTEGER PRIMARY KEY NOT NULL,
    haircolour VARCHAR(20) CHECK ( haircolour IN('black', 'brown', 'blonde')),
    wearsGlasses BOOLEAN,
    contactsID INTEGER, 
    FOREIGN KEY (contactsID) REFERENCES contacts
);

INSERT INTO appearance (haircolour, wearsglasses, contactsID)
VALUES ('brown', TRUE, 1 ),
       ('black', FALSE, 2 ),
       ('brown', TRUE, 3 );
       
       
