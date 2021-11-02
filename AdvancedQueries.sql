
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
  FROM (SELECT AVG(amount_paid) as average
        FROM Orders_Placed
        GROUP BY Orders_Placed.Buyer_ID
        )
);


-- Provide a list of the IP Item names and associated total copies sold to all buyers, sorted from the IP Item that has sold the most individual copies to the IP Item that has sold the least.

-- Provide a list of the IP Item names and associated dollar totals for copies sold to all buyers, sorted from the IP Item that has sold the highest dollar amount to the IP Item that has sold the smallest.

-- Find the most popular seller (i.e. the one who has sold the most IP Items)

-- Find the most profitable seller (i.e. the one who has brought in the most money)

-- Provide a list of buyer names for buyers who purchased anything listed by the most profitable seller

-- Provide the list of sellers who listed the IP Items purchased by the buyers who have spent more than the average buyer.

-- Provide sales statistics (number of items sold, highest price, lowest price, and average price) for each type of IP item offered by a particular store.
