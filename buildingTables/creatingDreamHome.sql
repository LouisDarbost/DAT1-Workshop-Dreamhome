.open dreamHomeV2.sqlite
-- Switching on Referential Integrity Rules - Foreign Key rules 
PRAGMA foreign_keys = ON;

--DROP TABLE IS EXITS, need to think the order about dropping as some are dependent 
DROP TABLE IF EXISTS propertyforrent;
DROP TABLE IF EXISTS Staff;
DROP TABLE IF EXISTS PrivateOwner;
DROP TABLE IF EXISTS Branch;


CREATE TABLE Branch (
    branchNo CHAR(4) PRIMARY KEY,
    street VARCHAR(32),
    city VARCHAR(32),
    postcode VARCHAR(8)
);

INSERT INTO Branch (branchno, street, city, postcode) VALUES
('B721', '22 Deer Rd', 'London', 'SW1 4EH'),
('B394', '16 Argyll St', 'Aberdeen', 'AB2 3SU'),
('B052', '163 Main St', 'Glasgow', 'G11 9QX'),
('B678', '32 Manse Rd', 'Bristol', 'BS99 1NZ'),
('B901', '56 Clover Dr', 'London', 'NW10 6EU'),
('B235', '123 Park Ave', 'Edinburgh', 'EH1 3QR'),
('B467', '78 High St', 'Cardiff', 'CF10 1AA'),
('B189', '55 Seaside Rd', 'Brighton', 'BN1 1AA'),
('B843', '12 West End Ave', 'Manchester', 'M1 2BB'),
('B576', '33 Main St', 'Liverpool', 'L1 2HJ');

CREATE TABLE PrivateOwner (
    ownerNo CHAR(4) PRIMARY KEY,
    fName VARCHAR(25),
    lName VARCHAR(25),
    address VARCHAR(50),
    telNo VARCHAR(15),
    eMail VARCHAR(25),
    password VARCHAR(30)
);

-- Private Owner data
INSERT INTO PrivateOwner (ownerNo, fName, lName, address, telNo, eMail, password) VALUES
('PO4621', 'Joe', 'Keogh', '2 Fergus Dr, Aberdeen AB2 7SX', '01224-861212', 'jkeogh@lhh.com', '********'),
('PO8734', 'Carol', 'Farrel', '6 Achray St, Glasgow G32 9DX', '0141-357-7419', 'cfarrel@gmail.com', '********'),
('PO4023', 'Tina', 'Murphy', '63 Well St, Glasgow G42', '0141-943-1728', 'tinam@hotmail.com', '********'),
('PO9312', 'Tony', 'Shaw', '12 Park Pl, Glasgow G4 0QR', '0141-225-7025', 'tony.shaw@ark.com', '********'),
('PO4756', 'Alice', 'James', '10 Hill St, Edinburgh EH2 3DQ', '0131-221-1221', 'ajames@domain.com', '********'),
('PO8865', 'Bruce', 'Wayne', '22 Wayne Manor, Gotham City', '0208-555-0199', 'bruce@wayne.com', '********'),
('PO4178', 'Diana', 'Prince', '45 Themyscira Ave, Paradise Island', '0141-300-8292', 'diana@amazon.com', '********'),
('PO9489', 'Clark', 'Kent', '5 Smallville St, Kansas', '0242-555-0123', 'clark@planet.com', '********'),
('PO4823', 'Henry', 'Brown', '20 King St, Liverpool L1 9DG', '0151-123-9876', 'hbrown@domain.com', '********'),
('PO4967', 'Oliver', 'Smith', '5 Queen St, Manchester M3 1DU', '0161-456-7891', 'osmith@domain.com', '********'),
('PO5012', 'Emily', 'Davis', '15 Princess St, Cardiff CF24 1BY', '029-8765-4321', 'edavis@domain.com', '********'),
('PO5134', 'Sophie', 'Jones', '33 Castle St, Bristol BS1 4PQ', '0117-432-5678', 'sjones@domain.com', '********'),
('PO5278', 'George', 'Taylor', '12 York Rd, Leeds LS1 4AJ', '0113-789-1234', 'gtaylor@domain.com', '********'),
('PO5389', 'Isabella', 'Wilson', '45 Park Rd, Edinburgh EH1 5BU', '0131-123-4567', 'iwilson@domain.com', '********'),
('PO5467', 'Mia', 'Thomas', '29 Station St, Birmingham B2 4RT', '0121-987-6543', 'mthomas@domain.com', '********'),
('PO5598', 'Jacob', 'White', '50 Grove Rd, Newcastle NE1 4BP', '0191-567-8901', 'jwhite@domain.com', '********'),
('PO5612', 'Lucas', 'Moore', '80 Elm St, Brighton BN1 2RT', '01273-654-9876', 'lmoore@domain.com', '********'),
('PO5789', 'Grace', 'Martin', '60 Crescent Rd, Oxford OX1 1LP', '01865-432-1098', 'gmartin@domain.com', '********'),
('PO5823', 'Daniel', 'Harris', '25 Oak Lane, Sheffield S1 2AA', '0114-987-6543', 'dharris@domain.com', '********'),
('PO5967', 'Lily', 'Clark', '8 Maple Road, Nottingham NG1 5BB', '0115-876-5432', 'lclark@domain.com', '********'),
('PO6023', 'Thomas', 'Lewis', '17 Cedar Avenue, Leicester LE1 7CC', '0116-765-4321', 'tlewis@domain.com', '********'),
('PO6178', 'Ella', 'Walker', '39 Pine Street, Southampton SO14 0DD', '023-8765-4321', 'ewalker@domain.com', '********'),
('PO6234', 'Charlie', 'Hall', '52 Birch Close, Plymouth PL1 1EE', '01752-345-6789', 'chall@domain.com', '********');


