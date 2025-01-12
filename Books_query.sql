SELECT *  FROM `getting-serious-432608.Book_Hall.Books` LIMIT 10

-- 1. What is the distribution of books across different categories?
SELECT Book_category, COUNT(*) AS Number_of_Books FROM `getting-serious-432608.Book_Hall.Books`
GROUP BY Book_category
ORDER BY Number_of_Books DESC LIMIT 10

--2.Which book category has the highest average star rating?
SELECT Book_category, ROUND(AVG(Star_rating),2) AS Average_Star_Rating FROM `getting-serious-432608.Book_Hall.Books`
GROUP BY Book_category
ORDER BY Average_Star_Rating DESC LIMIT 10

--3.Which book category has the highest average price?
SELECT Book_category, ROUND(AVG(Price),2) AS Average_Price FROM `getting-serious-432608.Book_Hall.Books`
GROUP BY Book_category
ORDER BY Average_Price DESC LIMIT 10

--4.What is the average star rating of all books?
SELECT ROUND(AVG(Star_rating),2) AS Average_Star_Rating FROM `getting-serious-432608.Book_Hall.Books`

--5.How many books have a 5-star rating?
SELECT COUNT(*) AS Number_of_5_Star_books FROM `getting-serious-432608.Book_Hall.Books`
WHERE Star_rating = 5

--Alternative--
SELECT Title, Star_rating FROM `getting-serious-432608.Book_Hall.Books`
WHERE Star_rating = 5

--6. What is the distribution of star ratings across all books?
SELECT Star_rating, COUNT(*) AS Number_of_Books FROM `getting-serious-432608.Book_Hall.Books`
GROUP BY Star_rating
ORDER BY Number_of_Books

--7.What is the total value of all books in stock?
Select ROUND(SUM(Price * Quantity),2) AS Total_Value FROM `getting-serious-432608.Book_Hall.Books`


