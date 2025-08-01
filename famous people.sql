CREATE DATABASE project;

-- Using existing database cohort
USE project;

-- Create Famous_People table
CREATE TABLE Famous_People (
    person_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    profession VARCHAR(50),
    country VARCHAR(50),
    Gender VARCHAR(10)
);

-- Create Movies table
CREATE TABLE Movies (
    movie_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_year YEAR,
    revenue DECIMAL(12,2),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES Famous_People(person_id)
);

-- Create Songs table
CREATE TABLE Songs (
    song_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    release_year YEAR,
    revenue DECIMAL(12,2),
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES Famous_People(person_id)
);

-- Create Awards table
CREATE TABLE Awards (
    award_id INT PRIMARY KEY AUTO_INCREMENT,
    award_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    year_awarded YEAR,
    person_id INT,
    FOREIGN KEY (person_id) REFERENCES Famous_People(person_id)
);

-- Create Regions table
CREATE TABLE Regions (
    region_id INT PRIMARY KEY AUTO_INCREMENT,
    region_name VARCHAR(50),
    person_id INT,
    success_metric VARCHAR(50),
    FOREIGN KEY (person_id) REFERENCES Famous_People(person_id)
);


-- Inserting values in tables
INSERT INTO Famous_People (full_name, profession, country, Gender) VALUES
('Michael Jackson', 'Singer', 'USA','Male'),
('Angelina Jolie', 'Actor', 'USA','Female'),
('Will Smith', 'Both', 'USA','Male'),
('Beyoncé Knowles', 'Singer', 'USA', 'Female'),
('Jackie Chan', 'Actor', 'Hong Kong', 'Male'),
('Rihanna Fenty', 'Singer', 'Barbados', 'Female'),
('Dwayne Johnson', 'Both', 'USA', 'Male'),
('Adele Adkins', 'Singer', 'UK', 'Female'),
('Chris Hemsworth', 'Actor', 'Australia', 'Male'),
('Lady Gaga', 'Both', 'USA', 'Female'),
('Bruno Mars', 'Singer', 'USA', 'Male'),
('Emma Watson', 'Actor', 'UK', 'Female'),
('Burna Boy', 'Singer', 'Nigeria', 'Male'),
('Lupita Nyong\'o', 'Actor', 'Kenya', 'Female'),
('Angelique Kidjo', 'Singer', 'Benin', 'Female'),
('Idris Elba', 'Both', 'Sierra Leone', 'Male'),
('Wizkid', 'Singer', 'Nigeria', 'Male'),
('Yemi Alade', 'Singer', 'Nigeria', 'Female'),
('Sarkodie', 'Singer', 'Ghana', 'Male'),
('Omotola Jalade', 'Actor', 'Nigeria', 'Female');

INSERT INTO Movies (title, release_year, revenue, person_id) VALUES
('Salt', 2010, 118500000, 2),
('Aladdin', 2019, 1120000000, 3),
('Rush Hour', 1998, 244000000, 5),
('Jumanji', 2017, 962000000, 7),
('Thor: Ragnarok', 2017, 854000000, 9),
('The Scorpion King', 2002, 165000000, 7),
('Maleficent', 2014, 758000000, 2),
('Baywatch', 2017, 178000000, 7),
('Avengers: Endgame', 2019, 2797800564, 9),
('A Star is Born', 2018, 436000000, 10),
('La La Land', 2016, 446000000, 12),
('Beauty and the Beast', 2017, 1263000000, 12),
('Beasts of No Nation', 2015, 50000000, 4),
('Half of a Yellow Sun', 2013, 10000000, 2),
('Last Flight to Abuja', 2012, 4000000, 8),
('The CEO', 2016, 3000000, 8),
('A Trip to Jamaica', 2016, 6000000, 4),
('30 Days in Atlanta', 2014, 5000000, 4),
('Chief Daddy', 2018, 8000000, 8),
('The Figurine', 2009, 2000000, 8),
('Black Panther', 2018, 1334000000, 14),
('Avengers Infinity War', 2018, 2000000000, 16),
('Last Flight to Abuja', 2012, 152130, 20);

