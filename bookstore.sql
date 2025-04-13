CREATE DATABASE Alkebulan_bookstore;
USE Alkebulan_bookstore;

CREATE TABLE book_language (
    language_id INT PRIMARY KEY AUTO_INCREMENT,
    language_code CHAR(2) NOT NULL,
    language_name VARCHAR(50) NOT NULL
);

INSERT INTO book_language (language_code, language_name) VALUES
('en', 'English'),
('fr', 'French'),
('pt', 'Portuguese'),
('ar', 'Arabic'),
('sw', 'Swahili');

CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY AUTO_INCREMENT,
    publisher_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

INSERT INTO publisher (publisher_name, country) VALUES
('Heinemann African Writers Series', 'UK'),
('Kwela Books', 'South Africa'),
('Cassava Republic Press', 'Nigeria'),
('Sub-Saharan Publishers', 'Ghana'),
('East African Educational Publishers', 'Kenya'),
('Nouvelles Éditions Africaines', 'Senegal'),
('Langaa RPCIG', 'Cameroon'),
('Jacana Media', 'South Africa'),
('Umuzi', 'South Africa'),
('Kachifo Limited', 'Nigeria');

CREATE TABLE author (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_year INT,
    death_year INT,
    country_of_origin VARCHAR(50),
    biography TEXT
);

-- Insert Authors
INSERT INTO author (first_name, last_name, birth_year, death_year, country_of_origin, biography) VALUES
-- Nigerian Authors
('Chinua', 'Achebe', 1930, 2013, 'Nigeria', 'Father of modern African literature, author of Things Fall Apart'),
('Wole', 'Soyinka', 1934, NULL, 'Nigeria', 'Nobel Prize winner, playwright and poet'),
('Chimamanda', 'Adichie', 1977, NULL, 'Nigeria', 'Feminist writer, author of Half of a Yellow Sun'),
('Buchi', 'Emecheta', 1944, 2017, 'Nigeria', 'Feminist novelist known for The Joys of Motherhood'),
('Ben', 'Okri', 1959, NULL, 'Nigeria', 'Booker Prize winner, author of The Famished Road'),
('Amos', 'Tutuola', 1920, 1997, 'Nigeria', 'Pioneer of African literature, wrote The Palm-Wine Drinkard'),
('Cyprian', 'Ekwensi', 1921, 2007, 'Nigeria', 'Popular novelist, author of Jagua Nana'),
('Helon', 'Habila', 1967, NULL, 'Nigeria', 'Author of Waiting for an Angel and Oil on Water'),
('Sefi', 'Atta', 1964, NULL, 'Nigeria', 'Author of Everything Good Will Come'),
('Teju', 'Cole', 1975, NULL, 'Nigeria', 'Author of Open City and Every Day is for the Thief'),

-- South African Authors
('Nadine', 'Gordimer', 1923, 2014, 'South Africa', 'Nobel Prize winner, anti-apartheid activist'),
('J.M.', 'Coetzee', 1940, NULL, 'South Africa', 'Nobel Prize winner, author of Disgrace'),
('Alan', 'Paton', 1903, 1988, 'South Africa', 'Author of Cry, the Beloved Country'),
('Zakes', 'Mda', 1948, NULL, 'South Africa', 'Playwright and novelist, author of Ways of Dying'),
('Bessie', 'Head', 1937, 1986, 'South Africa', 'Author of When Rain Clouds Gather'),
('Athol', 'Fugard', 1932, NULL, 'South Africa', 'Playwright known for Master Harold...and the Boys'),
('Lauren', 'Beukes', 1976, NULL, 'South Africa', 'Author of The Shining Girls and Zoo City'),
('Niq', 'Mhlongo', 1973, NULL, 'South Africa', 'Author of Dog Eat Dog'),
('Miriam', 'Tlali', 1933, 2017, 'South Africa', 'First black woman to publish a novel in South Africa'),
('Kopano', 'Matlwa', 1985, NULL, 'South Africa', 'Author of Coconut and Period Pain'),

