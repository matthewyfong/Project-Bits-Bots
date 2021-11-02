
DELETE FROM Item;
DELETE FROM Account;
DELETE FROM Virtual_Store;
DELETE FROM Payment;
DELETE FROM Credit_Card;
DELETE FROM Crypto;
DELETE FROM Karma;
DELETE FROM Bank_Account;
DELETE FROM Shopping_Cart;
DELETE FROM Orders_Placed;
DELETE FROM Item_Shopping_Cart;
DELETE FROM Payment_Order;
DELETE FROM Item_VirtualStore;
DELETE FROM Refund;
DELETE FROM Feedback;
DELETE FROM Wish_List;
DELETE FROM Item_WishList;

INSERT INTO Item
	VALUES (1, 'Light Blue Color Image', 3, 'Light Blue Image', 'jpeg', 1);

INSERT INTO Item
	VALUES (2, 'Dark Green Color Image', 4, 'Dark Green Image', 'jpeg', 1);

INSERT INTO Item
	VALUES (3, 'Mercury Splash Color Image', 10, 'Vibrant color Image', 'png', 1);

INSERT INTO Item
	VALUES (4, 'Electronic Song', 5, 'Electronic Type Beat', 'mp3', 2);

INSERT INTO Item
	VALUES (5, 'Rock Song', 13, 'Rock Type Beat', 'mp3', 2);

INSERT INTO Item
	VALUES (6, 'Pop Song', 7, 'Pop Type Beat', 'mp3', 2);

INSERT INTO Item
	VALUES (7, 'Water Gif', 11, 'Short gif over the flow of water', 'gif', 4);

INSERT INTO Item
	VALUES (8, 'Water Image', 5, 'Clipart Water', 'png', 4);

INSERT INTO Item
	VALUES (9, 'Essay template1', 10, 'English Essay Template', 'pdf', 6);

INSERT INTO Item
	VALUES (10, 'Bright Red Color Image', 4, 'Bright Red Image', 'png', 1);

INSERT INTO Item
	VALUES (11, 'Neon Yellow Color Image', 2, 'Neon Yellow Image', 'png', 1);

INSERT INTO Item
	VALUES (12, 'Red Stripes Color Image', 2, 'Red Stripes Image', 'jpeg', 1);

INSERT INTO Item
	VALUES (13, 'Essay template2', 11, 'Math Essay Template', 'pdf', 6);

INSERT INTO Item
	VALUES (14, 'Essay template3', 10, 'Social Studies Essay Template', 'pdf', 6);

INSERT INTO Item
	VALUES (15, 'Essay template4', 9, 'Spanish Essay Template', 'pdf', 6);

INSERT INTO Item
	VALUES (16, 'Hip Hop Type Beat', 9, 'Long Hip Hip Hop Instrumental', 'mp3', 2);

INSERT INTO Item
	VALUES (17, 'Water Poem', 1, 'Short poem about water', 'txt', 4);

INSERT INTO Item
	VALUES (18, 'Creepy Video Game Background', 5, 'Creepy Background', 'png', 8);

INSERT INTO Item
	VALUES (19, 'Nintendo Style Video Game Background', 12, 'Nintendo Style Background', 'png', 8);

INSERT INTO Item
	VALUES (20, 'Friendly Video Game Background', 5, 'Friendly Background', 'jpeg', 8);



INSERT INTO Account
	VALUES (1, 'Max', 'Jones', 'jones1@example.com', 6141111111, 'T', 3, 1, 'T', 'Seller of images of color');

INSERT INTO Account
	VALUES (2, 'Fred', 'Smith', 'smith@sample.edu', 6142222222, 'F', 0, 1, 'T', 'Seller of music, beats, and instrumentals');

INSERT INTO Account
	VALUES (3, 'Sarah', 'Jones', 'jones2@example.com', 6143333333, 'T', 4, 1, 'F', 'A casual buyer');

INSERT INTO Account
	VALUES (4, 'Carl', 'Wong', 'CarlWong@example.edu', 6144444444, 'F', 0, 1, 'T', 'A seller of water IP');
	  
INSERT INTO Account
	VALUES (5, 'Steph', 'Len', 'len@osu.edu', 7881111111, 'T', 5, 2, 'F', 'A casual buyer');

INSERT INTO Account
	VALUES (6, 'Bob', 'Blueburg', 'blueburg@osu.edu', 7882222222, 'F', 0, 2, 'T', 'A seller of essay templates');

INSERT INTO Account
	VALUES (7, 'Maggie', 'Clemons', 'MaggieC@sample.edu', 1231111111, 'F', 3, 2, 'T', 'A casual buyer');

INSERT INTO Account
	VALUES (8, 'Belle', 'Stella', 'BellaStella@sample.edu', 1234444444, 'F', 0, 2, 'T', 'A seller of video game backgrounds');

INSERT INTO Account
	VALUES (9, 'Max', 'James', 'james@osu.edu', 1239999999, 'T', 2, 3, 'F', 'A casual buyer');

INSERT INTO Account
	VALUES (10, 'Anna', 'Lu', 'Annalu10@example.edu', 1238888888, 'T', 4, 3, 'F', 'A casual buyer');



