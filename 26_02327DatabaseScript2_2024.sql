/*All queries from the assignment of section 5 through 7 can be found in this document,
theres also a small description to each statement which describes how it manipulates the data in our dkavisen database*/

--(1) the delete/update statements used to change the tables (as in section 5)
--Adding a new journalists
INSERT INTO Journalists (Journalist_ID, firstName, lastName, CPR_Number, street_Name, civic_Number, city, ZIP_code, country, telephone_Number, email_address)
VALUES (4, 'Ole', 'Olsen', '4567890123', 'Broadway', '78', 'New York', '4000', 'USA', '98765432', 'ole.o@email.com');

--Adding a new article by a specific journalist
INSERT INTO Articles (Article_ID, Edition_ID, title, article_Text, topic, read_Count)
VALUES (11, 2, 'Tech Trends', 'The latest in tech...', 'Technology', 0);

--Updating the read count on an article
UPDATE Articles
SET read_Count = read_Count + 100
WHERE Article_ID = 1;

--Updating the text and title of an article
UPDATE Articles
SET title = 'Updated Sports Analysis', article_Text = 'A deeper dive into recent games...'
WHERE Article_ID = 6;

--Deleting a photo from the database 
DELETE FROM Photos
WHERE Photo_ID = 3;


--(2) the queries made (as in section 6)
--This query finds the most read article for each topic by comparing read counts within each topic group.
SELECT 
    t.topic, 
    t.Article_ID, 
    t.title, 
    t.read_Count
FROM Articles t
INNER JOIN (
    SELECT 
        topic, 
        MAX(read_Count) AS MaxRead
    FROM Articles
    GROUP BY topic
) tm ON t.topic = tm.topic AND t.read_Count = tm.MaxRead;

--This query ranks journalists based on the total read count of all articles they've written, showing the top 10.
SELECT 
    j.Journalist_ID, 
    j.firstName, 
    j.lastName, 
    SUM(a.read_Count) AS TotalReads
FROM Journalists j
JOIN ArticleJournalists aj ON j.Journalist_ID = aj.Journalist_ID
JOIN Articles a ON aj.Article_ID = a.Article_ID
GROUP BY j.Journalist_ID, j.firstName, j.lastName
ORDER BY TotalReads DESC
LIMIT 10;

--This query identifies reporters who have taken photos that are each only used in one article or not used at all.
SELECT 
    j.Journalist_ID, 
    j.firstName, 
    j.lastName
FROM Journalists j
WHERE NOT EXISTS (
    SELECT 1
    FROM Photos p
    JOIN ArticlePhotos ap ON p.Photo_ID = ap.Photo_ID
    GROUP BY p.Photo_ID
    HAVING COUNT(ap.Article_ID) > 1 AND p.Reporter_ID = j.Journalist_ID
);

--This query determines which topics have an average read count below the overall average across all topics.
SELECT 
    topic, 
    AVG(read_Count) AS AvgReads
FROM Articles
GROUP BY topic
HAVING AVG(read_Count) < (SELECT AVG(read_Count) FROM Articles);

--This query finds journalists who have both written articles and taken photos used in any of their articles.
SELECT DISTINCT 
    j.Journalist_ID, 
    j.firstName, 
    j.lastName
FROM Journalists j
JOIN ArticleJournalists aj ON j.Journalist_ID = aj.Journalist_ID
JOIN Articles a ON aj.Article_ID = a.Article_ID
JOIN Photos p ON j.Journalist_ID = p.Reporter_ID
JOIN ArticlePhotos ap ON p.Photo_ID = ap.Photo_ID AND a.Article_ID = ap.Article_ID;


/*(3) the statements used to create and apply functions, procedures, triggers, and
events (as in section 7)*/

-- I've created a function that returns the total number of articles written by a specific journalist.
DELIMITER $$
CREATE FUNCTION TotalArticlesByJournalist(journalistID INT) RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE totalArticles INT;
    SELECT COUNT(*) INTO totalArticles FROM ArticleJournalists WHERE Journalist_ID = journalistID;
    RETURN totalArticles;
END $$
DELIMITER ;

-- You can also add sample data to test the function:
INSERT INTO Journalists (Journalist_ID, firstName, lastName, CPR_Number, street_Name, civic_Number, city, ZIP_code, country, telephone_Number, email_address)
VALUES
(1, 'John', 'Doe', '7501011234', 'Main St', '42', 'Cityville', '1000', 'Denmark', '12345678', 'john.doe@example.com'),
(2, 'Jane', 'Roe', '8502022345', 'Second St', '43', 'Townsville', '2000', 'Denmark', '87654321', 'jane.roe@example.com');

-- Insert sample articles 
INSERT INTO Articles (Article_ID, Edition_ID, title, article_Text, topic, read_Count)
VALUES
(1, 1, 'Market Report', 'The stock market is...', 'Economy', 150),
(2, 1, 'City Planning', 'New plans for city infrastructure...', 'Urban Development', 75);

-- Link the articles with journalists 
INSERT INTO ArticleJournalists (Article_ID, Journalist_ID, role_Name)
VALUES
(1, 1, 'Writer'),
(2, 2, 'Publisher');

-- To run the function, use the following query:
SELECT TotalArticlesByJournalist(1) AS TotalArticles;



-- I've created a trigger that prevents the insertion of a journalist with an invalid email address.
DELIMITER $$
CREATE TRIGGER BeforeJournalistInsert
BEFORE INSERT ON Journalists FOR EACH ROW
BEGIN
    IF NEW.email_address NOT LIKE '%@%' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Invalid email address';
    END IF;
END $$
DELIMITER ;
