.open dreamhome.sqlite
.mode column


SELECT propertyNo, street, city, postcode, type, rooms, rent FROM PropertyForRent WHERE StaffNo IN ( SELECT staffNo FROM Staff WHERE branchNo = (SELECT branchNo FROM Branch WHERE street = '163 Main St'));

