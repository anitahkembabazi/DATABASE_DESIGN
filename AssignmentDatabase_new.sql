--GROUP D
--KEMBABAZI ANITAH	M24B38/007
--MUGULO DANIEL MAGERO	M24B38/017
--NORAH NAKAYE	M24B23/008
--ABANGIRA PRECIOUS	M24B23/028
--ALIER PECH EMMANUEL	M24B23/039
--ANDREA HEARTILY NABUUMA	M24B23/024
--NAKIWALA JOSEPHINE	M24B23/044

--Let's first create the database
CREATE DATABASE AIRPORT;

SHOW DATABASES;

-- Creating tables in the databases
USE AIRPORT;

CREATE TABLE Passengers (
    PassportNo INT,
    FirstName VARCHAR(45),
    MiddelName VARCHAR(45),
    LastName VARCHAR(45),
    DateOfBirth DATE,
    Gender VARCHAR(6),
    Nationality VARCHAR(45),
    PRIMARY KEY (PassportNo)
);

ALTER TABLE Passengers
MODIFY PassportNo INT NOT NULL,
ADD Email VARCHAR(45) UNIQUE;

--INSERT records
INSERT INTO
    Passengers (
        PassportNo,
        FirstName,
        MiddelName,
        LastName,
        DateOfBirth,
        Gender,
        Nationality
    )
VALUES (
        123456,
        'Duncan',
        'Kyotera',
        'Mukasa',
        '1986-10-12',
        'Male',
        'Ugandan'
    ),
    (
        346734,
        'Ritah',
        'Sarah',
        'Atimango',
        '1999-09-15',
        'Female',
        'Ugandan'
    ),
    (
        778945,
        'Clare',
        'S',
        'Atim',
        '2000-02-29',
        'Female',
        'Kenyan'
    )

SELECT * FROM Passengers;

CREATE TABLE Luggage (
    TagNo INT,
    LWeight VARCHAR(10),
    LType VARCHAR(10),
    ModeOfCarry VARCHAR(40),
    PassportNo INT,
    PRIMARY KEY (TagNo),
    FOREIGN KEY (PassportNo) REFERENCES Passengers (PassportNo)
);

ALTER TABLE Luggage ADD FlightNo VARCHAR(45);

ALTER TABLE Luggage DROP FlightNo;

ALTER TABLE Luggage MODIFY LType VARCHAR(30);

--Insert Records
INSERT INTO
    Luggage
VALUES (
        123,
        '45kgs',
        'Normal',
        'Checkin',
        123456
    ),
    (
        143,
        '36kgs',
        'Fragile',
        'Handheld',
        346734
    ),
    (
        234,
        '56kgs',
        'Normal',
        'Checkin',
        778945
    )
    -- SHOWING WHAT IS IN THE TABLES
SELECT *
FROM Luggage;

--DELETING RECORDS
DELETE FROM Luggage
WHERE
    TagNo = '123'
    --CHECKING TO ENSURE THE RECORDS ARE DELETED
SELECT *
FROM Luggage

CREATE TABLE Passports (
    PassportsID INT,
    TypeOfPassport VARCHAR(45),
    PassportMode VARCHAR(40),
    PassportNo INT,
    PRIMARY KEY (PassportsID),
    FOREIGN KEY (PassportNo) REFERENCES Passengers (PassportNo)
);

INSERT INTO
    Passports
VALUES (
        1,
        'Ordinary_Passport',
        'Physical',
        346734
    ),
    (
        2,
        'Diplomatic_Passport',
        'Electronic',
        123456
    );

INSERT INTO Passports

CREATE TABLE Disability (
    DisabilityID INT,
    NameOfDisability VARCHAR(100),
    Exemptions VARCHAR(100),
    PRIMARY KEY (DisabilityID)
);

INSERT INTO
    Disability
VALUES (12, 'Blind', 'Board_First'),
    (
        10,
        'Partial Blindness',
        'Board_Alone'
    ),
    (
        09,
        'Short Breath',
        'Board_First'
    );

