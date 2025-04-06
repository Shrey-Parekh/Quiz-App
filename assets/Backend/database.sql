-- Create Database
CREATE DATABASE quiz_app;
USE quiz_app;

-- General Knowledge Questions Table
CREATE TABLE gk_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO gk_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Who was the first president of the United States?', 'George Washington', 'Abraham Lincoln', 'John Adams', 'Thomas Jefferson', 'A'),
('What is the smallest country in the world?', 'Vatican City', 'Monaco', 'San Marino', 'Malta', 'A'),
('How many continents are there?', '5', '6', '7', '8', 'C'),
('What is the currency of Japan?', 'Yuan', 'Yen', 'Won', 'Rupee', 'B'),
('Which language is spoken in Brazil?', 'Portuguese', 'Spanish', 'French', 'English', 'A'),
('Who wrote "Romeo and Juliet"?', 'Shakespeare', 'Homer', 'Plato', 'Mark Twain', 'A'),
('What is the capital of Canada?', 'Ottawa', 'Toronto', 'Vancouver', 'Montreal', 'A');

-- Sports Questions Table
CREATE TABLE sport_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO sport_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('How many players are there in a soccer team?', '9', '11', '13', '15', 'B'),
('What is the national sport of India?', 'Hockey', 'Cricket', 'Kabaddi', 'Football', 'A'),
('Which country hosted the 2016 Summer Olympics?', 'China', 'Brazil', 'Russia', 'UK', 'B'),
('How many rings are there in the Olympic logo?', '4', '5', '6', '7', 'B'),
('In which sport is the term "love" used?', 'Football', 'Tennis', 'Badminton', 'Basketball', 'B'),
('Who holds the record for the most goals in football history?', 'Pele', 'Cristiano Ronaldo', 'Lionel Messi', 'Maradona', 'B'),
('Which country won the first Cricket World Cup?', 'Australia', 'England', 'West Indies', 'India', 'C');

