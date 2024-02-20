use Sales_w3schools

go

CREATE TABLE Shippers (
  ShipperID INT NOT NULL IDENTITY(1,1),
  ShipperName NVARCHAR(50) NOT NULL,
  Phone NVARCHAR(16)

  constraint pk_Shippers PRIMARY KEY CLUSTERED (ShipperID)
);
-----------------------------------------------------------------------
-- INSERTING VALUES

SET IDENTITY_INSERT Shippers ON;
 
INSERT INTO Shippers (ShipperID, ShipperName, Phone)
VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

SET IDENTITY_INSERT Shippers OFF;

