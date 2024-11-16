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
('Reporter');

INSERT Editions VALUES
('1', '1', 'Mon Dec 12 00:00:00 CEST 2021', (select Journalist_ID from Journalists where Journalist_ID=0)),
('2', '2', 'Fri Feb 23 00:00:00 CEST 2020', (select Journalist_ID from Journalists where Journalist_ID=1)),
('3', '3', 'Tue Jan 16 00:00:00 CEST 2018', (select Journalist_ID from Journalists where Journalist_ID=2)),
('4', '4', 'Wen Nov 25 00:00:00 CEST 2022', (select Journalist_ID from Journalists where Journalist_ID=3)),
('5', '5', 'Mon Mar 08 00:00:00 CEST 2010', (select Journalist_ID from Journalists where Journalist_ID=4)),
('6', '6', 'Thu Apr 17 00:00:00 CEST 2013', (select Journalist_ID from Journalists where Journalist_ID=5)),
('7', '7', 'Mon Oct 14 00:00:00 CEST 2016', (select Journalist_ID from Journalists where Journalist_ID=6)),
('8', '8', 'Tue Dec 23 00:00:00 CEST 2013', (select Journalist_ID from Journalists where Journalist_ID=7)),
('9', '9', 'Thu Mar 10 00:00:00 CEST 2016', (select Journalist_ID from Journalists where Journalist_ID=8)),
('10', '10', 'Wen Jun 26 00:00:00 CEST 2023', (select Journalist_ID from Journalists where Journalist_ID=9));

INSERT Articles VALUES
('1', (select Edition_ID from Editions where Edition_ID=1), 'Sales', 'text', 'Store Sales', '4215'),
('2', (select Edition_ID from Editions where Edition_ID=2), 'Stock Market', 'text', 'Investments', '1453'),
('3', (select Edition_ID from Editions where Edition_ID=3), 'Homeowners', 'text', 'Home Tips', '2301'),
('4', (select Edition_ID from Editions where Edition_ID=4), 'Social Media', 'text', 'Social Medias', '19203'),
('5', (select Edition_ID from Editions where Edition_ID=5), 'Cities', 'text', 'Vacations', '9231'),
('6', (select Edition_ID from Editions where Edition_ID=6), 'Sport', 'text', 'Sport', '23193'),
('7', (select Edition_ID from Editions where Edition_ID=7), 'Events', 'text', 'Events', '523'),
('8', (select Edition_ID from Editions where Edition_ID=8), 'Vacations', 'text', 'Vacations', '1393'),
('9', (select Edition_ID from Editions where Edition_ID=9), 'Healthy Food', 'text', 'Health and Lifecare', '924'),
('10', (select Edition_ID from Editions where Edition_ID=0), 'How to', 'text', 'Tutorials', '3483');

INSERT ArticleJournalists VALUES
((select Article_ID from Articles where Article_ID=1), (select Journalist_ID from Journalists where Journalist_ID=1), (select role_Name from Roles where role_Name='Writer')),
((select Article_ID from Articles where Article_ID=2), (select Journalist_ID from Journalists where Journalist_ID=2), (select role_Name from Roles where role_Name='Publisher')),
((select Article_ID from Articles where Article_ID=3), (select Journalist_ID from Journalists where Journalist_ID=3), (select role_Name from Roles where role_Name='Writer')),
((select Article_ID from Articles where Article_ID=4), (select Journalist_ID from Journalists where Journalist_ID=4), (select role_Name from Roles where role_Name='Writer')),
((select Article_ID from Articles where Article_ID=5), (select Journalist_ID from Journalists where Journalist_ID=5), (select role_Name from Roles where role_Name='Publisher')),
((select Article_ID from Articles where Article_ID=6), (select Journalist_ID from Journalists where Journalist_ID=6), (select role_Name from Roles where role_Name='Publisher')),
((select Article_ID from Articles where Article_ID=7), (select Journalist_ID from Journalists where Journalist_ID=7), (select role_Name from Roles where role_Name='Writer')),
((select Article_ID from Articles where Article_ID=8), (select Journalist_ID from Journalists where Journalist_ID=8), (select role_Name from Roles where role_Name='Publisher')),
((select Article_ID from Articles where Article_ID=9), (select Journalist_ID from Journalists where Journalist_ID=9), (select role_Name from Roles where role_Name='Writer')),
((select Article_ID from Articles where Article_ID=10), (select Journalist_ID from Journalists where Journalist_ID=10), (select role_Name from Roles where role_Name='Publisher'));

INSERT ArticlePhotos VALUES
((select Article_ID from Articles where Article_ID=1), (select Photo_ID from Photos where Photo_ID=0)),
((select Article_ID from Articles where Article_ID=2), (select Photo_ID from Photos where Photo_ID=1)),
((select Article_ID from Articles where Article_ID=3), (select Photo_ID from Photos where Photo_ID=2)),
((select Article_ID from Articles where Article_ID=4), (select Photo_ID from Photos where Photo_ID=3)),
((select Article_ID from Articles where Article_ID=5), (select Photo_ID from Photos where Photo_ID=4)),
((select Article_ID from Articles where Article_ID=6), (select Photo_ID from Photos where Photo_ID=5)),
((select Article_ID from Articles where Article_ID=7), (select Photo_ID from Photos where Photo_ID=6)),
((select Article_ID from Articles where Article_ID=8), (select Photo_ID from Photos where Photo_ID=7));