CREATE TABLE Staff (
    staffNo VARCHAR(4) PRIMARY KEY,
    fName VARCHAR(25),
    lName VARCHAR(25),
    position VARCHAR(25),
    sex CHAR(1),
    dob DATE,
    salary INTEGER, 
    branchNo CHAR(4),
    FOREIGN KEY (branchNo) REFERENCES branch(branchNo)
);

-- Staff data
INSERT INTO Staff (staffNo, fName, lName, position, sex, dob, salary, branchNo) VALUES
-- B052 (Glasgow)
('SAS37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10', 12000, 'B052'),
('SAS50', 'Emily', 'Wright', 'Assistant', 'F', '1990-08-14', 10000, 'B052'),
('SAS51', 'Thomas', 'Hall', 'Assistant', 'M', '1992-04-29', 9700, 'B052'),
('SMA05', 'Susan', 'Brand', 'Manager', 'F', '1940-06-03', 24000, 'B052'),
('SSU14', 'David', 'Ford', 'Supervisor', 'M', '1958-03-24', 18000, 'B052'),
('SSU49', 'Jack', 'Robinson', 'Supervisor', 'M', '1979-12-03', 21000, 'B052'),

-- B189 (Brighton)
('SAS10', 'James', 'Taylor', 'Assistant', 'M', '1988-12-01', 9500, 'B189'),
('SAS67', 'Alfie', 'Wood', 'Assistant', 'M', '1994-12-09', 9400, 'B189'),
('SMA65', 'Arthur', 'Cox', 'Manager', 'M', '1974-10-14', 27000, 'B189'),
('SSU66', 'Poppy', 'Ward', 'Supervisor', 'F', '1983-06-30', 19000, 'B189'),

-- B235 (Edinburgh)
('SAS61', 'Leo', 'Bell', 'Assistant', 'M', '1994-07-19', 9200, 'B235'),
('SAS62', 'Isla', 'Murphy', 'Assistant', 'F', '1993-05-03', 9300, 'B235'),
('SMA22', 'Alice', 'Johnson', 'Manager', 'F', '1980-04-12', 32000, 'B235'),
('SSU60', 'Evie', 'Morgan', 'Supervisor', 'F', '1980-11-28', 20000, 'B235'),

-- B394 (Aberdeen)
('SAS09', 'Mary', 'Howe', 'Assistant', 'F', '1970-02-19', 9000, 'B394'),
('SAS48', 'Olivia', 'Walker', 'Assistant', 'F', '1994-01-25', 9200, 'B394'),
('SMA46', 'Isabella', 'Clark', 'Manager', 'F', '1976-09-18', 28000, 'B394'),
('SSU47', 'William', 'Moore', 'Supervisor', 'M', '1982-05-07', 19500, 'B394'),

