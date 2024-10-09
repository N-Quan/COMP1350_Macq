-- Run the following Queries to setup your sample DB
CREATE TABLE FoodStallWorker (
	EmployeeID int,
	FoodStallID int,
	PRIMARY KEY (EmployeeID, FoodStallID)
)
CREATE TABLE FoodStall (
	id int,
	Name text,
	Cuisine text,
	PhoneNumber int,
	PRIMARY KEY (ID)
)


INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (1, 1);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (2, 1);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (3, 1);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (4, 2);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (5, 2);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (6, 3);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (7, 3);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (8, 3);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (9, 4);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (10, 4);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (11, 5);
INSERT INTO FoodStallWorker  (EmployeeID , FoodStallID)
VALUES (12, 6);

INSERT INTO FoodStall (id, Name, Cuisine, PhoneNumber)
VALUES (1, 'Name1', 'Cuisine1', 0400900100);
INSERT INTO FoodStall (id, Name, Cuisine, PhoneNumber)
VALUES (2, 'Name2', 'Cuisine2', 0400900102);
INSERT INTO FoodStall (id, Name, Cuisine, PhoneNumber)
VALUES (3, 'Name3', 'Cuisine3', 0400900103);
INSERT INTO FoodStall (id, Name, Cuisine, PhoneNumber)
VALUES (4, 'Name4', 'Cuisine4', 0400900104);
INSERT INTO FoodStall (id, Name, Cuisine, PhoneNumber)
VALUES (5, 'Name5', 'Cuisine5', 0400900105);
INSERT INTO FoodStall (id, Name, Cuisine, PhoneNumber)
VALUES (6, 'Name6', 'Cuisine6', 0400900106);