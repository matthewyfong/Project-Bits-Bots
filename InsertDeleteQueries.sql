
INSERT INTO Account
	VALUES (11, 'Mickey', 'Mouse', 'mickey.mouse@disney.com', 6146661111, 'F', NULL, NULL, 'T', 'My favorite thing is epcot');
INSERT INTO Item
	VALUES (21, 'Bob the Builder', 99, 'Can we fix it?', 'pdf', 11);
INSERT INTO Virtual_Store
	VALUES (8, "Cinderella's Castle", 11);
INSERT INTO Item_VirtualStore
	VALUES (21, 8);
	
DELETE FROM Account WHERE Account_ID = 11;
DELETE FROM Item WHERE Item_ID = 21;
DELETE FROM Virtual_Store WHERE Virtual_Store_ID = 8;
DELETE FROM Item_VirtualStore WHERE Item_ID = 21 AND Virtual_Store_ID = 8;
