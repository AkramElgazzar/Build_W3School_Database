USE Sales_w3schools;
GO

CREATE TABLE Categories (
  CategoryID INT NOT NULL IDENTITY(1,1),
  CategoryName NVARCHAR(50) NOT NULL,
  Description NVARCHAR(255),
  CONSTRAINT pk_Categories PRIMARY KEY CLUSTERED (CategoryID)
);
--------------------------------------------------------------
-- INSERTING VALUES

INSERT INTO Categories (CategoryName, Description)
VALUES
('Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
('Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
('Confections', 'Desserts, candies, and sweet breads');

select * from Categories;


INSERT INTO Categories (CategoryName, Description)
VALUES
('Dairy Products', 'Cheeses'),
('Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
('Meat/Poultry', 'Prepared meats'),
('Produce', 'Dried fruit and bean curd'),
('Seafood', 'Seaweed and fish');