-- B467 (Cardiff)
('SAS38', 'Robert', 'Smith', 'Assistant', 'M', '1990-09-25', 11000, 'B467'),
('SAS63', 'Noah', 'Bailey', 'Assistant', 'M', '1992-01-07', 9700, 'B467'),
('SAS64', 'Freya', 'Richardson', 'Assistant', 'F', '1995-08-21', 9100, 'B467'),
('SSU15', 'Karen', 'Owen', 'Supervisor', 'F', '1975-07-15', 19000, 'B467'),

-- B576 (Liverpool)
('SAS42', 'Michael', 'Davis', 'Assistant', 'M', '1992-01-11', 8800, 'B576'),
('SAS73', 'Edward', 'Khan', 'Assistant', 'M', '1991-04-02', 9800, 'B576'),
('SAS74', 'Ella', 'Gibson', 'Assistant', 'F', '1994-10-28', 9300, 'B576'),
('SMA71', 'Henry', 'Hughes', 'Manager', 'M', '1975-07-05', 28500, 'B576'),
('SSU72', 'Rosie', 'Russell', 'Supervisor', 'F', '1982-11-16', 19500, 'B576'),

-- B678 (Bristol)
('SAS54', 'Amelia', 'Baker', 'Assistant', 'F', '1995-10-05', 9300, 'B678'),
('SAS55', 'Charlie', 'Evans', 'Assistant', 'M', '1993-12-17', 9100, 'B678'),
('SMA52', 'Sophia', 'Green', 'Manager', 'F', '1973-06-11', 29000, 'B678'),
('SSU53', 'Harry', 'Adams', 'Supervisor', 'M', '1981-02-20', 20500, 'B678'),

-- B721 (London)
('SAS41', 'Julie', 'Lee', 'Assistant', 'F', '1965-06-13', 9000, 'B721'),
('SAS44', 'Sophie', 'Taylor', 'Assistant', 'F', '1993-07-22', 9500, 'B721'),
('SAS45', 'George', 'Martin', 'Assistant', 'M', '1991-11-30', 9800, 'B721'),
('SMA21', 'John', 'White', 'Manager', 'M', '1945-10-01', 30000, 'B721'),
('SSU43', 'Oliver', 'Wilson', 'Supervisor', 'M', '1985-03-15', 20000, 'B721'),

-- B843 (Manchester)
('SAS69', 'Archie', 'Long', 'Assistant', 'M', '1993-09-11', 9600, 'B843'),
('SAS70', 'Daisy', 'Collins', 'Assistant', 'F', '1995-02-18', 9200, 'B843'),
('SMA06', 'Emma', 'Brown', 'Manager', 'F', '1978-05-06', 26000, 'B843'),
('SSU68', 'Florence', 'Price', 'Supervisor', 'F', '1981-03-26', 20500, 'B843'),

-- B901 (London)
('SAS58', 'Lily', 'Rogers', 'Assistant', 'F', '1992-09-01', 9600, 'B901'),
('SAS59', 'Max', 'Cooper', 'Assistant', 'M', '1991-03-12', 9400, 'B901'),
('SMA56', 'Grace', 'Morris', 'Manager', 'F', '1977-08-09', 31000, 'B901'),
('SSU57', 'Oscar', 'Cook', 'Supervisor', 'M', '1984-04-23', 21500, 'B901');

CREATE TABLE propertyforrent (
    propertyNo CHAR(4) PRIMARY KEY,
    street VARCHAR(25),
    city VARCHAR(25),
    postcode VARCHAR(8),
    type VARCHAR(5),
    rooms INTEGER, 
    rent INTEGER, 
    ownerNo CHAR(4),
    staffNo VARCHAR(4),
    branchNo CHAR(4),
    FOREIGN KEY (ownerNo) REFERENCES PrivateOwner(ownerNo),
    FOREIGN KEY (staffNo) REFERENCES Staff(staffNo),
    FOREIGN KEY (branchNo) REFERENCES Branch(branchNo)
);