-- Science Questions Table
CREATE TABLE science_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO science_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the chemical symbol for gold?', 'Au', 'Ag', 'Hg', 'Pb', 'A'),
('What planet is known as the Red Planet?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'B'),
('Which gas do plants use for photosynthesis?', 'Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen', 'B'),
('What is the hardest natural substance on Earth?', 'Gold', 'Diamond', 'Iron', 'Platinum', 'B'),
('Who proposed the theory of relativity?', 'Newton', 'Darwin', 'Einstein', 'Galileo', 'C'),
('What is the chemical formula of water?', 'H2O', 'CO2', 'NaCl', 'O2', 'A'),
('How many bones are in the human body?', '200', '206', '210', '180', 'B');

-- Wildlife Questions Table
CREATE TABLE wildlife_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO wildlife_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the largest land animal?', 'Elephant', 'Giraffe', 'Rhino', 'Hippo', 'A'),
('Which animal is known as the "King of the Jungle"?', 'Lion', 'Tiger', 'Leopard', 'Jaguar', 'A'),
('What is the fastest land animal?', 'Cheetah', 'Lion', 'Horse', 'Gazelle', 'A'),
('Which bird is known for its colorful plumage and dances?', 'Peacock', 'Flamingo', 'Parrot', 'Sparrow', 'A'),
('What animal has the longest lifespan?', 'Whale', 'Elephant', 'Tortoise', 'Shark', 'C'),
('Which mammal can fly?', 'Bat', 'Penguin', 'Squirrel', 'Eagle', 'A'),
('Which animal is known to have the highest blood pressure?', 'Elephant', 'Giraffe', 'Whale', 'Crocodile', 'B');

-- Food Questions Table
CREATE TABLE food_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO food_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is sushi traditionally wrapped in?', 'Rice', 'Seaweed', 'Paper', 'Cabbage', 'B'),
('Which fruit has its seeds on the outside?', 'Strawberry', 'Apple', 'Mango', 'Banana', 'A'),
('What is the main ingredient in guacamole?', 'Tomato', 'Avocado', 'Onion', 'Lime', 'B'),
('Which nut is used to make marzipan?', 'Almond', 'Cashew', 'Walnut', 'Hazelnut', 'A'),
('What is the world's most expensive spice by weight?', 'Cinnamon', 'Vanilla', 'Saffron', 'Turmeric', 'C'),
('What type of pasta is shaped like a bow tie?', 'Spaghetti', 'Fettuccine', 'Farfalle', 'Penne', 'C'),
('Which country is known for its famous dish, Paella?', 'Spain', 'Italy', 'Mexico', 'Portugal', 'A');

-- Tech Questions Table
CREATE TABLE tech_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO tech_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Who founded Microsoft?', 'Steve Jobs', 'Bill Gates', 'Elon Musk', 'Mark Zuckerberg', 'B'),
('What does HTML stand for?', 'Hyperlink Markup Language', 'Hypertext Markup Language', 'High Tech Modern Language', 'None of the above', 'B'),
('What is the brain of a computer?', 'RAM', 'Hard Drive', 'CPU', 'Motherboard', 'C'),
('Which company developed the Android OS?', 'Apple', 'Google', 'Samsung', 'Microsoft', 'B'),
('What does HTTP stand for?', 'Hypertext Transfer Protocol', 'High Tech Text Protocol', 'High Transfer Text Platform', 'Hyperlink Text Transfer', 'A'),
('Which programming language is known as the backbone of web development?', 'Python', 'JavaScript', 'C++', 'Java', 'B'),
('What is the full form of CSS?', 'Cascading Style Sheet', 'Computer Style System', 'Content Styling Software', 'None of the above', 'A');

-- Movies Questions Table
CREATE TABLE movies_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO movies_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Who directed Titanic?', 'James Cameron', 'Steven Spielberg', 'Christopher Nolan', 'Quentin Tarantino', 'A'),
('Which movie won the Best Picture Oscar in 2020?', 'Joker', 'Parasite', '1917', 'Once Upon a Time in Hollywood', 'B'),
('What is the highest-grossing movie of all time?', 'Avatar', 'Titanic', 'Avengers: Endgame', 'Star Wars', 'C'),
('Who played Iron Man in the Marvel Cinematic Universe?', 'Chris Evans', 'Robert Downey Jr.', 'Mark Ruffalo', 'Tom Holland', 'B'),
('Which movie features the character Jack Sparrow?', 'Harry Potter', 'Pirates of the Caribbean', 'The Hobbit', 'Lord of the Rings', 'B'),
('In which movie does "Hakuna Matata" appear?', 'Aladdin', 'The Lion King', 'Frozen', 'Moana', 'B'),
('Who voiced Woody in Toy Story?', 'Tom Hanks', 'Tim Allen', 'Will Smith', 'Chris Evans', 'A');

-- Space Questions Table
CREATE TABLE space_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO space_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which planet is closest to the Sun?', 'Venus', 'Mercury', 'Mars', 'Earth', 'B'),
('What is the largest planet in our solar system?', 'Earth', 'Jupiter', 'Saturn', 'Neptune', 'B'),
('What is the name of our galaxy?', 'Andromeda', 'Milky Way', 'Orion', 'Centaurus', 'B'),
('Which planet has rings around it?', 'Mars', 'Venus', 'Saturn', 'Jupiter', 'C'),
('What is the smallest planet in our solar system?', 'Mars', 'Mercury', 'Pluto', 'Venus', 'B'),
('Who was the first human in space?', 'Neil Armstrong', 'Yuri Gagarin', 'Buzz Aldrin', 'Alan Shepard', 'B'),
('What is the name of Earth's natural satellite?', 'Moon', 'Europa', 'Titan', 'Ganymede', 'A');

-- Video Games Questions Table
CREATE TABLE videogames_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO videogames_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the best-selling video game of all time?', 'GTA V', 'Minecraft', 'Fortnite', 'Tetris', 'B'),
('Who is the main character in The Legend of Zelda?', 'Link', 'Zelda', 'Ganondorf', 'Mario', 'A'),
('Which game features a battle royale mode called "Warzone"?', 'PUBG', 'Fortnite', 'Call of Duty', 'Apex Legends', 'C'),
('What year was the first Super Mario Bros. game released?', '1985', '1990', '1983', '1989', 'A'),
('Which company developed Fortnite?', 'Epic Games', 'Ubisoft', 'Activision', 'EA Sports', 'A'),
('In which game do players explore an open-world post-apocalyptic Boston?', 'Fallout 4', 'The Witcher 3', 'Cyberpunk 2077', 'Skyrim', 'A'),
('What is the main objective in Minecraft?', 'Survive and Build', 'Destroy Villages', 'Race to Finish', 'Solve Puzzles', 'A');

CREATE TABLE IF NOT EXISTS maths_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO maths_questions (question_text, option_a, option_b, option_c, option_d, correct_option) 
VALUES
('What is the value of π (pi) rounded to two decimal places?', '3.12', '3.14', '3.16', '3.18', 'B'),
('What is 12 multiplied by 8?', '96', '84', '72', '108', 'A'),
('What is the square root of 144?', '10', '12', '14', '16', 'B'),
('What is 50% of 200?', '50', '100', '150', '200', 'B'),
('What is the sum of the angles in a triangle?', '90°', '180°', '270°', '360°', 'B'),
('What is the next prime number after 7?', '8', '9', '11', '13', 'C'),
('What is the derivative of x²?', 'x', '2x', 'x²', '2', 'B');

CREATE TABLE IF NOT EXISTS mythology_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO mythology_questions (question_text, option_a, option_b, option_c, option_d, correct_option) 
VALUES
('Who is the Greek god of war?', 'Zeus', 'Ares', 'Poseidon', 'Hades', 'B'),
('Which Norse god is known as the god of thunder?', 'Loki', 'Odin', 'Thor', 'Baldur', 'C'),
('Who was the Egyptian god of the afterlife?', 'Ra', 'Anubis', 'Osiris', 'Horus', 'C'),
('Which Hindu god is known as the "Destroyer"?', 'Brahma', 'Vishnu', 'Shiva', 'Indra', 'C'),
('In Greek mythology, who turned everything he touched into gold?', 'Midas', 'Achilles', 'Perseus', 'Hercules', 'A'),
('Who was the hero of the Trojan War who had an invulnerable body except for his heel?', 'Hercules', 'Odysseus', 'Achilles', 'Ajax', 'C'),
('Which mythological creature has the head of a lion, body of a goat, and tail of a snake?', 'Chimera', 'Minotaur', 'Hydra', 'Griffin', 'A');


CREATE TABLE IF NOT EXISTS literature_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO literature_questions (question_text, option_a, option_b, option_c, option_d, correct_option) 
VALUES
('Who wrote "Pride and Prejudice"?', 'Charlotte Brontë', 'Jane Austen', 'Emily Dickinson', 'Virginia Woolf', 'B'),
('Which Shakespeare play features the character Iago?', 'Hamlet', 'Othello', 'Macbeth', 'King Lear', 'B'),
('Which novel starts with "Call me Ishmael"?', 'Moby-Dick', 'Great Expectations', 'The Odyssey', 'War and Peace', 'A'),
('Who is the author of "The Great Gatsby"?', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'Mark Twain', 'John Steinbeck', 'B'),
('Which book series features a boy named Percy Jackson?', 'Harry Potter', 'The Hunger Games', 'Percy Jackson & The Olympians', 'The Maze Runner', 'C'),
('Who wrote "1984" and "Animal Farm"?', 'George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'H.G. Wells', 'A'),
('Which literary character has a companion named Dr. John Watson?', 'Sherlock Holmes', 'Hercule Poirot', 'James Bond', 'Atticus Finch', 'A');


CREATE TABLE IF NOT EXISTS history_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO history_questions (question_text, option_a, option_b, option_c, option_d, correct_option) 
VALUES
('Who was the first President of the United States?', 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'John Adams', 'B'),
('Which war was fought between the North and South regions of the United States?', 'World War I', 'The Civil War', 'The Revolutionary War', 'The War of 1812', 'B'),
('Who discovered America?', 'Christopher Columbus', 'Marco Polo', 'Vasco da Gama', 'James Cook', 'A'),
('What year did World War II end?', '1943', '1945', '1950', '1939', 'B'),
('Who was the leader of Germany during World War II?', 'Hitler', 'Stalin', 'Churchill', 'Roosevelt', 'A'),
('What ancient civilization built the pyramids?', 'Greek', 'Roman', 'Egyptian', 'Persian', 'C'),
('Who was the first man to step on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'Michael Collins', 'A');

CREATE TABLE IF NOT EXISTS geography_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO geography_questions (question_text, option_a, option_b, option_c, option_d, correct_option) 
VALUES
('What is the largest continent by land area?', 'Africa', 'Asia', 'North America', 'Europe', 'B'),
('Which country has the largest population in the world?', 'India', 'China', 'United States', 'Indonesia', 'B'),
('What is the capital city of Australia?', 'Sydney', 'Melbourne', 'Canberra', 'Brisbane', 'C'),
('Which is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean', 'C'),
('What is the highest mountain in the world?', 'K2', 'Mount Everest', 'Kangchenjunga', 'Lhotse', 'B'),
('Which country has the most islands in the world?', 'Japan', 'Philippines', 'Sweden', 'Indonesia', 'C'),
('What is the largest desert in the world?', 'Gobi Desert', 'Sahara Desert', 'Antarctic Desert', 'Arabian Desert', 'C');

CREATE TABLE IF NOT EXISTS geopolitics_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

INSERT INTO geopolitics_questions (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Which country annexed Crimea in 2014?', 'Russia', 'Ukraine', 'United States', 'Germany', 'A'),
('The South China Sea dispute mainly involves which country claiming vast territories?', 'China', 'India', 'Japan', 'Australia', 'A'),
('What is the primary purpose of NATO?', 'Economic Cooperation', 'Military Alliance', 'Trade Agreement', 'Environmental Protection', 'B'),
('Which two countries were involved in the Cold War?', 'USA and China', 'USA and USSR', 'Germany and USSR', 'France and UK', 'B'),
('Which international organization aims to maintain global peace and security?', 'UN', 'EU', 'ASEAN', 'IMF', 'A'),
('Which region has seen long-standing conflict between Israel and Palestine?', 'West Bank & Gaza', 'Syria', 'Lebanon', 'Iran', 'A'),
('What is the Belt and Road Initiative (BRI)?', 'A military alliance', 'A trade and infrastructure project', 'A climate change agreement', 'A human rights policy', 'B');

CREATE TABLE IF NOT EXISTS music_questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question_text TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);
INSERT INTO music_questions (question_text, option_a, option_b, option_c, option_d, correct_option) VALUES
('Who is known as the King of Pop?', 'Elvis Presley', 'Michael Jackson', 'Prince', 'Freddie Mercury', 'B'),
('Which musical instrument has 88 keys?', 'Guitar', 'Piano', 'Violin', 'Saxophone', 'B'),
('Which band recorded the album "Abbey Road"?', 'The Rolling Stones', 'The Beatles', 'Pink Floyd', 'Queen', 'B'),
('Who composed the famous piece "Fur Elise"?', 'Mozart', 'Beethoven', 'Bach', 'Chopin', 'B'),
('Which genre is Taylor Swift primarily known for?', 'Rock', 'Pop', 'Jazz', 'Classsical', 'B'),
('What is the highest male singing voice?', 'Bass', 'Tenor', 'Baritone', 'Soprano', 'B'),
('Which country is famous for originating Flamenco music?', 'Spain', 'Italy', 'Mexico', 'Brazil', 'A');

-- Create user_scores table to store quiz results
CREATE TABLE IF NOT EXISTS user_score (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    score INT NOT NULL,
    theme VARCHAR(50) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (email) REFERENCES users(email) ON DELETE CASCADE
);

ALTER TABLE user_score ADD COLUMN theme VARCHAR(50) NOT NULL;

select * from user_score;
SHOW TABLES;

INSERT INTO user_score (email, username, score, theme) VALUES
('ash@example.com', 'Ash', 8, 'general_knowledge'),
('brock@example.com', 'Brock', 6, 'sports'),
('misty@example.com', 'Misty', 9, 'science'),
('gary@example.com', 'Gary', 10, 'wildlife'),
('may@example.com', 'May', 7, 'food'),
('dawn@example.com', 'Dawn', 6, 'tech'),
('iris@example.com', 'Iris', 4, 'movies'),
('serena@example.com', 'Serena', 5, 'space'),
('paul@example.com', 'Paul', 10, 'video_games'),
('zoey@example.com', 'Zoey', 9, 'maths'),
('trip@example.com', 'Trip', 8, 'mythology'),
('gladion@example.com', 'Gladion', 7, 'science'),
('kiawe@example.com', 'Kiawe', 6, 'general_knowledge'),
('lana@example.com', 'Lana', 9, 'tech'),
('marnie@example.com', 'Marnie', 5, 'sports'),
('hop@example.com', 'Hop', 6, 'wildlife'),
('bea@example.com', 'Bea', 10, 'movies'),
('nessa@example.com', 'Nessa', 7, 'maths'),
('leon@example.com', 'Leon', 8, 'video_games'),
('raihan@example.com', 'Raihan', 6, 'mythology');

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) NOT NULL,
    dob DATE NOT NULL,
    gender ENUM('male', 'female', 'other') NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
drop table users;
select * from users; 

INSERT INTO users (name, email, phone, dob, gender, password) VALUES
('Ash', 'ash@example.com', '9876543210', '2000-05-10', 'male', 'password123'),
('Brock', 'brock@example.com', '9876543211', '1998-11-12', 'male', 'password123'),
('Misty', 'misty@example.com', '9876543212', '2001-07-08', 'female', 'password123'),
('Gary', 'gary@example.com', '9876543213', '1999-09-15', 'male', 'password123'),
('May', 'may@example.com', '9876543214', '2002-01-20', 'female', 'password123'),
('Dawn', 'dawn@example.com', '9876543215', '2000-06-18', 'female', 'password123'),
('Iris', 'iris@example.com', '9876543216', '1998-04-22', 'female', 'password123'),
('Serena', 'serena@example.com', '9876543217', '2003-03-11', 'female', 'password123'),
('Paul', 'paul@example.com', '9876543218', '2001-12-25', 'male', 'password123'),
('Zoey', 'zoey@example.com', '9876543219', '1999-08-30', 'female', 'password123'),
('Trip', 'trip@example.com', '9876543220', '2002-02-14', 'male', 'password123'),
('Gladion', 'gladion@example.com', '9876543221', '2000-10-01', 'male', 'password123'),
('Kiawe', 'kiawe@example.com', '9876543222', '1997-05-05', 'male', 'password123'),
('Lana', 'lana@example.com', '9876543223', '2003-09-09', 'female', 'password123'),
('Marnie', 'marnie@example.com', '9876543224', '2001-01-30', 'female', 'password123'),
('Hop', 'hop@example.com', '9876543225', '1999-03-03', 'male', 'password123'),
('Bea', 'bea@example.com', '9876543226', '2000-08-08', 'female', 'password123'),
('Nessa', 'nessa@example.com', '9876543227', '2002-06-16', 'female', 'password123'),
('Leon', 'leon@example.com', '9876543228', '1998-12-12', 'male', 'password123'),
('Raihan', 'raihan@example.com', '9876543229', '1997-07-07', 'male', 'password123');

CREATE TABLE user_reviews (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5) NOT NULL,
    feedback_type ENUM('general', 'content', 'bug', 'feature') NOT NULL,
    feedback TEXT NOT NULL,
    discovery ENUM('search', 'social', 'friend', 'ad', 'other') DEFAULT NULL,
    interests TEXT DEFAULT NULL, -- Can store multiple interests as comma-separated values if needed
    submitted_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

select* from user_reviews; 

SET GLOBAL general_log = 'ON';

-- Create contact_messages table
CREATE TABLE contact_messages (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    status ENUM('new', 'read', 'replied', 'archived') DEFAULT 'new',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
select* from contact_messages; 
-- Add some sample data

-- General Knowledge Questions
INSERT INTO gk_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean', 'C'),
('Which element is represented by the symbol "O" in the periodic table?', 'Osmium', 'Oxygen', 'Oganesson', 'Ochre', 'B'),
('In which year did World War II end?', '1943', '1945', '1947', '1950', 'B');

-- Sports Questions
INSERT INTO sport_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What sport is played at Wimbledon?', 'Golf', 'Tennis', 'Cricket', 'Football', 'B'),
('How many players are on a standard baseball team?', '9', '10', '11', '12', 'A'),
('Which country won the 2022 FIFA World Cup?', 'France', 'Brazil', 'Argentina', 'Germany', 'C');

-- Science Questions
INSERT INTO science_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the speed of light in vacuum?', '300,000 km/s', '300,000 m/s', '3,000,000 km/s', '3,000 km/s', 'A'),
('Which planet in our solar system has the most moons?', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'B'),
('What is the main component of the Sun?', 'Helium', 'Hydrogen', 'Nitrogen', 'Carbon', 'B');

-- Wildlife Questions
INSERT INTO wildlife_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the largest species of shark?', 'Great White Shark', 'Whale Shark', 'Hammerhead Shark', 'Tiger Shark', 'B'),
('Which animal has the longest migration?', 'Monarch Butterfly', 'Arctic Tern', 'Humpback Whale', 'Wildebeest', 'B'),
('What is a group of lions called?', 'Pack', 'Herd', 'Pride', 'Colony', 'C');

-- Food Questions
INSERT INTO food_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which country is known for inventing pizza?', 'Greece', 'Italy', 'France', 'Spain', 'B'),
('What is the main ingredient in hummus?', 'Lentils', 'Chickpeas', 'Kidney Beans', 'Black Beans', 'B'),
('Which spice is known as "Red Gold"?', 'Cardamom', 'Cinnamon', 'Saffron', 'Paprika', 'C');

-- Tech Questions
INSERT INTO tech_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What does CPU stand for?', 'Central Processing Unit', 'Computer Personal Unit', 'Central Process Utility', 'Core Processing Unit', 'A'),
('Which company created the iPhone?', 'Microsoft', 'Google', 'Samsung', 'Apple', 'D'),
('What is the name of the first widely-used graphical web browser?', 'Internet Explorer', 'Mosaic', 'Firefox', 'Chrome', 'B');

-- Movies Questions
INSERT INTO movies_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which movie features a character named "Forrest Gump"?', 'Saving Private Ryan', 'The Green Mile', 'Forrest Gump', 'Cast Away', 'C'),
('Who directed "Inception"?', 'Steven Spielberg', 'Christopher Nolan', 'James Cameron', 'Quentin Tarantino', 'B'),
('Which actor played Jack Dawson in the movie "Titanic"?', 'Brad Pitt', 'Leonardo DiCaprio', 'Matt Damon', 'Johnny Depp', 'B');

-- Space Questions
INSERT INTO space_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What was the first artificial satellite launched into space?', 'Explorer 1', 'Sputnik 1', 'Vanguard TV3', 'Apollo 1', 'B'),
('What is a light-year a measure of?', 'Time', 'Brightness', 'Distance', 'Weight', 'C'),
('What is the Great Red Spot on Jupiter?', 'A volcano', 'A storm', 'A crater', 'An ocean', 'B');

-- Video Games Questions
INSERT INTO videogames_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which video game company created Mario?', 'Sony', 'Nintendo', 'Sega', 'Microsoft', 'B'),
('What is the name of the protagonist in "The Legend of Zelda" series?', 'Zelda', 'Link', 'Ganon', 'Navi', 'B'),
('Which game series features a character named Master Chief?', 'Call of Duty', 'Gears of War', 'Halo', 'Doom', 'C');

-- Maths Questions
INSERT INTO maths_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('What is the value of x in the equation 2x + 5 = 15?', '5', '10', '7.5', '3', 'A'),
('What is the area of a circle with radius 3 units?', '6π units²', '9π units²', '3π units²', '18π units²', 'B'),
('What is the Pythagorean theorem?', 'a² + b² = c²', 'a + b = c', 'a² - b² = c²', 'a²b² = c²', 'A');

-- Mythology Questions
INSERT INTO mythology_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Who is the Roman god of love?', 'Eros', 'Cupid', 'Venus', 'Apollo', 'B'),
('In Norse mythology, which creature continually gnaws at the roots of Yggdrasil?', 'Fenrir', 'Jormungandr', 'Nidhogg', 'Sleipnir', 'C'),
('Who is the Greek goddess of wisdom?', 'Hera', 'Athena', 'Artemis', 'Aphrodite', 'B');

-- Literature Questions
INSERT INTO literature_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Who wrote "Don Quixote"?', 'Miguel de Cervantes', 'Leo Tolstoy', 'William Shakespeare', 'Charles Dickens', 'A'),
('Which author created the character Sherlock Holmes?', 'Agatha Christie', 'Arthur Conan Doyle', 'Edgar Allan Poe', 'Mark Twain', 'B'),
('In "To Kill a Mockingbird," what is the name of the protagonist?', 'Atticus Finch', 'Scout Finch', 'Jem Finch', 'Boo Radley', 'B');

-- History Questions
INSERT INTO history_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('In which year did the Berlin Wall fall?', '1985', '1989', '1991', '1993', 'B'),
('Who was the first woman to win a Nobel Prize?', 'Marie Curie', 'Mother Teresa', 'Rosalind Franklin', 'Jane Addams', 'A'),
('Which ancient wonder was located in Alexandria?', 'Colossus of Rhodes', 'Hanging Gardens', 'Lighthouse of Alexandria', 'Statue of Zeus', 'C');

-- Geography Questions
INSERT INTO geography_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which river is the longest in the world?', 'Amazon', 'Nile', 'Mississippi', 'Yangtze', 'B'),
('What is the capital of Canada?', 'Toronto', 'Vancouver', 'Montreal', 'Ottawa', 'D'),
('Which country has the most natural lakes?', 'Canada', 'Russia', 'United States', 'Brazil', 'A');

-- Geopolitics Questions
INSERT INTO geopolitics_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which organization was established after World War II to maintain international peace?', 'NATO', 'United Nations', 'European Union', 'World Bank', 'B'),
('What is Brexit?', 'British expansion treaty', 'Britain\'s exit from the European Union', 'British economic strategy', 'British trade agreement', 'B'),
('Which strait connects the Mediterranean Sea with the Atlantic Ocean?', 'Strait of Hormuz', 'Strait of Malacca', 'Strait of Gibraltar', 'Bosporus Strait', 'C');

-- Music Questions
INSERT INTO music_questions (question_text, option_a, option_b, option_c, option_d, correct_option)
VALUES
('Which band performed the song "Bohemian Rhapsody"?', 'Led Zeppelin', 'Queen', 'The Rolling Stones', 'Pink Floyd', 'B'),
('What type of instrument is a cello?', 'Woodwind', 'Brass', 'Percussion', 'String', 'D'),
('Who is known as the "Father of Modern Classical Music"?', 'Mozart', 'Bach', 'Beethoven', 'Tchaikovsky', 'C');



-- Create a simplified leaderboard table
CREATE TABLE leaderboard (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    theme VARCHAR(50) NOT NULL,
    raw_score INT NOT NULL,
    percentage_score DECIMAL(5,2) NOT NULL,
    played_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_email) REFERENCES users(email) ON DELETE CASCADE
);

-- Index for faster querying
CREATE INDEX idx_leaderboard_score ON leaderboard (percentage_score DESC);
CREATE INDEX idx_leaderboard_theme ON leaderboard (theme);

-- Simple query to populate the leaderboard with existing scores
-- This calculates percentage based on theme (some themes may have 7 questions, others 10)
INSERT INTO leaderboard (user_email, username, theme, raw_score, percentage_score, played_at)
SELECT 
    us.email, 
    u.name AS username,
    us.theme,
    us.score AS raw_score,
    CASE 
        -- Add cases for themes with different total questions
        WHEN us.theme IN ('wildlife', 'food', 'tech', 'movies', 'space', 'videogames') THEN (us.score * 100.0) / 7
        ELSE (us.score * 100.0) / 10  -- Default to 10 questions
    END AS percentage_score,
    us.timestamp
FROM 
    user_score us
JOIN 
    users u ON us.email = u.email;

-- Simple query to add a new score to the leaderboard
-- Example of how to run this when a new score is added:
/*
INSERT INTO leaderboard (user_email, username, theme, raw_score, percentage_score, played_at)
SELECT 
    'user@example.com',  -- Replace with the user's email
    (SELECT name FROM users WHERE email = 'user@example.com'),
    'science',  -- Replace with the quiz theme
    8,  -- Replace with the raw score
    (8 * 100.0) / 10,  -- Calculate percentage (adjust divisor based on theme)
    NOW();
*/
select * from leaderboard;
-- Query to get top 10 scores across all themes
SELECT username, theme, raw_score, percentage_score
FROM leaderboard
ORDER BY percentage_score DESC
LIMIT 10;

-- Query to get top 10 scores for a specific theme
SELECT username, raw_score, percentage_score
FROM leaderboard
WHERE theme = 'science'  -- Replace with any theme
ORDER BY percentage_score DESC
LIMIT 10;

-- Query to get a specific user's scores
SELECT theme, raw_score, percentage_score, played_at
FROM leaderboard
WHERE user_email = 'user@example.com'  -- Replace with user's email
ORDER BY played_at DESC;


INSERT INTO leaderboard (user_email, username, theme, raw_score, percentage_score) VALUES
('ash@example.com', 'Ash', 'general_knowledge', 8, 80.00),
('brock@example.com', 'Brock', 'sports', 6, 60.00),
('misty@example.com', 'Misty', 'science', 9, 90.00),
('gary@example.com', 'Gary', 'wildlife', 10, 100.00),
('may@example.com', 'May', 'food', 7, 70.00),
('dawn@example.com', 'Dawn', 'tech', 6, 60.00),
('iris@example.com', 'Iris', 'movies', 4, 40.00),
('serena@example.com', 'Serena', 'space', 5, 50.00),
('paul@example.com', 'Paul', 'video_games', 10, 100.00),
('zoey@example.com', 'Zoey', 'maths', 9, 90.00),
('trip@example.com', 'Trip', 'mythology', 8, 80.00),
('gladion@example.com', 'Gladion', 'science', 7, 70.00),
('kiawe@example.com', 'Kiawe', 'general_knowledge', 6, 60.00),
('lana@example.com', 'Lana', 'tech', 9, 90.00),
('marnie@example.com', 'Marnie', 'sports', 5, 50.00),
('hop@example.com', 'Hop', 'wildlife', 6, 60.00),
('bea@example.com', 'Bea', 'movies', 10, 100.00),
('nessa@example.com', 'Nessa', 'maths', 7, 70.00),
('leon@example.com', 'Leon', 'video_games', 8, 80.00),
('raihan@example.com', 'Raihan', 'mythology', 6, 60.00);

   DELETE FROM leaderboard 
   WHERE user_email IS NULL 
   OR username IS NULL 
   OR theme IS NULL 
   OR raw_score IS NULL 
   OR percentage_score IS NULL
   OR played_at IS NULL;

-- Create user_profiles table to store additional profile information
CREATE TABLE user_profiles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    bio TEXT,
    location VARCHAR(255),
    interests TEXT,
    favorite_category VARCHAR(50),
    achievement_goals TEXT,
    profile_photo_url TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
select * from user_profiles;
-- Create index for faster user profile lookups
CREATE INDEX idx_user_profiles_user_id ON user_profiles(user_id);

-- Create user_notifications table to store notification preferences
CREATE TABLE user_notifications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    notification_type VARCHAR(50) NOT NULL,
    is_enabled BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Create index for faster notification preference lookups
CREATE INDEX idx_user_notifications_user_id ON user_notifications(user_id);
CREATE INDEX idx_user_notifications_type ON user_notifications(notification_type);

-- Insert sample notification preferences for existing users
INSERT INTO user_notifications (user_id, notification_type, is_enabled) 
SELECT id, 'new-quizzes', TRUE FROM users 
UNION ALL
SELECT id, 'achievements', TRUE FROM users 
UNION ALL
SELECT id, 'leaderboard', FALSE FROM users 
UNION ALL
SELECT id, 'friends', FALSE FROM users;

-- Insert sample profile data for existing users
INSERT INTO user_profiles (user_id, bio, location, interests, favorite_category, achievement_goals) 
VALUES 
(1, 'I love quizzes and learning new things!', 'New York', 'Trivia, Reading, Travel', 'science', 'I want to reach the top of the leaderboard in all categories'),
(2, 'Quiz enthusiast and knowledge seeker', 'London', 'Sports, History, Science', 'sports', 'Complete all quizzes with perfect scores'),
(3, 'Always curious, always learning', 'Tokyo', 'Technology, Arts, Music', 'tech', 'Master the technology quizzes');