-- Kenyan Authors
('Ngũgĩ wa', 'Thiong''o', 1938, NULL, 'Kenya', 'Postcolonial writer, author of Weep Not, Child'),
('Grace', 'Ogot', 1930, 2015, 'Kenya', 'First female Kenyan novelist in English'),
('Binyavanga', 'Wainaina', 1971, 2019, 'Kenya', 'Author of One Day I Will Write About This Place'),
('Meja', 'Mwangi', 1948, NULL, 'Kenya', 'Author of Going Down River Road'),
('Yvonne', 'Adhiambo', 1967, NULL, 'Kenya', 'Author of Dust and The Dragonfly Sea'),
('Mwenda', 'Githinji', 1975, NULL, 'Kenya', 'Author of Terrorists of the Aberdare'),
('Stanley', 'Gazemba', 1974, NULL, 'Kenya', 'Author of The Stone Hills of Maragoli'),
('Billy', 'Kahora', 1978, NULL, 'Kenya', 'Author of The True Story of David Munyakei'),
('Parsalelo', 'Teno', 1976, NULL, 'Kenya', 'Author of The People of Ostrich Mountain'),
('Wanjiru', 'Koinange', 1982, NULL, 'Kenya', 'Author of The Havoc of Choice'),

-- Ghanaian Authors
('Ayi Kwei', 'Armah', 1939, NULL, 'Ghana', 'Author of The Beautyful Ones Are Not Yet Born'),
('Ama Ata', 'Aidoo', 1942, NULL, 'Ghana', 'Feminist author, wrote Changes: A Love Story'),
('Kofi', 'Awoonor', 1935, 2013, 'Ghana', 'Poet and novelist, author of This Earth, My Brother'),
('Yaa', 'Gyasi', 1989, NULL, 'Ghana', 'Author of Homegoing'),
('Nii Ayikwei', 'Parkes', 1974, NULL, 'Ghana', 'Author of Tail of the Blue Bird'),
('Ayesha', 'Harruna', 1983, NULL, 'Ghana', 'Author of The Hundred Wells of Salaga'),
('Mohammed', 'Naseehu', 1975, NULL, 'Ghana', 'Author of The Prophet of Zongo Street'),
('Kofi', 'Anyidoho', 1947, NULL, 'Ghana', 'Poet and academic'),
('Efua', 'Sutherland', 1924, 1996, 'Ghana', 'Playwright and children''s author'),
('Carl', 'Collison', 1971, NULL, 'Ghana', 'Author of The Lazarus Effect'),

-- Other African Authors
('Naguib', 'Mahfouz', 1911, 2006, 'Egypt', 'Nobel Prize winner, author of Cairo Trilogy'),
('Tayeb', 'Salih', 1929, 2009, 'Sudan', 'Author of Season of Migration to the North'),
('Assia', 'Djebar', 1936, 2015, 'Algeria', 'Feminist writer and filmmaker'),
('Mariama', 'Bâ', 1929, 1981, 'Senegal', 'Author of So Long a Letter'),
('Ahmadou', 'Kourouma', 1927, 2003, 'Ivory Coast', 'Author of The Suns of Independence'),
('Mia', 'Couto', 1955, NULL, 'Mozambique', 'Author of Sleepwalking Land'),
('José Eduardo', 'Aguálusa', 1960, NULL, 'Angola', 'Author of The Book of Chameleons'),
('Dambudzo', 'Marechera', 1952, 1987, 'Zimbabwe', 'Author of The House of Hunger'),
('Tsitsi', 'Dangarembga', 1959, NULL, 'Zimbabwe', 'Author of Nervous Conditions'),
('Petina', 'Gappah', 1971, NULL, 'Zimbabwe', 'Author of The Book of Memory');

CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    publisher_id INT,
    language_id INT,
    num_pages INT,
    publication_date DATE,
    price DECIMAL(10,2),
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

