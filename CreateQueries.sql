
/*
DROP TABLE Payment;
DROP TABLE Credit_Card;
DROP TABLE Crypto;
DROP TABLE Bank_Account;
DROP TABLE Karma;
DROP TABLE Account;
DROP TABLE Social_Media_Accounts;
DROP TABLE Refund;
DROP TABLE Orders_Placed;
DROP TABLE Shopping_Cart;
DROP TABLE Recommendation_Section;
DROP TABLE Wish_List;
DROP TABLE Feedback;
DROP TABLE Item;
DROP TABLE Image_Url_Links;
DROP TABLE Virtual_Store;
DROP TABLE Payment_Order;
DROP TABLE Item_Wishlist;
DROP TABLE Item_Recommend;
DROP TABLE Item_Shopping_Cart;
DROP TABLE Item_Refund;
DROP TABLE Item_VirtualStore;
*/

CREATE TABLE Payment(
	Payment_ID			INT				NOT NULL,
	Payment_Type		VARCHAR(12)		NOT NULL,
	Account_ID			INT				NOT NULL,
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Account_ID) REFERENCES Account
);

CREATE TABLE Credit_Card(
	Payment_ID			INT				NOT NULL,
	CVV					INT				UNIQUE,
	Credit_Card_Number	INT				NOT NULL,
	Exp_Date			DATE			NOT NULL,
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Payment_ID) REFERENCES Payment
);

CREATE TABLE Crypto(
	Payment_ID			INT				NOT NULL,
	Crypto_Type			VARCHAR(20)		NOT NULL,
	Wallet_ID			INT				UNIQUE,
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Payment_ID) REFERENCES Payment
);

CREATE TABLE Bank_Account(
	Payment_ID			INT				NOT NULL,
	Bank				VARCHAR(20)		NOT NULL,
	Account_Number		VARCHAR(15)		NOT NULL,
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Payment_ID) REFERENCES Payment
);

CREATE TABLE Karma(
	Payment_ID			INT				NOT NULL,
	Point_ID			INT				NOT NULL,
	Point_Amount		INT				NOT NULL,
	PRIMARY KEY (Payment_ID),
	FOREIGN KEY (Payment_ID) REFERENCES Payment
);

CREATE TABLE Account(
	Account_ID			INT				NOT NULL,
	First_Name			VARCHAR(20)		NOT NULL,
	Last_Name			VARCHAR(20)		NOT NULL,
	Email				VARCHAR(20)		NOT NULL,
	Phone_Number		VARCHAR(15)		UNIQUE,
	BFlag				BOOLEAN			NOT NULL,
	Number_of_Purchases	INT,
	Recommendation_ID	INT,
	SFlag				BOOLEAN			NOT NULL,
	Biography			VARCHAR(512),
	PRIMARY KEY (Account_ID),
	FOREIGN KEY (Recommendation_ID) REFERENCES Recommendation_Section
);

CREATE TABLE Social_Media_Accounts(
	Seller_ID			INT				NOT NULL,
	Social_Media		VARCHAR(50)		NOT NULL,
	PRIMARY KEY (Seller_ID),
	FOREIGN KEY (Seller_ID) REFERENCES Account
);

CREATE TABLE Refund(
	Refund_ID			INT				NOT NULL,
	Payment_ID			INT				NOT NULL,
	Status				VARCHAR(12)		NOT NULL,
	Order_ID			INT				NOT NULL,
	Buyer_ID			INT				NOT NULL,
	PRIMARY KEY (Refund_ID),
	FOREIGN KEY (Payment_ID) REFERENCES Payment,
	FOREIGN KEY (Order_ID) REFERENCES Orders_Placed,
	FOREIGN KEY (Buyer_ID) REFERENCES Account
);

CREATE TABLE Orders_Placed(
	Order_ID			INT				NOT NULL,
	Delivery_Status		BOOLEAN			NOT NULL,
	Delivery_Method		VARCHAR(20)		NOT NULL,
	Date_of_Purchase	DATE			NOT NULL,
	Total_Price			INT				NOT NULL,
	Amount_Paid			INT				NOT NULL,
	Completed			BOOLEAN			NOT NULL,
	Buyer_ID			INT				NOT NULL,
	Shopping_Cart_ID	INT				NOT NULL,
	PRIMARY KEY (Order_ID),
	FOREIGN KEY (Buyer_ID) REFERENCES Account,
	FOREIGN KEY (Shopping_Cart_ID) REFERENCES Shopping_Cart
);

CREATE TABLE Shopping_Cart(
	Shopping_Cart_ID	INT				NOT NULL,
	Updated_Date		DATE			NOT NULL,
	Buyer_ID			INT				NOT NULL,
	PRIMARY KEY (Shopping_Cart_ID),
	FOREIGN KEY (Buyer_ID) REFERENCES Account
);

