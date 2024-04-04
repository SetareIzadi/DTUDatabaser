drop database dkavisen;
create database dkavisen;
use dkavisen;


create table Journalists (
	Journalist_ID int,
    firstName varchar(30),
    lastName varchar(30),
    CPR_Number varchar(10),
    street_Name varchar(30),
    civic_Number varchar(5),
    city varchar(25),
    ZIP_code varchar(4),
    country varchar(20),
    telephone_Number varchar(8),
    email_address varchar(25),
    
    PRIMARY KEY (journalist_ID)
);


create table Photos (
	Photo_ID int,
    title varchar(50),
    shot_Date varchar(30),
    Reporter_ID int,
    
    PRIMARY KEY (Photo_ID),
    FOREIGN KEY (Reporter_ID) REFERENCES Journalists(Journalist_ID)
);
create table Newspapers (
	Newspaper_ID int,
    title varchar(25),
    founding_Date varchar(50),
    periodicity varchar(25),
    
    PRIMARY KEY (Newspaper_ID)
);

create table Roles (
	role_Name varchar(25),
    
    PRIMARY KEY (role_Name)
);

create table Editions (
	Edition_ID int,
    Newspaper_ID int,
    publication_Date int,
    Editor_ID int,
    
    PRIMARY KEY (Edition_ID),
    FOREIGN KEY (Newspaper_ID) REFERENCES Newspapers(Newspaper_ID),
    FOREIGN KEY (Editor_ID) REFERENCES Journalists(Journalist_ID)
);

create table Articles (
	Article_ID int,
    Edition_ID int,
    title varchar(25),
    article_Text text,
    topic varchar(50),
    read_Count int,
    
    PRIMARY KEY (Article_ID),
    FOREIGN KEY (Edition_ID) REFERENCES Editions(Edition_ID)
);

create table ArticleJournalists (
	Article_ID int,
    Journalist_ID int,
    role_Name varchar(20),
    
    FOREIGN KEY (Article_ID) REFERENCES Articles(Article_ID),
    FOREIGN KEY (Journalist_ID) REFERENCES Journalists(Journalist_ID),
    FOREIGN KEY (role_Name) REFERENCES Roles(role_Name)
);

INSERT Newspapers VALUES
('1', 'Sales', 'Mon Dec 12 00:00:00 CEST 2021', 'Weekly'),
('2', 'Stock Market', 'Fri Feb 23 00:00:00 CEST 2020', 'Daily'),
('3', 'Homeowners', 'Tue Jan 16 00:00:00 CEST 2018', 'Weekly'),
('4', 'Social Media', 'Wen Nov 25 00:00:00 CEST 2022', 'Weekly'),
('5', 'Cities', 'Mon Mar 08 00:00:00 CEST 2010', 'Montly'),
('6', 'Sport', 'Thu Apr 17 00:00:00 CEST 2013', 'Weekly'),
('7', 'Events', 'Mon Oct 14 00:00:00 CEST 2016', 'Montly'),
('8', 'Vacations', 'Tue Dec 23 00:00:00 CEST 2013', 'Yearly'),
('9', 'Healthy Food', 'Thu Mar 10 00:00:00 CEST 2016', 'Weekly'),
('10', 'How to', 'Wen Jun 26 00:00:00 CEST 2023', 'Weekly');


INSERT Roles VALUES
('Writer'),
('Publisher'),
('Writer'),
('Writer'),
('Publisher'),
('Publisher'),
('Writer'),
('Publisher'),
('Writer'),
('Publisher');

INSERT Editions VALUES
('1', '1', 'Mon Dec 12 00:00:00 CEST 2021', '1'),
('2', '2', 'Fri Feb 23 00:00:00 CEST 2020', '2'),
('3', '3', 'Tue Jan 16 00:00:00 CEST 2018', '3'),
('4', '4', 'Wen Nov 25 00:00:00 CEST 2022', '4'),
('5', '5', 'Mon Mar 08 00:00:00 CEST 2010', '5'),
('6', '6', 'Thu Apr 17 00:00:00 CEST 2013', '6'),
('7', '7', 'Mon Oct 14 00:00:00 CEST 2016', '7'),
('8', '8', 'ue Dec 23 00:00:00 CEST 2013', '8'),
('9', '9', 'Thu Mar 10 00:00:00 CEST 2016', '9'),
('10', '10', 'Wen Jun 26 00:00:00 CEST 2023', '10');

INSERT Articles VALUES
('1', '1', 'Sales', 'text', 'Store Sales' '4215'),
('2', '2', 'Stock Market', 'text', 'Investments' '1453'),
('3', '3', 'Homeowners', 'text', 'Home Tips' '2301'),
('4', '4', 'Social Media', 'text', 'Social Medias' '19203'),
('5', '5', 'Cities', 'text', 'Vacations' '9231'),
('6', '6', 'Sport', 'text', 'Sport' '23193'),
('7', '7', 'Events', 'text', 'Events' '523'),
('8', '8', 'Vacations', 'text', 'Vacations' '1393'),
('9', '9', 'Healthy Food', 'text', 'Health and Lifecare' '924'),
('10', '10', 'How to', 'text', 'Tutorials' '3483');

INSERT ArticleJournalists VALUES
('1', '1', 'Writer'),
('2', '2', 'Publisher'),
('3', '3', 'Writer'),
('4', '4', 'Writer'),
('5', '5', 'Publisher'),
('6', '6', 'Publisher'),
('7', '7', 'Writer'),
('8', '8', 'Publisher'),
('9', '9', 'Writer'),
('10', '10', 'Publisher');