INSERT INTO Virtual_Store
	VALUES (1, 'Warm Color Virtual Store', 1);

INSERT INTO Virtual_Store
	VALUES (2, 'Cold Color Virtual Store', 1);

INSERT INTO Virtual_Store
	VALUES (3, 'Music and Beats Virtual Store', 2);

INSERT INTO Virtual_Store
	VALUES (4, 'Water Store', 4);

INSERT INTO Virtual_Store
	VALUES (5, 'Instrumental Virtual Store', 2);

INSERT INTO Virtual_Store
	VALUES (6, 'Essay Co', 6);

INSERT INTO Virtual_Store
	VALUES (7, 'Video Games Digital Store', 8);



-- (Payment_ID, Payment_Type, Account_ID)
INSERT INTO Payment 
	VALUES (1, 1, 1);

INSERT INTO Payment 
	VALUES (2, 2, 2);

INSERT INTO Payment 
	VALUES (3, 1, 3);

INSERT INTO Payment 
	VALUES (4, 2, 3);

INSERT INTO Payment 
	VALUES (5, 3, 3);

INSERT INTO Payment 
	VALUES (6, 4, 3);

INSERT INTO Payment 
	VALUES (7, 4, 4);

INSERT INTO Payment 
	VALUES (8, 2, 5);

INSERT INTO Payment 
	VALUES (9, 4, 5);

INSERT INTO Payment 
	VALUES (10, 3, 6);

INSERT INTO Payment 
	VALUES (11, 1, 7);

INSERT INTO Payment 
	VALUES (12, 2, 7);

INSERT INTO Payment 
	VALUES (13, 1, 8);

INSERT INTO Payment 
	VALUES (14, 2, 8);

INSERT INTO Payment 
	VALUES (15, 4, 9);

INSERT INTO Payment 
	VALUES (16, 1, 10);

INSERT INTO Payment 
	VALUES (17, 3, 10);



INSERT INTO Credit_Card
	VALUES (1, 515, 123456789, '2023-01-01');

INSERT INTO Crypto
	VALUES (2, 'DodgeCoin', 1);

INSERT INTO Credit_Card
	VALUES (3, 415, 555555555, '2023-01-01');

INSERT INTO Crypto
	VALUES (4, 'BitCoin', 2);

INSERT INTO Karma
	VALUES (5, 1, 100);

INSERT INTO Bank_Account
	VALUES (6, 'Chase Bank', 10001);

INSERT INTO Bank_Account
	VALUES (7, 'Fifth-third Bank', 20002);

INSERT INTO Crypto
	VALUES (8, 'DodgeCoin', 3);

INSERT INTO Bank_Account
	VALUES (9, 'Chase Bank', 60006);

INSERT INTO Karma
	VALUES (10, 2, 500);

INSERT INTO Credit_Card
	VALUES (11, 3333, 1234567899, '2025-07-17');

INSERT INTO Crypto
	VALUES (12, 'BitCoin', 4);

INSERT INTO Credit_Card
	VALUES (13, 2343, 9898989898, '2022-11-04');

INSERT INTO Crypto
	VALUES (14, 'BitCoin', 5);

INSERT INTO Bank_Account
	VALUES (15, 'Chase Bank', 70007);

INSERT INTO Credit_Card
	VALUES (16, 111, 785511117, '2026-05-20');

INSERT INTO Karma
	VALUES (17, 3, 1000);



-- Shopping_Cart (Shopping_Cart_ID, Updated_Date, Buyer_ID)
INSERT INTO Shopping_Cart
	VALUES (1, '2021-08-04', 1);

INSERT INTO Shopping_Cart
	VALUES (2, '2021–09-10', 3);

INSERT INTO Shopping_Cart
	VALUES (3, '2021–09-03', 3);

INSERT INTO Shopping_Cart
	VALUES (4, '2021–11-15', 5);

INSERT INTO Shopping_Cart
	VALUES (5, '2021–12-05', 7);

INSERT INTO Shopping_Cart
	VALUES (6, '2021–12-08', 9);

INSERT INTO Shopping_Cart
	VALUES (7, '2021–12-10', 10);

INSERT INTO Shopping_Cart
	VALUES (8, '2021–12-10', 10);

INSERT INTO Shopping_Cart
	VALUES (9, '2019–12-10', 1);


-- (Order_ID, Delivery_Status, Delivery_Method, Date_of_Purchase, Total_Price, Amount_Paid, Completed, Buyer_ID, Shopping_Cart_ID)
INSERT INTO Orders_Placed
	VALUES (1, 'sent', 'email', '2021-08-05', 30, 30, 'yes', 1, 1);

INSERT INTO Orders_Placed
	VALUES (2, 'sent', 'email', '2021-09-12', 22, 22, 'yes', 3, 2);

INSERT INTO Orders_Placed
	VALUES (3, 'sent', 'email', '2021-09-13', 5, 5, 'yes', 3, 3);

INSERT INTO Orders_Placed
	VALUES (4, 'sent', 'email', '2021-11-20', 54, 54, 'yes', 5, 4);