CREATE TABLE TicketClass (
    ClassID INT,
    ClassType VARCHAR(30),
    PassportNo INT,
    PRIMARY KEY (ClassID),
    FOREIGN KEY (PassportNo) REFERENCES Passengers (PassportNo)
);

INSERT INTO
    TicketClass
VALUES (1, 'First_Class', 123456),
    (2, 'Business_Class', 346734),
    (3, 'Economy _Class', 778945);

CREATE TABLE Meals (
    MealsId INT,
    NameOfMeal VARCHAR(45),
    TypeOfMeal VARCHAR(30),
    PassportNo INT,
    PRIMARY KEY (MealsID),
    FOREIGN KEY (PassportNo) REFERENCES Passengers (PassportNo)
);

INSERT INTO
    Meals
VALUES (
        1,
        'Mediterranean',
        'Beef',
        123456
    ),
    (
        2,
        'East-African',
        'Vegeteranian',
        778945
    ),
    (3, 'Asian', 'Sushi', 346734)

CREATE TABLE Aircraft (
    AircraftID INT,
    AircarftType VARCHAR(45),
    Capacity INT,
    SafetyStandard VARCHAR(50),
    PRIMARY KEY (AircraftID)
);

INSERT INTO
    Aircraft
VALUES (
        1,
        'Boeing_787',
        213,
        'FlightWorthy'
    ),
    (
        2,
        'Boeing_737_Max',
        115,
        'Service_Due'
    ),
    (
        3,
        'Airbus_A350',
        194,
        'FlightWorthy'
    );

USE Airport;

DROP TABLE Airlines;

--Selecting Data
SELECT AirlineID, AirlineName FROM Airlines WHERE AirlineID = 12

CREATE TABLE CrewMembers (
    CrewMembersID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    PRIMARY KEY (CrewMembersID),
);

INSERT INTO
    CrewMembers
VALUES (133, 'Kingo', 'Malwa', 10),
    (123, 'Godfrey', 'Silas', 10),
    (150, 'Klaus', 'Simanyi', 12)

CREATE TABLE Connections (
    ConnectionsID INT,
    RouteName VARCHAR(45),
    Frequency VARCHAR(45),
    PRIMARY KEY (ConnectionsID),
);

ALTER TABLE Connections DROP FOREIGN KEY AirlineID;

INSERT INTO
    Connections
VALUES (500, 'EBB-NRB', '5x Weekly'),
    (502, 'LAG-EBB', '3x Weekly'),
    (510, 'EBB-DDM', '4x Weekly');

SELECT * FROM Connections;

CREATE TABLE Runways (
    RunwaysID INT,
    RunwayName VARCHAR(45),
    Capacity VARCHAR(40),
    PRIMARY KEY (RunwaysID)
);

INSERT INTO
    Runways
VALUES (1, 'East-West', '40,000Kgs'),
    (2, 'Old-Runway', '10,000Kgs');

CREATE TABLE AirportStaff (
    StaffID INT,
    FirstName VARCHAR(45),
    LastName VARCHAR(45),
    Gender VARCHAR(6),
    FacilityID INT,
    Shift VARCHAR(45),
    PRIMARY KEY (StaffID),
    FOREIGN KEY (FacilityID) REFERENCES Facilities (FacilityID)
);

INSERT INTO
    AirportStaff
VALUES (
        34,
        'King',
        'Musa',
        'Male',
        12,
        'Night'
    ),
    (
        23,
        'Sarah',
        'Nankya',
        'Female',
        14,
        'Day'
    ),
    (
        123,
        'Ninah',
        'Nzuki',
        'Female',
        13,
        'Night'
    );

CREATE TABLE Facilities (
    FacilityID INT,
    NameOfFacility VARCHAR(45),
    TypeOfFacility VARCHAR(45),
    PRIMARY KEY (FacilityID)
);

INSERT INTO
    Facilities
VALUES (
        12,
        'Left-Bathroom',
        'Bathroom'
    ),
    (13, 'Kyapa', 'Lounge'),
    (14, 'Cloud_Nine', 'Lounge');

use airport;

show TABLES;