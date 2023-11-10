
--Basic Queries Assignment--
--Solution--




--//Exercise No. 1: Selecting Rows//
Select * from Staff
where position = 'Assistant' OR position = 'Supervisor';


--Exercise No. 2: Selecting Rows and Columns 

SELECT propertyNo, address, type, rooms, rent
FROM RenatalProperty
WHERE branchNo = 'BOO3';


--Exercise No. 3: Matching Strings
SELECT *
FROM PrivateOwner
WHERE address LIKE '%Glasgow%';

--Exercise No. 4: Listing Clients 
SELECT DISTINCT clientNo From viewing;

--Exercise No. 5: Calculated Columns 
SELECT propertyNo, address, type, rooms, rent, CONCAT('£', rent * 12) AS yearly rent
FROM RenatalProperty;


--Exercise No. 6: Using ORDER BY Clause
SELECT * from viewing
WHERE comment IS NOT NULL 
Order by date DESC, clientNo ASC;

--Exercise No. 7: Aggregate Functions 

SELECT 
  MIN(rooms) AS min,
  ROUND(AVG(rooms), 1) AS avg,
  MAX(rooms) AS max
FROM RenatalProperty;

--Exercise No. 8: Oldest and Youngest Staff members
SELECT 
MAX (birthdate) AS Oldest,
MIN (birthdate) AS Youngest
FROM Staff;

--Exercise No 9: Grouping of Data

SELECT rooms,
AVG (rent) AS avg
FROM RentalProperty WHERE rooms IN (3, 4, 5) group by rooms;

--Exercise No 10:Grouping Data 

SELECT 
branchNo, ownerNo,
COUNT(*) AS no properties
FROM RentalProperties
group by branchNo, ownerNo
Having no properties >1;

-------------------------------END-----------------------------------------------