INSERT INTO Orders_Placed
	VALUES (5, 'sent', 'email', '2021-12-05', 15, 15, 'yes', 7, 5);

INSERT INTO Orders_Placed
	VALUES (6, 'sent', 'email', '2021-12-08', 19, 19, 'yes', 9, 6);

INSERT INTO Orders_Placed
	VALUES (7, 'sent', 'email', '2021-12-10', 20, 20, 'yes', 10, 8);

INSERT INTO Orders_Placed
	VALUES (8, 'sent', 'email', '2019-12-10', 10, 10, 'yes', 1, 9);



INSERT INTO Item_Shopping_Cart
	VALUES (13, 1);

INSERT INTO Item_Shopping_Cart
	VALUES (14, 1);

INSERT INTO Item_Shopping_Cart
	VALUES (15 ,1);

INSERT INTO Item_Shopping_Cart
	VALUES (18, 2);

INSERT INTO Item_Shopping_Cart
	VALUES (19 ,2);

INSERT INTO Item_Shopping_Cart
	VALUES (20, 2);

INSERT INTO Item_Shopping_Cart
	VALUES (4, 3);

INSERT INTO Item_Shopping_Cart
	VALUES (3 ,4);

INSERT INTO Item_Shopping_Cart
	VALUES (9, 4);

INSERT INTO Item_Shopping_Cart
	VALUES (6, 4);

INSERT INTO Item_Shopping_Cart
	VALUES (6, 5);

INSERT INTO Item_Shopping_Cart
	VALUES (15, 5);

INSERT INTO Item_Shopping_Cart
	VALUES (17, 5);

INSERT INTO Item_Shopping_Cart
	VALUES (3, 6);

INSERT INTO Item_Shopping_Cart
	VALUES (16, 6);

INSERT INTO Item_Shopping_Cart
	VALUES (4, 8);

INSERT INTO Item_Shopping_Cart
	VALUES (8, 8);

INSERT INTO Item_Shopping_Cart
	VALUES (18, 8);

INSERT INTO Item_Shopping_Cart
	VALUES (1, 1);

INSERT INTO Item_Shopping_Cart
	VALUES (2, 1);
	
INSERT INTO Item_Shopping_Cart
	VALUES (3, 10);



-- (Payment_ID, Order_ID, Amount)
INSERT INTO Payment_Order
	VALUES (1, 1, 30);

INSERT INTO Payment_Order
	VALUES (3, 2, 20);

INSERT INTO Payment_Order
	VALUES (4, 2, 2);

INSERT INTO Payment_Order
	VALUES (6, 3, 5);

INSERT INTO Payment_Order
	VALUES (8, 4, 30);

INSERT INTO Payment_Order
	VALUES (9, 4, 24);

INSERT INTO Payment_Order
	VALUES (11, 5, 15);

INSERT INTO Payment_Order
	VALUES (15, 6, 19);

INSERT INTO Payment_Order
	VALUES (16, 8, 20);
	
INSERT INTO Payment_Order
	VALUES (1, 8, 10);



-- (Item_ID, VS_IS); Make sure Item is owned by VS account
INSERT INTO Item_VirtualStore
	VALUES (1, 1); -- Owned by 1
	
INSERT INTO Item_VirtualStore
	VALUES (2, 1); -- Owned by 1
	
INSERT INTO Item_VirtualStore
	VALUES (3, 1); -- Owned by 1
	
INSERT INTO Item_VirtualStore
	VALUES (10, 1); -- Owned by 1
	
INSERT INTO Item_VirtualStore
	VALUES (11, 1); -- Owned by 1

INSERT INTO Item_VirtualStore
	VALUES (12, 1); -- Owned by 1

INSERT INTO Item_VirtualStore
	VALUES (4, 3); -- Owned by 2
	
INSERT INTO Item_VirtualStore
	VALUES (8, 4); -- Owned by 4



-- (Refund_ID, Payment_ID, Status, Order_ID, Buyer_ID)
INSERT INTO Refund
	VALUES (1, 1, 'IN PROGRESS', 1, 1);



-- (Feedback_ID, Rating, Feedback_Comment, Buyer_ID, Item_ID, Order_ID)
INSERT INTO Feedback
	VALUES (1, 5, 'GREAT PRODUCT', 1, 1, 1);

INSERT INTO Feedback
	VALUES (2, 4, 'GREAT PRODUCT1', 2, 18, 2);

INSERT INTO Feedback
	VALUES (3, 5, 'GREAT PRODUCT2', 2, 19, 2);



-- (Wish_List_ID, Updated_Date, Buyer_ID)
INSERT INTO Wish_List
	VALUES (1, '2021-08-04', 1);

INSERT INTO Wish_List
	VALUES (2, '2021-08-04', 1);

INSERT INTO Wish_List
	VALUES (3, '2021-08-04', 1);

INSERT INTO Wish_List
	VALUES (4, '2021-08-04', 2);



-- (Item_ID, Wish_List_ID)
INSERT INTO Item_WishList
	VALUES (1, 1);
	
INSERT INTO Item_WishList
	VALUES (2, 1);

INSERT INTO Item_WishList
	VALUES (17, 2);
