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

drop table user_scores; 

select * from user_score;
SHOW TABLES;


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

select * from users; 


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
