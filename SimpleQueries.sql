
-- Create a list of IP items and the stores selling those
SELECT I.Item_Name, VS.Name
FROM Item AS I, Virtual_Store AS VS
WHERE I.Seller_ID = VS.Seller_ID;

-- Find the titles of all IP Items that cost less than $10.
SELECT Item.Item_Name
FROM Item
WHERE Price < 10;

-- Generate a list of IP item titles and dates of purchase made by a given buyer (you choose how to designate a buyer)
SELECT I.Item_Name, O.Date_of_Purchase,  S.buyer_id
FROM Item as I, Item_Shopping_Cart AS ISC, Shopping_Cart as S, Orders_Placed as O
WHERE I.item_id = ISC.Item_ID AND ISC.Shopping_Cart_ID = S.Shopping_Cart_ID AND O.Shopping_Cart_ID = S.Shopping_Cart_ID;

-- List all the buyers who purchased an IP Item from a given store (you choose how to designate a store) and the names of the IP Items they purchased.
SELECT A.First_Name, A.Last_Name, IVS.Item_ID
FROM Account AS A, Orders_Placed AS O, Item_Shopping_Cart AS ISC, Item_VirtualStore AS IVS
WHERE A.account_id = O.Buyer_ID AND O.Shopping_Cart_ID = ISC.Shopping_Cart_ID AND ISC.Item_ID = IVS.Item_ID AND IVS.store_id = 1;

-- Find the highest selling item, total number of units of that item sold, total dollar sales for that item, and the store/seller who sells it.
SELECT Account_ID, MAX(Number_of_Purchases) 
FROM Account;

-- Create a list of stores who currently offer 5 or less IP Items for sale.
SELECT IVS.Store_ID
FROM Item_VirtualStore AS IVS
GROUP BY IVS.Store_ID
HAVING COUNT(IVS.Item_ID) <= 5;

-- Find the highest selling item, total number of units of that item sold, total dollar sales for that item, and the store/seller who sells it.
SELECT I.Item_Name, COUNT(I.Item_ID) AS Total_Units_Sold, SUM(OP.total_price) AS Total_Dollar_Sales, I.Seller_ID
FROM Orders_Placed AS OP, Shopping_Cart AS SC, Item_Shopping_Cart AS ISC, Item AS I
WHERE OP.Shopping_Cart_ID = SC.Shopping_Cart_ID AND SC.Shopping_Cart_ID = ISC.Shopping_Cart_ID AND ISC.Item_ID = I.Item_ID
GROUP BY I.Item_ID
ORDER BY Total_Units_Sold DESC
LIMIT 1;

-- Create a list of all payment types accepted, number of times each of them was used, and total amount charged to that type of payment
SELECT Payment_Type, COUNT(Payment_Type), SUM(Amount_Paid)
FROM Payment AS P, Orders_Placed AS OP, Payment_Order AS PO
WHERE OP.Order_ID = PO.Order_ID AND P.Payment_ID = PO.Payment_ID
GROUP BY Payment_Type;

-- Retrieve the name and contact info of the customer who has the highest karma point balance.
SELECT First_Name, Last_Name, Email, MAX(Point_Amount)
FROM Account, Payment, Karma
WHERE Account.Account_ID = Payment.Account_ID AND Payment.Payment_ID = Karma.Payment_ID;
