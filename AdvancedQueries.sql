
-- Provide a list of buyer names, along with the total dollar amount each buyer has spent in the last year.
SELECT first_name, last_name, SUM(amount_paid)
FROM Account JOIN Orders_Placed ON Account.Account_ID = Orders_Placed.Buyer_ID
WHERE date_of_purchase BETWEEN '2021-01-01' AND '2022-01-01'
GROUP BY Buyer_ID;

-- Provide a list of buyer names and e-mail addresses for buyers who have spent more than the average buyer.
SELECT first_name, last_name, email
FROM Account JOIN Orders_Placed ON Account.Account_ID = Orders_Placed.Buyer_ID
GROUP BY Buyer_ID
HAVING AVG(amount_paid) > (
  SELECT MIN(average)
  FROM (
	SELECT AVG(amount_paid) as average
	FROM Orders_Placed
	GROUP BY Orders_Placed.Buyer_ID
    )
);

-- Provide a list of the IP Item names and associated total copies sold to all buyers, sorted from the IP Item that has sold the most individual copies to the IP Item that has sold the least.
SELECT I.Item_Name, COUNT(I.Item_ID) AS Copies_Sold
FROM Orders_Placed AS OP, Shopping_Cart AS SC, Item_Shopping_Cart AS ISC, Item AS I
WHERE OP.Shopping_Cart_ID = SC.Shopping_Cart_ID AND SC.Shopping_Cart_ID = ISC.Shopping_Cart_ID AND ISC.Item_ID = I.Item_ID
GROUP BY I.Item_ID
ORDER BY Copies_Sold DESC;

-- Provide a list of the IP Item names and associated dollar totals for copies sold to all buyers, sorted from the IP Item that has sold the highest dollar amount to the IP Item that has sold the smallest.
SELECT I.Item_Name, SUM(I.Price) AS Dollar_Totals
FROM Orders_Placed AS OP, Shopping_Cart AS SC, Item_Shopping_Cart AS ISC, Item AS I
WHERE OP.Shopping_Cart_ID = SC.Shopping_Cart_ID AND SC.Shopping_Cart_ID = ISC.Shopping_Cart_ID AND ISC.Item_ID = I.Item_ID
GROUP BY ISC.Item_ID
ORDER BY Dollar_Totals DESC;


-- Find the most popular seller (i.e. the one who has sold the most IP Items)
SELECT First_Name, Last_Name, COUNT(I.Item_ID) AS number_sold
FROM Item_Shopping_Cart AS ISC, Item AS I, Account AS A
WHERE ISC.Item_ID=I.item_id AND I.seller_id=A.account_id
GROUP BY I.Item_ID
ORDER BY number_sold DESC
LIMIT 1;


-- Find the most profitable seller (i.e. the one who has brought in the most money)
SELECT First_Name, Last_Name, SUM(I.Price) as most_profitable
FROM Item_Shopping_Cart AS ISC, Item AS I, Account AS A
WHERE ISC.Item_ID=I.item_id AND I.seller_id=A.account_id
GROUP BY I.Item_ID
ORDER BY most_profitable DESC
LIMIT 1;



-- Provide a list of buyer names for buyers who purchased anything listed by the most profitable seller
SELECT B.First_Name, B.Last_Name, I.Item_Name
FROM Account AS A, Item AS I, Item_Shopping_Cart AS ISC, Orders_Placed AS OP, Account as B
WHERE I.Item_ID = ISC.Item_ID AND I.Seller_ID = A.Account_ID AND OP.Buyer_ID = B.account_id AND A.account_id = (
	SELECT A.Account_ID
	FROM Item_Shopping_Cart AS ISC, Item AS I, Account AS A
	WHERE ISC.Item_ID=I.item_id AND I.seller_id=A.account_id
	GROUP BY I.Item_ID
	ORDER BY SUM(I.Price) DESC
	LIMIT 1
);


-- Provide the list of sellers who listed the IP Items purchased by the buyers who have spent more than the average buyer.
SELECT A.First_Name, A.Last_Name
FROM Account AS A, Orders_Placed AS OP, Item AS I, Item_Shopping_Cart AS ISC
WHERE A.Account_ID = OP.Buyer_ID AND A.Account_ID = I.Seller_ID AND I.Item_ID = ISC.Item_ID
GROUP BY A.Account_ID
HAVING SUM (Total_price) > 
(
  SELECT MIN(average)
  FROM (
	SELECT AVG(amount_paid) as average
	FROM Orders_Placed
	GROUP BY Orders_Placed.Buyer_ID
    )
);


-- Provide sales statistics (number of items sold, highest price, lowest price, and average price) for each type of IP item offered by a particular store.
SELECT VS.Name, Max(Price), Min(Price), avg(Price), Count(I.Item_ID) AS number_sold
FROM Item AS I, Virtual_Store AS VS, Item_VirtualStore AS IVS, Orders_Placed AS OP, Account AS A
WHERE I.Item_ID = IVS.Item_ID AND IVS.Store_ID = VS.Store_ID AND I.Seller_ID = A.Account_ID AND A.Account_ID = OP.Buyer_ID
GROUP BY VS.Store_ID;