INSERT INTO Songs (title, release_year, revenue, person_id) VALUES
('Thriller', 1982, 100000000, 1),
('Single Ladies', 2008, 60000000, 4),
('Umbrella', 2007, 80000000, 6),
('Rolling in the Deep', 2010, 85000000, 8),
('Poker Face', 2008, 70000000, 10),
('Halo', 2008, 75000000, 4),
('Diamonds', 2012, 68000000, 6),
('Bad', 1987, 60000000, 1),
('Born This Way', 2011, 72000000, 10),
('Shape of You', 2017, 95000000, 8),
('24K Magic', 2016, 72000000, 11),
('Just the Way You Are', 2010, 75000000, 11),
('Ye', 2018, 12000000, 13),
('Ojuelegba', 2014, 10000000, 17),
('On the Low', 2019, 11000000, 13),
('Waka Waka', 2010, 30000000, 15),
('Adonai', 2014, 5000000, 19),
('Soco', 2018, 8000000, 17),
('Johnny', 2013, 9000000, 18),
('Anybody', 2019, 10000000, 13);

INSERT INTO Awards (award_name, category, year_awarded, person_id) VALUES
('Grammy Lifetime', 'Music', 2009, 1),
('Academy Best Actress', 'Movie', 2000, 2),
('Grammy Best Song', 'Music', 2011, 4),
('MTV Best Fight Scene', 'Movie', 2017, 7),
('BAFTA Rising Star', 'Movie', 2011, 9),
('Guinness World Record', 'Music', 2007, 6),
('Billboard Top Artist', 'Music', 2010, 10),
('People''s Choice', 'Both', 2015, 3),
('Grammy Album of Year', 'Music', 2016, 8),
('Golden Globe Best Actor', 'Movie', 2019, 7),
('Brit Award Best Male', 'Music', 2017, 11),
('Teen Choice Actress', 'Movie', 2017, 12),
('BET Best International Act', 'Music', 2019, 13),
('Grammy Award', 'Music', 2020, 15),
('MTV Africa Music Award', 'Music', 2016, 17),
('AMAA Best Actor', 'Movie', 2015, 16),
('AMAA Best Actress', 'Movie', 2014, 20),
('AFRIMA Best Rapper', 'Music', 2019, 19),
('People\'s Choice Award', 'Movie', 2018, 14),
('Channel O Music Video Award', 'Music', 2013, 18);

INSERT INTO Regions (region_name, person_id, success_metric) VALUES
('North America', 1, 'Highly Successful'),
('North America', 2, 'Highly Successful'),
('North America', 3, 'Moderate'),
('North America', 4, 'Highly Successful'),
('Asia', 5, 'Highly Successful'),
('Caribbean', 6, 'Highly Successful'),
('North America', 7, 'Highly Successful'),
('Europe', 8, 'Highly Successful'),
('Australia', 9, 'Moderate'),
('North America', 10, 'Highly Successful'),
('North America', 11, 'Highly Successful'),
('Europe', 12, 'Highly Successful'),
('West Africa', 13, 'Highly Successful'),
('East Africa', 14, 'Highly Successful'),
('West Africa', 15, 'Highly Successful'),
('West Africa', 16, 'Highly Successful'),
('West Africa', 17, 'Highly Successful'),
('West Africa', 18, 'Highly Successful'),
('West Africa', 19, 'Highly Successful'),
('West Africa', 20, 'Highly Successful');

-- Viewing each table and exporting into csv file
SELECT * FROM Famous_People;
SELECT * FROM Movies;
SELECT * FROM Songs;
SELECT * FROM Awards;
SELECT * FROM Regions;

-- Question 1: Top 5 most connected famous people
/** we determined that a connected person here is someone who has who has gained recognition in the movie or music industry or both
and such people have won awards also. and so if a person appeared in multiple movies and songs and also won an award  
we consider the person to be connected**/ 
SELECT 
fp.full_name,
COUNT(DISTINCT m.movie_id) AS total_movies,
COUNT(DISTINCT s.song_id) AS total_songs,
COUNT(DISTINCT a.award_id) AS total_awards,
COUNT(DISTINCT m.movie_id) + COUNT(DISTINCT s.song_id) + COUNT(DISTINCT a.award_id) AS total_connections
FROM famous_people fp
LEFT JOIN movies m ON m.person_id = fp.person_id
LEFT JOIN songs s ON s.person_id = fp.person_id
LEFT JOIN awards a ON a.person_id = fp.person_id
GROUP BY fp.full_name
ORDER BY total_connections DESC
LIMIT 5;

