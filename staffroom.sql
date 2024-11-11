CREATE DATABASE Classroom;

SHOW DATABASES;

USE Classroom;

CREATE TABLE Courses (
    Code INT,
    Name VARCHAR(30),
    Year INT,
    Sem INT,
    CU  VARCHAR(30),
    Program VARCHAR(45)
);


INSERT INTO Courses
VALUES(
    1,
    "Cathy",
    2024,
    1,
    "3",
    "Law"
),
(
    2,
    "Anitah",
    2024,
    2,
    "4",
    "Data Science"
),
(
    3,
    "Trisha",
    2023,
    2,
    "4",
    "Computer Science"
),
(
    4,
    "Cynthia",
    2024,
    2,
    "4",
    "Accounting"
)

SELECT * FROM Courses;





CREATE VIEW view_Student12 AS
SELECT Name, Year, Sem, Program
FROM Courses
WHERE Program = "Data Science" OR Program = "Computer Science";

SELECT *FROM view_Student12

CREATE VIEW HOD AS
SELECT * FROM Courses
WHERE Program = "Data Science" OR Program = "Computer Science";

WHERE Program IN ("Data Science" , "Computer Science")

SELECT * FROM HOD

CREATE VIEW AR AS
SELECT * FROM Courses

SELECT * FROM AR

INSERT INTO AR
VALUES(
    5,
    "Aturinda",
    2024,
    1,
    "3",
    "Business"
)

SELECT * FROM AR

UPDATE AR SET CU = 3 WHERE Program = "Data Science"

SELECT*FROM AR

