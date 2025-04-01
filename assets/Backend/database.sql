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
('Who wrote “Romeo and Juliet”?', 'Shakespeare', 'Homer', 'Plato', 'Mark Twain', 'A'),
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
('In which sport is the term “love” used?', 'Football', 'Tennis', 'Badminton', 'Basketball', 'B'),
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
('Which animal is known as the “King of the Jungle”?', 'Lion', 'Tiger', 'Leopard', 'Jaguar', 'A'),
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
('What is the world’s most expensive spice by weight?', 'Cinnamon', 'Vanilla', 'Saffron', 'Turmeric', 'C'),
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
('In which movie does “Hakuna Matata” appear?', 'Aladdin', 'The Lion King', 'Frozen', 'Moana', 'B'),
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
('What is the name of Earth’s natural satellite?', 'Moon', 'Europa', 'Titan', 'Ganymede', 'A');

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
('Which game features a battle royale mode called “Warzone”?', 'PUBG', 'Fortnite', 'Call of Duty', 'Apex Legends', 'C'),
('What year was the first Super Mario Bros. game released?', '1985', '1990', '1983', '1989', 'A'),
('Which company developed Fortnite?', 'Epic Games', 'Ubisoft', 'Activision', 'EA Sports', 'A'),
('In which game do players explore an open-world post-apocalyptic Boston?', 'Fallout 4', 'The Witcher 3', 'Cyberpunk 2077', 'Skyrim', 'A'),
('What is the main objective in Minecraft?', 'Survive and Build', 'Destroy Villages', 'Race to Finish', 'Solve Puzzles', 'A');

-- Create user_scores table to store quiz results
CREATE TABLE user_scores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL,
    theme VARCHAR(50) NOT NULL,
    score INT NOT NULL,
    total_questions INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

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