-- Property for Rent data
INSERT INTO propertyforrent (propertyNo, street, city, postcode, type, rooms, rent, ownerNo, staffNo, branchNo) VALUES
('PR1423', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'PO4621', 'SAS09', 'B394'),
('PR9478', '6 Argyll St', 'London', 'NW2', 'Flat', 4, 400, 'PO8734', 'SAS41', 'B721'),
('PR4567', '6 Lawrence St', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'PO4023', NULL, 'B052'),
('PR3689', '2 Manor Rd', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'PO9312', 'SAS37', 'B052'),
('PR2145', '18 Dale Rd', 'Glasgow', 'G12', 'House', 5, 600, 'PO8734', 'SAS37', 'B052'),
('PR1678', '5 Novar Dr', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'PO9312', 'SSU14', 'B052'),
('PR1589', '44 Elm St', 'Edinburgh', 'EH3 5FD', 'Flat', 2, 750, 'PO4756', 'SMA22', 'B235'),
('PR9512', '10 Broadway', 'Cardiff', 'CF24 3SG', 'House', 4, 950, 'PO8865', 'SAS38', 'B467'),
('PR5623', '3 Hillcrest', 'Brighton', 'BN1 3PQ', 'Flat', 1, 420, 'PO4178', NULL, 'B189'),
('PR3734', '1 Riverside', 'Manchester', 'M1 3HJ', 'Flat', 2, 600, 'PO9489', 'SSU15', 'B843'),
('PR2289', '9 Meadow Rd', 'Liverpool', 'L1 4RT', 'House', 3, 800, 'PO8865', 'SMA06', 'B576'),
('PR1534', '20 King St', 'Liverpool', 'L1 9DG', 'Flat', 3, 600, 'PO4823', 'SMA06', 'B576'),
('PR1645', '5 Queen St', 'Manchester', 'M3 1DU', 'House', 5, 1200, 'PO4967', 'SSU15', 'B843'),
('PR1756', '15 Princess St', 'Cardiff', 'CF24 1BY', 'Flat', 2, 700, 'PO5012', 'SAS38', 'B467'),
('PR1867', '33 Castle St', 'Bristol', 'BS1 4PQ', 'House', 4, 850, 'PO5134', 'SAS09', 'B394'),
('PR1978', '12 York Rd', 'Leeds', 'LS1 4AJ', 'Flat', 3, 650, 'PO5278', 'SMA05', 'B052'),
('PR2089', '45 Park Rd', 'Edinburgh', 'EH1 5BU', 'House', 5, 1100, 'PO5389', 'SMA22', 'B235'),
('PR2190', '29 Station St', 'Birmingham', 'B2 4RT', 'Flat', 2, 550, 'PO5467', 'SSU14', 'B052'),
('PR2323', '80 Elm St', 'Brighton', 'BN1 2RT', 'Flat', 1, 450, 'PO5612', 'SAS10', 'B189'),
('PR2545', '18 Abbey Rd', 'Liverpool', 'L12 5BW', 'Flat', 3, 750, 'PO4823', 'SAS41', 'B721'),
('PR2656', '7 Market St', 'Manchester', 'M2 2FJ', 'House', 4, 950, 'PO4967', 'SSU15', 'B843'),
('PR2767', '9 Victoria St', 'Cardiff', 'CF11 6RG', 'Flat', 2, 650, 'PO5012', 'SAS38', 'B467'),
('PR2878', '22 George St', 'Bristol', 'BS2 0DH', 'House', 5, 1000, 'PO5134', 'SMA21', 'B721'),
('PR2989', '11 Church Lane', 'Manchester', 'M4 1NP', 'Flat', 2, 550, 'PO5823', 'SSU15', 'B843'),
('PR3090', '33 Rose Street', 'Glasgow', 'G1 2TU', 'House', 4, 850, 'PO5967', 'SAS37', 'B052'),
('PR3112', '7 Oakwood Drive', 'Birmingham', 'B1 1WW', 'Flat', 3, 700, 'PO6023', 'SSU14', 'B052'),
('PR3223', '19 Willow Road', 'Leeds', 'LS1 5XX', 'House', 5, 1100, 'PO6178', 'SMA05', 'B052'),
('PR3334', '26 Cedar Avenue', 'Bristol', 'BS1 6YY', 'Flat', 2, 600, 'PO6234', 'SAS09', 'B394'),
('PR3445', '42 Maple Street', 'Edinburgh', 'EH1 1ZZ', 'House', 4, 950, 'PO5823', 'SMA22', 'B235'),
('PR3556', '15 Birch Lane', 'Liverpool', 'L1 7AA', 'Flat', 1, 450, 'PO5967', 'SMA06', 'B576'),
('PR3667', '8 Pine Close', 'Cardiff', 'CF10 2BB', 'House', 3, 800, 'PO6023', 'SAS38', 'B467'),
('PR3889', '37 Sycamore Avenue', 'Brighton', 'BN1 4DD', 'House', 5, 1200, 'PO6234', 'SAS10', 'B189');

