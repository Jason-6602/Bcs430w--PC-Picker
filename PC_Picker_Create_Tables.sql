CREATE TABLE `Desktop` (
  `Desktop_ID` varchar(50) NOT NULL,
  `Make` char(250) NOT NULL,
  `Name` char(50) NOT NULL,
  `Price` char(50) NOT NULL,
  `PartsList_ID` varchar(50)Not Null,
  PRIMARY KEY (`Desktop_ID`)
  FOREIGN KEY (`Desktop_ID`) REFERENCES `Parts List` (`PartsList_ID`)
);

CREATE TABLE `Laptop` (
  `Desktop_ID` varchar(50) NOT Null,
  `Make` char(250) NOT Null,
  `Name` char(50) NOT NULL,
  `Price` char(50) NOT NULL,
  `PartsList_ID` varchar(50),
  PRIMARY KEY (`Laptop_ID`)
  FOREIGN KEY (`Laptop_ID`) REFERENCES `Parts List` (`PartsList_ID`)
);

CREATE TABLE `Parts List` (
  `PartsList_ID` varchar(250) NOT NULL,
  `CPU_Name` varchar(250),
  `GPU_Name` varchar(250),
  `MotherBoardName` varchar(250),
  `RamName` varchar(250),
  `PowerSupplyName` varchar(250),
  `StorageName` varchar(250),
  `ScreenSize` varchar(250),
  PRIMARY KEY (`PartsList_ID`),
  FOREIGN KEY (`PartsList_ID`) REFERENCES `Computer `(`PartsList_ID`)
);