-- Insert Books
INSERT INTO book (title, isbn, publisher_id, language_id, num_pages, publication_date, price) VALUES
-- Nigerian Authors' Books
('Things Fall Apart', '9780385474542', 1, 1, 209, '1958-06-17', 12.99),
('Arrow of God', '9780435905261', 1, 1, 287, '1964-01-01', 14.95),
('Half of a Yellow Sun', '9780007200283', 3, 1, 433, '2006-09-01', 16.99),
('Americanah', '9780307271082', 8, 1, 477, '2013-05-14', 15.99),
('The Famished Road', '9780385425131', 4, 1, 500, '1991-01-01', 17.50),
('The Palm-Wine Drinkard', '9780571200452', 1, 1, 125, '1952-01-01', 10.99),
('Jagua Nana', '9780435902475', 1, 1, 176, '1961-01-01', 11.50),
('Waiting for an Angel', '9780393052123', 2, 1, 224, '2002-01-01', 13.25),
('Everything Good Will Come', '9781844370564', 3, 1, 312, '2005-01-01', 14.99),
('Open City', '9780812980099', 5, 1, 259, '2011-02-08', 15.95),

-- South African Authors' Books
('July''s People', '9780140061406', 2, 1, 160, '1981-01-01', 12.99),
('Disgrace', '9780140296402', 2, 1, 220, '1999-01-01', 14.95),
('Cry, the Beloved Country', '9780743262170', 7, 1, 316, '1948-01-01', 11.99),
('Ways of Dying', '9780312420451', 6, 1, 208, '1995-01-01', 13.50),
('When Rain Clouds Gather', '9780435905407', 1, 1, 192, '1968-01-01', 10.99),
('Master Harold...and the Boys', '9780394501487', 8, 1, 60, '1982-01-01', 9.99),
('The Shining Girls', '9780316216859', 9, 1, 375, '2013-01-01', 16.99),
('Dog Eat Dog', '9780795702209', 2, 1, 192, '2004-01-01', 12.50),
('Muriel at Metropolitan', '9780869750813', 7, 1, 176, '1975-01-01', 11.25),
('Coconut', '9781770095393', 8, 1, 160, '2007-01-01', 10.99),

-- Kenyan Authors' Books
('Weep Not, Child', '9780143106692', 1, 1, 136, '1964-01-01', 11.99),
('The River Between', '9780435905483', 1, 1, 174, '1965-01-01', 12.50),
('One Day I Will Write About This Place', '9781555975900', 5, 1, 256, '2011-01-01', 15.99),
('Going Down River Road', '9780435901980', 1, 1, 224, '1976-01-01', 13.25),
('Dust', '9789966251935', 5, 1, 280, '2013-01-01', 14.50),
('The Dragonfly Sea', '9780525658603', 4, 1, 480, '2019-01-01', 18.99),
('Terrorists of the Aberdare', '9789966251560', 5, 1, 240, '2009-01-01', 12.99),
('The Stone Hills of Maragoli', '9789966251096', 5, 1, 192, '2002-01-01', 11.50),
('The True Story of David Munyakei', '9789966251805', 5, 1, 160, '2012-01-01', 10.99),
('The People of Ostrich Mountain', '9789966251751', 5, 1, 208, '2011-01-01', 12.50),

-- Ghanaian Authors' Books
('The Beautyful Ones Are Not Yet Born', '9780435905407', 1, 1, 180, '1968-01-01', 12.99),
('Fragments', '9780435905476', 1, 1, 288, '1970-01-01', 14.50),
('Changes: A Love Story', '9780435910104', 1, 1, 192, '1991-01-01', 13.99),
('This Earth, My Brother', '9780435905483', 1, 1, 224, '1971-01-01', 12.50),
('Homegoing', '9781101947135', 4, 1, 320, '2016-01-01', 16.99),
('Tail of the Blue Bird', '9780099529758', 3, 1, 160, '2009-01-01', 11.99),
('The Hundred Wells of Salaga', '9781911115512', 4, 1, 240, '2018-01-01', 14.50),
('The Prophet of Zongo Street', '9780060822105', 6, 1, 224, '2005-01-01', 13.25),
('Elegy for the Revolution', '9789988550961', 4, 1, 80, '1997-01-01', 9.99),
('The Lazarus Effect', '9781911115505', 4, 1, 280, '2017-01-01', 15.50),

