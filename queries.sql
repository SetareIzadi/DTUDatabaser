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
    title varchar(20),
    founding_Date date,
    periodicity varchar(20),
    
    PRIMARY KEY (Newspaper_ID)
);

create table Roles (
	role_Name varchar(20),
    
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
    title varchar(20),
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


