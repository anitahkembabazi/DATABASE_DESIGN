CREATE TABLE Crop(
    CName VARCHAR(45),
    CType VARCHAR(45),
    PRIMARY KEY(CropID)
);


CREATE TABLE Farmer_Crop(
    FarmerID INT,
    CropID INT,
    Yields INT,
    Season VARCHAR(45),
    PRIMARY KEY(FarmerID,CropID),
    FOREIGN KEY(FarmerID) REFERENCES Farmer(FarmerID) ON DELETE CASCADE
    FOREIGN KEY
);