-- Other African Authors' Books
('The Cairo Trilogy', '9780385264731', 7, 1, 1312, '1956-01-01', 24.99),
('Season of Migration to the North', '9780143037492', 2, 1, 176, '1966-01-01', 12.99),
('Women of Algiers in Their Apartment', '9780813914288', 6, 1, 176, '1980-01-01', 14.50),
('So Long a Letter', '9780435905551', 1, 2, 96, '1979-01-01', 10.99),
('The Suns of Independence', '9780435905651', 1, 2, 160, '1968-01-01', 12.50),
('Sleepwalking Land', '9781852428970', 5, 3, 224, '1992-01-01', 15.99),
('The Book of Chameleons', '9781869419821', 2, 3, 192, '2004-01-01', 13.99),
('The House of Hunger', '9780435905568', 1, 1, 128, '1978-01-01', 11.50),
('Nervous Conditions', '9780954702335', 7, 1, 204, '1988-01-01', 14.99),
('The Book of Memory', '9780374123839', 4, 1, 288, '2015-01-01', 16.50);

CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- Create Book-Author Relationships
INSERT INTO book_author (book_id, author_id) VALUES
-- Nigerian Authors
(1, 1), (2, 1), (3, 3), (4, 3), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
-- South African Authors
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(16, 16), (17, 17), (18, 18), (19, 19), (20, 20),
-- Kenyan Authors
(21, 21), (22, 21), (23, 23), (24, 24), (25, 25),
(26, 25), (27, 26), (28, 27), (29, 28), (30, 29),
-- Ghanaian Authors
(31, 31), (32, 31), (33, 32), (34, 33), (35, 34),
(36, 35), (37, 36), (38, 37), (39, 38), (40, 40),
-- Other African Authors
(41, 41), (42, 42), (43, 43), (44, 44), (45, 45),
(46, 46), (47, 47), (48, 48), (49, 49), (50, 50);

-- Create database users with appropriate privileges
CREATE USER 'alkebulan_admin'@'localhost' IDENTIFIED BY 'secure_password123';
GRANT ALL PRIVILEGES ON alkebulan.* TO 'alkebulan_admin'@'localhost';

CREATE USER 'alkebulan_manager'@'localhost' IDENTIFIED BY 'manager_pass456';
GRANT SELECT, INSERT, UPDATE, DELETE ON alkebulan.* TO 'alkebulan_manager'@'localhost';

CREATE USER 'alkebulan_staff'@'localhost' IDENTIFIED BY 'staff_pass789';
GRANT SELECT, INSERT, UPDATE ON alkebulan.book, alkebulan.author, alkebulan.book_author, 
    alkebulan.customer, alkebulan.cust_order, alkebulan.order_line TO 'alkebulan_staff'@'localhost';

CREATE USER 'alkebulan_report'@'localhost' IDENTIFIED BY 'report_pass321';
GRANT SELECT ON alkebulan.* TO 'alkebulan_report'@'localhost';

FLUSH PRIVILEGES;

SELECT b.title, a.first_name, a.last_name 
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
WHERE a.country_of_origin = 'Nigeria'
ORDER BY a.last_name, b.title;

SELECT title, price 
FROM book 
ORDER BY price DESC 
LIMIT 1;

SELECT l.language_name, COUNT(b.book_id) as book_count
FROM book b
JOIN book_language l ON b.language_id = l.language_id
GROUP BY l.language_name
ORDER BY book_count DESC;

SELECT a.first_name, a.last_name, COUNT(ba.book_id) as book_count
FROM author a
JOIN book_author ba ON a.author_id = ba.author_id
GROUP BY a.author_id
HAVING book_count > 1
ORDER BY book_count DESC;

SELECT title, publication_date 
FROM book 
WHERE publication_date >= '2001-01-01'
ORDER BY publication_date;