CREATE TABLE Recommendation_Section(
	Recommendation_ID	INT				NOT NULL,
	Updated_Date		DATE			NOT NULL,
	Buyer_ID			INT				NOT NULL,
	PRIMARY KEY (Recommendation_ID),
	FOREIGN KEY (Buyer_ID) REFERENCES Account
);

CREATE TABLE Wish_List(
	Wish_List_ID		INT				NOT NULL,
	Updated_Date		DATE			NOT NULL,
	Buyer_ID			INT				NOT NULL,
	PRIMARY KEY (Wish_List_ID),
	FOREIGN KEY (Buyer_ID) REFERENCES Account
);

CREATE TABLE Feedback(
	Feedback_ID			INT				NOT NULL,
	Rating				INT				NOT NULL,
	Feedback_Comment	VARCHAR(512)	NOT NULL,
	Buyer_ID			INT				NOT NULL,
	Item_ID				INT				NOT NULL,
	Order_ID			INT				NOT NULL,
	PRIMARY KEY (Feedback_ID),
	FOREIGN KEY (Buyer_ID) REFERENCES Account,
	FOREIGN KEY (Item_ID) REFERENCES Item,
	FOREIGN KEY (Order_ID) REFERENCES Orders_Placed
);

CREATE TABLE Item(
	Item_ID				INT				NOT NULL,
	Item_Name			VARCHAR(16)		NOT NULL,
	Price				INT				NOT NULL,
	Description			VARCHAR(512)	NOT NULL,
	File_Type			VARCHAR(8)		NOT NULL,
	Seller_ID			INT				NOT NULL,
	PRIMARY KEY (Item_ID),
	FOREIGN KEY (Seller_ID) REFERENCES Account
);

CREATE TABLE Image_Url_Links(
	Item_ID				INT				NOT NULL,
	Image_URL			VARCHAR(32)		NOT NULL,
	PRIMARY KEY (Item_ID),
	FOREIGN KEY (Item_ID) REFERENCES ITEM
);

CREATE TABLE Virtual_Store(
	Store_ID			INT				NOT NULL,
	Name				VARCHAR(16)		NOT NULL,
	Seller_ID			INT				NOT NULL,
	PRIMARY KEY (Store_ID),
	FOREIGN KEY (Seller_ID) REFERENCES Account
);

CREATE TABLE Payment_Order(
	Payment_ID			INT				NOT NULL,
	Order_ID			INT				NOT NULL,
	Amount				INT				NOT NULL,
	PRIMARY KEY (Payment_ID, Order_ID),
	FOREIGN KEY (Payment_ID) REFERENCES Payment,
	FOREIGN KEY (Order_ID) REFERENCES Orders_Placed
);

CREATE TABLE Item_Wishlist(
	Item_ID				INT				NOT NULL,
	Wish_List_ID		INT				NOT NULL,
	PRIMARY KEY (Item_ID, Wish_List_ID),
	FOREIGN KEY (Item_ID) REFERENCES Item,
	FOREIGN KEY (Wish_List_ID) REFERENCES Wish_List
);

CREATE TABLE Item_Recommend(
	Item_ID				INT				NOT NULL,
	Recommendation_ID	INT				NOT NULL,
	PRIMARY KEY (Item_ID, Recommendation_ID),
	FOREIGN KEY (Item_ID) REFERENCES Item,
	FOREIGN KEY (Recommendation_ID) REFERENCES Recommendation_Section
);

CREATE TABLE Item_Shopping_Cart(
	Item_ID				INT				NOT NULL,
	Shopping_Cart_ID	INT				NOT NULL,
	PRIMARY KEY (Item_ID, Shopping_Cart_ID),
	FOREIGN KEY (Item_ID) REFERENCES Item,
	FOREIGN KEY (Shopping_Cart_ID) REFERENCES Shopping_Cart
);

CREATE TABLE Item_Refund(
	Item_ID				INT				NOT NULL,
	Refund_ID			INT				NOT NULL,
	PRIMARY KEY (Item_ID, Refund_ID),
	FOREIGN KEY (Item_ID) REFERENCES Item,
	FOREIGN KEY (Refund_ID) REFERENCES Refund
);

CREATE TABLE Item_VirtualStore(
	Item_ID				INT				NOT NULL,
	Store_ID			INT				NOT NULL,
	PRIMARY KEY (Item_ID, Store_ID),
	FOREIGN KEY (Item_ID) REFERENCES Item,
	FOREIGN KEY (Store_ID) REFERENCES Virtual_Store
);
