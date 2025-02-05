.open practiceJoins.sqlite
-- Switching on Referential Integrity Rules - Foreign Key rules 


--DROP TABLE IS EXITS, need to think the order about dropping as some are dependent 
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS drivers;

CREATE TABLE vehicles(
    vehicleID INTEGER PRIMARY KEY,
    odoreading INTEGER,
    name VARCHAR(45)
);

CREATE TABLE drivers(
    driverID INTEGER PRIMARY KEY,
    age INTEGER,
    car INTEGER
);


INSERT INTO vehicles(vehicleID, odoreading, name) VALUES
(1, 15000, 'Ford Focus'),
(2, 85000, 'Honda Civic'),
(3, 250000, 'Toyota Camry'),
(4, 5500, 'Dodge Viper'),
(5, 120000, 'Tesla Model 3'),
(6, 35000, 'Ford Fiesta');

INSERT INTO drivers(driverID, age, car) VALUES 
(1,35,3),
(2,28,1),
(3,52,5),
(4,22,4);