-- Question 2: What are the 5 least successful people in the field?
/** We defined success as their total revenue from their movies and songs and also their awards won **/
SELECT 
fp.full_name,
COALESCE(SUM(m.revenue),0) AS total_movie_revenue,
COALESCE(SUM(s.revenue),0) AS total_song_revenue,
COUNT(a.award_id) AS awards_won,
COALESCE(SUM(m.revenue), 0) + COALESCE(SUM(s.revenue), 0) AS total_revenue
/** The reason we added the COALESCE keyword in this is to make sure we don't return null values in our addition. 
The function makes sure all null values are treated as 0.
This is because in the case where a person doesn't have any revenue for music/movies, 
originally sql returns a null value in the table which will be problematic 
because you will not be able to perform subsequate aggregate functions**/
FROM famous_people fp
LEFT JOIN movies m ON m.person_id = fp.person_id
LEFT JOIN songs s ON s.person_id = fp.person_id
LEFT JOIN awards a ON a.person_id = fp.person_id
GROUP BY fp.full_name
ORDER BY total_revenue ASC, awards_won ASC
LIMIT 5;

-- Question 3: Where do these famous people come from, and in which region are their works most successful
SELECT 
fp.full_name,
fp.country AS origin_country,
r.region_name AS success_region
FROM famous_people fp
/** we performed a left join in order to get the tables related to the famous people table and their regions**/
LEFT JOIN regions r ON r.region_id = fp.person_id
GROUP BY fp.full_name, fp.country, r.region_name
ORDER BY fp.country;
    
-- Question 4: Award distribution across different categories
/**In this question we want to find the number of awards a category(movie/music) has won
and so we conducted our query on the awards table**/
SELECT category,COUNT(*) AS total_awards
FROM awards
GROUP BY category
ORDER BY total_awards DESC;
    
-- Question 5: Trend of revenue for movies and songs by year
 /** IN this question we want to find out how much revenue the movie and music industry has generated over time
 And so we first find the total revenue for each year and the total revenue for the song table for each year
 Then we combine both tables together using the UNION keyword to get the total revenue generated for both categories in a particular year**/
SELECT release_year, SUM(revenue) AS total_revenue, 'Movies' AS Category
FROM movies
GROUP BY release_year;

SELECT release_year, SUM(revenue) AS total_revenue, 'Songs' AS Category
FROM songs
GROUP BY release_year
ORDER BY release_year, Category;
    
-- Question 6: Which categories of awards are the most commonly won by people
/** In this question we want to find which award category ie: the movie or music industry has been won the most by the people  **/
SELECT category, COUNT(*) AS wins
FROM awards
GROUP BY category
ORDER BY wins DESC;

/** If we want a further breakdown to see which award type/name was won the most we can refer to the query below**/
SELECT award_name, COUNT(*) AS wins
FROM awards 
GROUP BY award_name
ORDER BY wins DESC;

-- Question 7: Which gender has achieved more award wins in the entertainment industry? 
SELECT fp.gender, COUNT(a.award_id) AS total_awards_won
FROM famous_people fp
JOIN awards a ON fp.person_id = a.person_id
GROUP BY fp.gender
ORDER BY total_awards_won;
    
-- Question 8: What is the average revenue generated by movies per region?
SELECT r.region_name AS region_name, AVG(m.revenue) AS average_revenue, 'Movie' AS content_type
FROM movies m
JOIN regions r ON m.person_id = r.region_id
GROUP BY r.region_name;

-- Question 9:  What is the average revenue generated by songs per region?
SELECT r.region_name AS region_name, AVG(s.revenue) AS average_revenue
FROM songs s 
JOIN regions r ON s.person_id = r.region_id
GROUP BY r.region_name;


-- Question 10: Which African countries have produced the highest number of award-winning entertainers?
/** In this we want to see which african countr has the most awards**/
SELECT fp.country, COUNT(fp.person_id) AS award_winning_entertainers
FROM famous_people fp
JOIN awards a ON fp.person_id = a.person_id
WHERE fp.country IN (
'Nigeria', 'Ghana', 'Kenya', 'Sierra Leone', 'Benin' )
GROUP BY fp.country
ORDER BY award_winning_entertainers DESC;
