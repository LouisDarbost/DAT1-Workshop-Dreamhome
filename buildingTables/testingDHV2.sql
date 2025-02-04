.open dreamHomeV2.sqlite

SELECT DISTINCT staffNo FROM propertyforrent
WHERE staffNo IS NOT NULL AND staffNo NOT IN (SELECT staffNo FROM Staff);

