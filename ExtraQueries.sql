
-- Create a list of people who requested refunds. The query should include all buyers, including those who haven’t requested a refund.
SELECT first_name, last_name, status
FROM Account AS A LEFT OUTER JOIN Refund AS IR ON A.Account_ID=IR.Buyer_ID;

-- Find the buyer who has left the most feedback.
SELECT first_name, last_name, COUNT(A.Account_ID) AS Comment_Left
FROM Account AS A JOIN Feedback AS F ON A.Account_ID = F.Buyer_ID
GROUP BY F.buyer_id
HAVING COUNT(*) = (
	SELECT MAX(Cnt) 
	FROM(
		SELECT COUNT(F.buyer_id) as Cnt
		FROM Feedback AS F
		GROUP BY F.Buyer_ID
	)
);

-- Find the wishlist with the most number of items.
SELECT WL.Wish_List_ID, COUNT(IWL.Item_ID)
FROM Wish_List AS WL JOIN Item_Wishlist AS IWL ON WL.Wish_List_ID = IWL.Wish_List_ID
GROUP BY WL.Wish_List_ID
HAVING COUNT(*) = (
	SELECT MAX(Cnt) 
	FROM(
		SELECT COUNT(IWL.Item_ID) as Cnt
		FROM Item_Wishlist AS IWL
		GROUP BY IWL.Item_ID
	)
);
