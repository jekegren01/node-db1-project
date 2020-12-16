-- Database Queries

-- Find all customers with postal code 1010
SELECT * FROM Customers
where postalcode = '1010';
12 	Cactus Comidas para llevar 	Patricio Simpson 	Cerrito 333 	Buenos Aires 	1010 	Argentina 
54 	OcÈano Atl·ntico Ltda. 	Yvonne Moncada 	Ing. Gustavo Moncada 8585 Piso 20-A 	Buenos Aires 	1010 	Argentina 
64 	Rancho grande 	Sergio GutiÈrrez 	Av. del Libertador 900 	Buenos Aires 	1010 	Argentina

-- Find the phone number for the supplier with the id 11
SELECT * FROM Suppliers
where supplierID = 11;
11 	Heli S¸ﬂwaren GmbH & Co. KG 	Petra Winkler 	Tiergartenstraﬂe 5 	Berlin 	10785 	Germany 	(010) 9984510 

-- List first 10 orders placed, sorted descending by the order date
select *
from Orders
order by orderdate desc
limit 10;

10248 	90 	5 	7/4/1996 	3 
10249 	81 	6 	7/5/1996 	1 
10250 	34 	4 	7/8/1996 	2 
10251 	84 	3 	7/8/1996 	1 
10252 	76 	4 	7/9/1996 	2 
10253 	34 	3 	7/10/1996 	2 
10254 	14 	5 	7/11/1996 	2 
10255 	68 	9 	7/12/1996 	3 
10256 	88 	3 	7/15/1996 	2 
10257 	35 	4 	7/16/1996 	3 

-- Find all customers that live in London, Madrid, or Brazil

SELECT * FROM Customers
where city = 'London' or city = 'Madrid' or country = 'Brazil';

-- Add a customer record for "The Shire", the contact name is "Bilbo Baggins" the address is -"1 Hobbit-Hole" in "Bag End", postal code "111" and the country is "Middle Earth"

Insert into Customers (Country, CustomerName, Address, City, PostalCode)
Values ('Middle Earth', 'Bilbo Baggins', '1 Hobbit-Hole', 'Bag End', '111')

-- Update Bilbo Baggins record so that the postal code changes to "11122"

update customers
set postalcode = '11122'
where customerid = 92;

-- (Stretch) Find a query to discover how many different cities are stored in the Customers table. Repeats should not be double counted

-- (Stretch) Find all suppliers who have names longer than 20 characters. You can use `length(SupplierName)` to get the length of the name
