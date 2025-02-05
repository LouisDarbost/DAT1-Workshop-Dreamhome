.open practiceJoins.sqlite
.mode box
SELECT * FROM vehicles v INNER JOIN drivers d ON v.vehicleid = d.car ORDER BY vehicleID ASC;

SELECT * FROM vehicles v LEFT OUTER JOIN drivers d ON v.vehicleid = d.car ORDER BY vehicleID ASC;