
-- Creating a table for Calls
CREATE TABLE Calls (
    Call_ID INT PRIMARY KEY,
    User_ID INT,
    Call_Date DATE
);



-- Creating a table for Messages
CREATE TABLE Messages (
    Message_ID INT PRIMARY KEY,
    User_ID INT,
    Message_Date DATE
);


-- Creating a table for People Asked For Directions
CREATE TABLE PAFDirections (
    Request_ID INT PRIMARY KEY,
    User_ID INT,
    Request_Date DATE
);


-- Creating a table for Website Visit From Profile
CREATE TABLE WVFProfile (
    Visit_ID INT PRIMARY KEY,
    User_ID INT,
    Visit_Date DATE
);


-- Creating a table for Profile Views
CREATE TABLE ProfileViews (
    View_ID INT PRIMARY KEY,
    User_ID INT,
    View_Date DATE
);

-- Creating a table for Searches
CREATE TABLE Searches (
    Search_ID INT PRIMARY KEY,
    User_ID INT,
    Search_Term VARCHAR(50),
    Search_Date DATE
);



-- Inserting dummy data into Calls table
INSERT INTO Calls VALUES (1, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (2, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (3, 101, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (4, 101, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (5, 102, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (6, 102, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (7, 102, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (8, 102, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (9, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Calls VALUES   (10, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));



INSERT INTO Calls VALUES (1, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO Calls VALUES (2, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO Calls VALUES (3, 101, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO Calls VALUES (4, 101, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO Calls VALUES (5, 102, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO Calls VALUES (6, 102, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO Calls VALUES (7, 102, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO Calls VALUES (8, 102, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO Calls VALUES (9, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO Calls VALUES (10, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));


-- Inserting dummy data into Messages table
INSERT INTO Messages VALUES  (1, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (2, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (3, 101, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (4, 101, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (5, 102, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (6, 102, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (7, 102, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES (8, 102, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (9, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Messages VALUES  (10, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));

INSERT INTO Messages VALUES  (1, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (2, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (3, 101, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (4, 101, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (5, 102, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (6, 102, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (7, 102, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO Messages VALUES (8, 102, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (9, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO Messages VALUES  (10, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));


-- Inserting dummy data into PAFDirections table
INSERT INTO PAFDirections VALUES  (1, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (2, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (3, 101, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (4, 101, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (5, 102, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (6, 102, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (7, 102, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (8, 102, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (9, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO PAFDirections VALUES  (10, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));


INSERT INTO PAFDirections VALUES  (1, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (2, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (3, 101, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (4, 101, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (5, 102, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (6, 102, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (7, 102, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (8, 102, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (9, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO PAFDirections VALUES  (10, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));


-- Inserting dummy data into WVFProfile table
INSERT INTO WVFProfile VALUES  (1, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (2, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (3, 101, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (4, 101, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (5, 102, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (6, 102, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (7, 102, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (8, 102, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (9, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO WVFProfile VALUES  (10, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));

INSERT INTO WVFProfile VALUES  (1, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (2, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (3, 101, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (4, 101, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (5, 102, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (6, 102, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (7, 102, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (8, 102, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (9, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO WVFProfile VALUES  (10, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));


-- Inserting dummy data into ProfileViews table
INSERT INTO ProfileViews VALUES (1, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (2, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (3, 101, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (4, 101, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (5, 102, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (6, 102, TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (7, 102, TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (8, 102, TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (9, 101, TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO ProfileViews VALUES  (10, 101, TO_DATE('2022-11-16', 'YYYY-MM-DD'));

INSERT INTO ProfileViews VALUES (1, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (2, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (3, 101, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (4, 101, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (5, 102, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (6, 102, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (7, 102, STR_TO_DATE('2022-12-17', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (8, 102, STR_TO_DATE('2022-12-18', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (9, 101, STR_TO_DATE('2022-11-15', '%Y-%m-%d'));
INSERT INTO ProfileViews VALUES  (10, 101, STR_TO_DATE('2022-11-16', '%Y-%m-%d'));


-- Inserting dummy data into Searches table
INSERT INTO Searches VALUES  (1, 101, 'Java', TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (2, 101, 'Database', TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (3, 101, 'Web Development', TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (4, 101, 'Machine Learning', TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (5, 102, 'Java', TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (6, 102, 'Database', TO_DATE('2022-11-16', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (7, 102, 'Web Development', TO_DATE('2022-12-17', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (8, 102, 'Machine Learning', TO_DATE('2022-12-18', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (9, 101, 'Java', TO_DATE('2022-11-15', 'YYYY-MM-DD'));
INSERT INTO Searches VALUES  (10, 101, 'Database', TO_DATE('2022-11-16', 'YYYY-MM-DD'));



SELECT COUNT(*) AS CallsCount
FROM Calls
WHERE TO_CHAR(Call_Date, 'MM') = TO_CHAR(ADD_MONTHS(SYSDATE, -1), 'MM');
