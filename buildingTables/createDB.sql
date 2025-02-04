.open ddlpractice.sqlite

--DROP TABLE IS EXITS
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS SalesStaff;

--create table
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


CREATE TABLE SalesStaff (
    EmployeeID INTEGER PRIMARY KEY AUTOINCREMENT,  -- Automatically increment EmployeeID
    SalesPerson VARCHAR(25),
    SalesOffice VARCHAR(25),
    OfficeNumber VARCHAR(15),  -- Specify data type for OfficeNumber
    Customer1 VARCHAR(8),
    Customer2 VARCHAR(8),
    Customer3 VARCHAR(8)
);

-- INSERT DATA INTO TABLE

INSERT INTO SalesStaff (EmployeeID, SalesPerson, SalesOffice, OfficeNumber, Customer1, Customer2, Customer3)
VALUES
       (1003, 'Mary Smith', 'Chicago', '07704926872', 'Ford', 'GM', '');

INSERT INTO SalesStaff (SalesPerson, SalesOffice, OfficeNumber, Customer1, Customer2, Customer3)
VALUES ('John Hunt', 'New York', '0949038', 'Dell', 'HP', 'Google'),
       ('Louis Darbost', 'London', '0949458', '', '', 'Apple' );
