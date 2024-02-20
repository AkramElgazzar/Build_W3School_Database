use Sales_w3schools

go


CREATE TABLE Employees (
  EmployeeID INT NOT NULL IDENTITY(1,1),
  LastName NVARCHAR(50) NOT NULL,
  FirstName NVARCHAR(50) NOT NULL,
  BirthDate DATE,
  Photo VARBINARY(MAX),
  Notes NVARCHAR(MAX)

  CONSTRAINT pk_Employees PRIMARY KEY CLUSTERED (EmployeeID)
);

SET IDENTITY_INSERT Employees ON;
INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Notes)
VALUES
(1, 'Davolio', 'Nancy', '1968-12-08', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \Toastmasters International\.'),
(2, 'Fuller', 'Andrew', '1952-02-19', 'Andrew received his BTS commercial and....'),
(3, 'Leverling', 'Janet', '1963-08-30', 'Janet has a BS degree in chemistry from Boston College)....'),
(4, 'Peacock', 'Margaret', '1958-09-19', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts....'),
(5, 'Buchanan', 'Steven', '1955-03-04', 'Steven Buchanan graduated from St. Andrews University...'),
(6, 'Suyama', 'Michael', '1963-07-02', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles ...'),
(7, 'King', 'Robert', '1960-05-29', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then....'),
(8, 'Callahan', 'Laura', '1958-01-09', 'Laura received a BA in psychology from the University of Washington....'),
(9, 'Dodsworth', 'Anne', '1969-07-02', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
(10, 'West', 'Adam', '1928-09-19', 'An old chum.');

SET IDENTITY_INSERT Employees OFF;