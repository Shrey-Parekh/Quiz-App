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
('What is the capital of Canada?', 'Ottawa', 'Toronto', 'Vancouver', 'Montreal', 'A'),
('What is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Pacific Ocean', 'Arctic Ocean', 'C'),
('Which element is represented by the symbol "O" in the periodic table?', 'Osmium', 'Oxygen', 'Oganesson', 'Ochre', 'B'),
('In which year did World War II end?', '1943', '1945', '1947', '1950', 'B');


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
('Which country won the first Cricket World Cup?', 'Australia', 'England', 'West Indies', 'India', 'C'),
('What sport is played at Wimbledon?', 'Golf', 'Tennis', 'Cricket', 'Football', 'B'),
('How many players are on a standard baseball team?', '9', '10', '11', '12', 'A'),
('Which country won the 2022 FIFA World Cup?', 'France', 'Brazil', 'Argentina', 'Germany', 'C');
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
('How many bones are in the human body?', '200', '206', '210', '180', 'B'),
('What is the speed of light in vacuum?', '300,000 km/s', '300,000 m/s', '3,000,000 km/s', '3,000 km/s', 'A'),
('Which planet in our solar system has the most moons?', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'B'),
('What is the main component of the Sun?', 'Helium', 'Hydrogen', 'Nitrogen', 'Carbon', 'B');


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
('Which animal is known to have the highest blood pressure?', 'Elephant', 'Giraffe', 'Whale', 'Crocodile', 'B'),
('What is the largest species of shark?', 'Great White Shark', 'Whale Shark', 'Hammerhead Shark', 'Tiger Shark', 'B'),
('Which animal has the longest migration?', 'Monarch Butterfly', 'Arctic Tern', 'Humpback Whale', 'Wildebeest', 'B'),
('What is a group of lions called?', 'Pack', 'Herd', 'Pride', 'Colony', 'C');


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
('What is the worlds most expensive spice by weight?', 'Cinnamon', 'Vanilla', 'Saffron', 'Turmeric', 'C'),
('What type of pasta is shaped like a bow tie?', 'Spaghetti', 'Fettuccine', 'Farfalle', 'Penne', 'C'),
('Which country is known for its famous dish, Paella?', 'Spain', 'Italy', 'Mexico', 'Portugal', 'A'),
('Which country is known for inventing pizza?', 'Greece', 'Italy', 'France', 'Spain', 'B'),
('What is the main ingredient in hummus?', 'Lentils', 'Chickpeas', 'Kidney Beans', 'Black Beans', 'B'),
('Which spice is known as "Red Gold"?', 'Cardamom', 'Cinnamon', 'Saffron', 'Paprika', 'C');

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
('What is the full form of CSS?', 'Cascading Style Sheet', 'Computer Style System', 'Content Styling Software', 'None of the above', 'A'),
('What does CPU stand for?', 'Central Processing Unit', 'Computer Personal Unit', 'Central Process Utility', 'Core Processing Unit', 'A'),
('Which company created the iPhone?', 'Microsoft', 'Google', 'Samsung', 'Apple', 'D'),
('What is the name of the first widely-used graphical web browser?', 'Internet Explorer', 'Mosaic', 'Firefox', 'Chrome', 'B');


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
('Who voiced Woody in Toy Story?', 'Tom Hanks', 'Tim Allen', 'Will Smith', 'Chris Evans', 'A'),
('Which movie features a character named "Forrest Gump"?', 'Saving Private Ryan', 'The Green Mile', 'Forrest Gump', 'Cast Away', 'C'),
('Who directed "Inception"?', 'Steven Spielberg', 'Christopher Nolan', 'James Cameron', 'Quentin Tarantino', 'B'),
('Which actor played Jack Dawson in the movie "Titanic"?', 'Brad Pitt', 'Leonardo DiCaprio', 'Matt Damon', 'Johnny Depp', 'B');

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
('What is the name of Earth natural satellite?', 'Moon', 'Europa', 'Titan', 'Ganymede', 'A'),
('What was the first artificial satellite launched into space?', 'Explorer 1', 'Sputnik 1', 'Vanguard TV3', 'Apollo 1', 'B'),
('What is a light-year a measure of?', 'Time', 'Brightness', 'Distance', 'Weight', 'C'),
('What is the Great Red Spot on Jupiter?', 'A volcano', 'A storm', 'A crater', 'An ocean', 'B');

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
('What is the main objective in Minecraft?', 'Survive and Build', 'Destroy Villages', 'Race to Finish', 'Solve Puzzles', 'A'),
('Which video game company created Mario?', 'Sony', 'Nintendo', 'Sega', 'Microsoft', 'B'),
('What is the name of the protagonist in "The Legend of Zelda" series?', 'Zelda', 'Link', 'Ganon', 'Navi', 'B'),
('Which game series features a character named Master Chief?', 'Call of Duty', 'Gears of War', 'Halo', 'Doom', 'C');

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
('What is the derivative of x²?', 'x', '2x', 'x²', '2', 'B'),
('What is the value of x in the equation 2x + 5 = 15?', '5', '10', '7.5', '3', 'A'),
('What is the area of a circle with radius 3 units?', '6π units²', '9π units²', '3π units²', '18π units²', 'B'),
('What is the Pythagorean theorem?', 'a² + b² = c²', 'a + b = c', 'a² - b² = c²', 'a²b² = c²', 'A');


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
('Which mythological creature has the head of a lion, body of a goat, and tail of a snake?', 'Chimera', 'Minotaur', 'Hydra', 'Griffin', 'A'),
('Who is the Roman god of love?', 'Eros', 'Cupid', 'Venus', 'Apollo', 'B'),
('In Norse mythology, which creature continually gnaws at the roots of Yggdrasil?', 'Fenrir', 'Jormungandr', 'Nidhogg', 'Sleipnir', 'C'),
('Who is the Greek goddess of wisdom?', 'Hera', 'Athena', 'Artemis', 'Aphrodite', 'B');


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
('Which literary character has a companion named Dr. John Watson?', 'Sherlock Holmes', 'Hercule Poirot', 'James Bond', 'Atticus Finch', 'A'),
('Who wrote "Don Quixote"?', 'Miguel de Cervantes', 'Leo Tolstoy', 'William Shakespeare', 'Charles Dickens', 'A'),
('Which author created the character Sherlock Holmes?', 'Agatha Christie', 'Arthur Conan Doyle', 'Edgar Allan Poe', 'Mark Twain', 'B'),
('In "To Kill a Mockingbird," what is the name of the protagonist?', 'Atticus Finch', 'Scout Finch', 'Jem Finch', 'Boo Radley', 'B');


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
('Who was the first man to step on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'Michael Collins', 'A'),
('In which year did the Berlin Wall fall?', '1985', '1989', '1991', '1993', 'B'),
('Who was the first woman to win a Nobel Prize?', 'Marie Curie', 'Mother Teresa', 'Rosalind Franklin', 'Jane Addams', 'A'),
('Which ancient wonder was located in Alexandria?', 'Colossus of Rhodes', 'Hanging Gardens', 'Lighthouse of Alexandria', 'Statue of Zeus', 'C');


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
('What is the largest desert in the world?', 'Gobi Desert', 'Sahara Desert', 'Antarctic Desert', 'Arabian Desert', 'C'),
('Which river is the longest in the world?', 'Amazon', 'Nile', 'Mississippi', 'Yangtze', 'B'),
('What is the capital of Canada?', 'Toronto', 'Vancouver', 'Montreal', 'Ottawa', 'D'),
('Which country has the most natural lakes?', 'Canada', 'Russia', 'United States', 'Brazil', 'A');

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
('What is the Belt and Road Initiative (BRI)?', 'A military alliance', 'A trade and infrastructure project', 'A climate change agreement', 'A human rights policy', 'B'),
('Which organization was established after World War II to maintain international peace?', 'NATO', 'United Nations', 'European Union', 'World Bank', 'B'),
('What is Brexit?', 'British expansion treaty', 'Britains exit from the European Union', 'British economic strategy', 'British trade agreement', 'B'),
('Which strait connects the Mediterranean Sea with the Atlantic Ocean?', 'Strait of Hormuz', 'Strait of Malacca', 'Strait of Gibraltar', 'Bosporus Strait', 'C');

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
('Which country is famous for originating Flamenco music?', 'Spain', 'Italy', 'Mexico', 'Brazil', 'A'),
('Which band performed the song "Bohemian Rhapsody"?', 'Led Zeppelin', 'Queen', 'The Rolling Stones', 'Pink Floyd', 'B'),
('What type of instrument is a cello?', 'Woodwind', 'Brass', 'Percussion', 'String', 'D'),
('Who is known as the "Father of Modern Classical Music"?', 'Mozart', 'Bach', 'Beethoven', 'Tchaikovsky', 'C');


CREATE TABLE IF NOT EXISTS user_score (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    score INT NOT NULL,
    theme VARCHAR(50) NOT NULL,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (email) REFERENCES users(email) ON DELETE CASCADE
);

SHOW tables;

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
INSERT INTO user_reviews (name, email, rating, feedback_type, feedback, discovery, interests)
VALUES
('Alice Johnson', 'alice@example.com', 5, 'general', 'Love the platform, very intuitive.', 'search', 'coding, quizzes, puzzles'),
('Bob Smith', 'bob@example.com', 4, 'content', 'Some questions are outdated.', 'friend', 'tech, science'),
('Carol Lee', 'carol@example.com', 2, 'bug', 'App crashed during the quiz.', 'ad', 'games, math'),
('David Kumar', 'david@example.com', 3, 'feature', 'Add a timer reset option.', 'social', 'logic, memory'),
('Eva Mendes', 'eva@example.com', 5, 'general', 'This app helped me study a lot.', 'search', 'history, trivia'),
('Faisal Ahmed', 'faisal@example.com', 1, 'bug', 'Login failed repeatedly.', 'other', 'tech, hacking'),
('Grace Hall', 'grace@example.com', 4, 'feature', 'Please allow dark mode.', 'friend', 'UI, UX, design'),
('Henry Adams', 'henry@example.com', 3, 'content', 'Few questions repeat often.', 'ad', 'science, gk'),
('Isha Patel', 'isha@example.com', 5, 'general', 'Very helpful during exams.', 'search', 'revision, MCQs'),
('Jay Verma', 'jay@example.com', 4, 'feature', 'Would be great to have leaderboard filters.', 'social', 'competitive, stats');

SET GLOBAL general_log = 'ON';


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

INSERT INTO contact_messages (name, email, subject, message, status)
VALUES
('Alice Johnson', 'alice@example.com', 'Appreciation', 'Just wanted to say thanks for the amazing app!', 'read'),
('Bob Smith', 'bob@example.com', 'Issue with Quiz', 'Some questions are not loading properly.', 'new'),
('Carol Lee', 'carol@example.com', 'Bug Report', 'I encountered a bug when submitting my score.', 'replied'),
('David Kumar', 'david@example.com', 'Feature Suggestion', 'Can you add bookmark for favorite questions?', 'archived'),
('Eva Mendes', 'eva@example.com', 'Password Reset', 'I am unable to reset my password.', 'new'),
('Faisal Ahmed', 'faisal@example.com', 'Login Issue', 'Account gets stuck after login.', 'read'),
('Grace Hall', 'grace@example.com', 'Feedback', 'Please make the UI more responsive.', 'new'),
('Henry Adams', 'henry@example.com', 'Ads too frequent', 'The ads interrupt too much during quizzes.', 'replied'),
('Isha Patel', 'isha@example.com', 'Leaderboard issue', 'My score isn’t updating on leaderboard.', 'new'),
('Jay Verma', 'jay@example.com', 'Subscription Query', 'What’s included in the premium plan?', 'read');



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


select * from leaderboard;

INSERT INTO leaderboard (user_email, username, theme, raw_score, percentage_score) VALUES
('ash@example.com', 'Ash', 'general_knowledge', 8, 80.00),
('brock@example.com', 'Brock', 'sports', 7, 70.00),
('misty@example.com', 'Misty', 'wildlife', 9, 90.00),
('gary@example.com', 'Gary', 'tech', 6, 60.00),
('may@example.com', 'May', 'movies', 10, 100.00),
('dawn@example.com', 'Dawn', 'space', 5, 50.00),
('iris@example.com', 'Iris', 'maths', 7, 70.00),
('serena@example.com', 'Serena', 'mythology', 9, 90.00),
('paul@example.com', 'Paul', 'science', 6, 60.00),
('zoey@example.com', 'Zoey', 'food', 8, 80.00),
('trip@example.com', 'Trip', 'video_games', 7, 70.00),
('gladion@example.com', 'Gladion', 'sports', 6, 60.00),
('kiawe@example.com', 'Kiawe', 'general_knowledge', 8, 80.00),
('lana@example.com', 'Lana', 'wildlife', 7, 70.00),
('marnie@example.com', 'Marnie', 'tech', 9, 90.00),
('hop@example.com', 'Hop', 'space', 6, 60.00),
('bea@example.com', 'Bea', 'movies', 10, 100.00),
('nessa@example.com', 'Nessa', 'food', 5, 50.00),
('leon@example.com', 'Leon', 'science', 7, 70.00),
('raihan@example.com', 'Raihan', 'mythology', 8, 80.00);


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
INSERT INTO user_profiles (user_id, bio, location, interests, favorite_category, achievement_goals, profile_photo_url)
VALUES
(1, 'Student who loves tech and quizzes.', 'Mumbai, India', 'tech, coding', 'general knowledge', 'Rank in top 10 monthly leaderboard.', 'https://example.com/profiles/1.jpg'),
(2, 'Passionate about trivia and history.', 'New York, USA', 'history, trivia', 'history', 'Complete 500 questions.', 'https://example.com/profiles/2.jpg'),
(3, 'Engineer learning through gamified platforms.', 'Bangalore, India', 'math, science', 'math', 'Earn gold badge in 3 categories.', 'https://example.com/profiles/3.jpg'),
(4, 'High school student preparing for exams.', 'Delhi, India', 'gk, aptitude', 'aptitude', 'Level up to Expert.', 'https://example.com/profiles/4.jpg'),
(5, 'Loves puzzles and brain games.', 'London, UK', 'logic, memory games', 'logic', 'Finish all daily challenges.', 'https://example.com/profiles/5.jpg'),
(6, 'College student into competitive exams.', 'Ahmedabad, India', 'gk, current affairs', 'general knowledge', 'Crack UPSC quiz set.', 'https://example.com/profiles/6.jpg'),
(7, 'Designer exploring tech quizzes.', 'Pune, India', 'UI, UX, tech', 'tech', 'Participate in weekly challenge.', 'https://example.com/profiles/7.jpg'),
(8, 'Just here for fun and learning.', 'Chennai, India', 'science, fun', 'science', 'Improve quiz accuracy to 90%.', 'https://example.com/profiles/8.jpg'),
(9, 'A curious soul.', 'Hyderabad, India', 'everything!', 'general knowledge', 'Compete with friends and win.', 'https://example.com/profiles/9.jpg'),
(10, 'History buff and quiz lover.', 'Kolkata, India', 'history, reading', 'history', 'Finish history master badge.', 'https://example.com/profiles/10.jpg');

CREATE TABLE subscription_plans (
    id INT AUTO_INCREMENT PRIMARY KEY,
    plan_name VARCHAR(50) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    duration_days INT NOT NULL,
    features TEXT,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
select * from subscription_plans;
INSERT INTO subscription_plans (plan_name, description, price, duration_days, features, is_active) VALUES
('Free', 'Basic access to quizzes with limited features', 0.00, 0, 'Access to basic quizzes,Daily challenges,Leaderboard access', TRUE),
('Monthly', 'Monthly subscription with all features', 9.99, 30, 'Unlimited quizzes,Ad-free experience,Expert difficulty access,Detailed statistics', TRUE),
('Quarterly', 'Three month subscription at a discounted rate', 24.99, 90, 'All Monthly features,Priority support,Challenge creator access', TRUE),
('Annual', 'Best value yearly subscription', 89.99, 365, 'All Quarterly features,Exclusive content,Early access to new features,Custom quiz creation', TRUE),
('Student', 'Special discount for students', 4.99, 30, 'All Monthly features,Student-focused content', TRUE),
('Family', 'Share with up to 5 family members', 19.99, 30, 'All Monthly features,Multi-user access,Family leaderboard', TRUE),
('Premium', 'Premium membership with exclusive benefits', 14.99, 30, 'All Monthly features,Expert analysis,Advanced statistics', TRUE),
('Business', 'For corporate team building', 49.99, 30, 'All Premium features,Team management,Custom branding', TRUE),
('Lifetime', 'One-time payment for lifetime access', 299.99, 3650, 'All Premium features,Lifetime updates,Exclusive community access', TRUE),
('Trial', '7-day trial of Premium features', 0.00, 7, 'All Premium features for 7 days', TRUE);

CREATE TABLE user_subscriptions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    plan_id INT NOT NULL,
    start_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_date TIMESTAMP NOT NULL,
    is_active BOOLEAN DEFAULT TRUE,
    auto_renew BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (plan_id) REFERENCES subscription_plans(id)
);

select * from user_subscriptions;

INSERT INTO user_subscriptions (user_id, plan_id, end_date, is_active, auto_renew) VALUES
(1, 4, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 365 DAY), TRUE, TRUE),
(2, 2, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY), TRUE, TRUE),
(3, 1, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 0 DAY), TRUE, FALSE),
(4, 3, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 90 DAY), TRUE, FALSE),
(5, 2, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY), TRUE, TRUE),
(6, 5, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY), TRUE, TRUE),
(7, 6, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY), TRUE, FALSE),
(8, 9, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 3650 DAY), TRUE, FALSE),
(9, 10, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 7 DAY), TRUE, FALSE),
(10, 7, DATE_ADD(CURRENT_TIMESTAMP, INTERVAL 30 DAY), TRUE, TRUE);


CREATE TABLE payments (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    subscription_id INT,
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(3) DEFAULT 'USD',
    payment_method ENUM('credit_card', 'paypal', 'bank_transfer', 'crypto', 'other') NOT NULL,
    transaction_id VARCHAR(255),
    status ENUM('pending', 'completed', 'failed', 'refunded') NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (subscription_id) REFERENCES user_subscriptions(id) ON DELETE SET NULL
);

select * from payments;
INSERT INTO payments (user_id, subscription_id, amount, currency, payment_method, transaction_id, status) VALUES
(1, 1, 89.99, 'USD', 'credit_card', 'TXN123456789', 'completed'),
(2, 2, 9.99, 'USD', 'paypal', 'PP987654321', 'completed'),
(3, 3, 0.00, 'USD', 'other', 'FREE000001', 'completed'),
(4, 4, 24.99, 'USD', 'credit_card', 'TXN234567890', 'completed'),
(5, 5, 9.99, 'USD', 'bank_transfer', 'BT567890123', 'completed'),
(6, 6, 4.99, 'USD', 'paypal', 'PP345678901', 'completed'),
(7, 7, 19.99, 'USD', 'credit_card', 'TXN456789012', 'completed'),
(8, 8, 299.99, 'USD', 'crypto', 'CRYPTO12345', 'completed'),
(9, 9, 0.00, 'USD', 'other', 'TRIAL00001', 'completed'),
(10, 10, 14.99, 'USD', 'credit_card', 'TXN567890123', 'completed');

CREATE TABLE achievements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    icon_url VARCHAR(255),
    points INT DEFAULT 0,
    criteria TEXT NOT NULL,
    difficulty ENUM('easy', 'medium', 'hard', 'expert') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO achievements (title, description, icon_url, points, criteria, difficulty) VALUES
('First Quiz', 'Complete your first quiz', '/icons/first_quiz.png', 10, 'Complete 1 quiz', 'easy'),
('Quiz Master', 'Get a perfect score on any quiz', '/icons/quiz_master.png', 50, 'Score 100% on any quiz', 'medium'),
('Knowledge Explorer', 'Try quizzes in 5 different categories', '/icons/explorer.png', 30, 'Complete quizzes in 5 different themes', 'easy'),
('Genius', 'Get 10 perfect scores', '/icons/genius.png', 100, 'Score 100% on 10 different quizzes', 'hard'),
('Speed Demon', 'Complete a quiz in under 60 seconds', '/icons/speed.png', 25, 'Complete quiz with at least 80% score in under 60 seconds', 'medium'),
('Persistent Learner', 'Complete a quiz every day for 7 days', '/icons/persistent.png', 75, 'Log in and complete at least one quiz for 7 consecutive days', 'medium'),
('Challenge Champion', 'Win 5 daily challenges', '/icons/champion.png', 150, 'Complete 5 daily challenges with top score', 'hard'),
('Global Competitor', 'Reach top 10 on the global leaderboard', '/icons/global.png', 200, 'Achieve a position in the top 10 of any global leaderboard', 'expert'),
('Category Expert', 'Answer 100 questions correctly in one category', '/icons/expert.png', 125, 'Answer 100 questions correctly in a single theme', 'hard'),
('Quiz Enthusiast', 'Attempt 50 quizzes', '/icons/enthusiast.png', 60, 'Start 50 different quizzes', 'medium');

CREATE TABLE user_achievements (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    achievement_id INT NOT NULL,
    earned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY unique_user_achievement (user_id, achievement_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (achievement_id) REFERENCES achievements(id) ON DELETE CASCADE
);

INSERT INTO user_achievements (user_id, achievement_id) VALUES
(1, 1),
(1, 3),
(1, 6),
(2, 1),
(2, 5),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(5, 1);

CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    theme VARCHAR(50) NOT NULL,
    difficulty ENUM('easy', 'medium', 'hard', 'expert') NOT NULL,
    question_text TEXT NOT NULL,
    option_a TEXT NOT NULL,
    option_b TEXT NOT NULL,
    option_c TEXT NOT NULL,
    option_d TEXT NOT NULL,
    correct_answer ENUM('a', 'b', 'c', 'd') NOT NULL,
    explanation TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO questions (theme, difficulty, question_text, option_a, option_b, option_c, option_d, correct_answer, explanation) VALUES
('science', 'easy', 'What is the chemical symbol for water?', 'WO', 'H2O', 'W', 'H2O2', 'b', 'Water is composed of two hydrogen atoms and one oxygen atom, resulting in the chemical formula H2O.'),
('history', 'medium', 'In which year did World War II end?', '1943', '1945', '1947', '1950', 'b', 'World War II ended in 1945 with the surrender of Japan following the atomic bombings of Hiroshima and Nagasaki.'),
('geography', 'easy', 'Which is the largest ocean on Earth?', 'Atlantic Ocean', 'Indian Ocean', 'Arctic Ocean', 'Pacific Ocean', 'd', 'The Pacific Ocean is the largest and deepest ocean on Earth, covering more than 30% of the Earths surface.'),
('sports', 'medium', 'Which country won the FIFA World Cup in 2018?', 'Brazil', 'Germany', 'Argentina', 'France', 'd', 'France won the 2018 FIFA World Cup held in Russia, defeating Croatia 4-2 in the final match.'),
('literature', 'hard', 'Who wrote the novel "One Hundred Years of Solitude"?', 'Jorge Luis Borges', 'Gabriel García Márquez', 'Mario Vargas Llosa', 'Pablo Neruda', 'b', 'Gabriel García Márquez wrote "One Hundred Years of Solitude" (1967), a landmark work of magical realism.'),
('technology', 'easy', 'What does CPU stand for?', 'Central Processing Unit', 'Computer Processing Unit', 'Central Program Unit', 'Core Processing Unit', 'a', 'CPU stands for Central Processing Unit, the primary component of a computer that performs most of the processing.'),
('movies', 'medium', 'Who directed the movie "Inception"?', 'Steven Spielberg', 'James Cameron', 'Christopher Nolan', 'Quentin Tarantino', 'c', 'Christopher Nolan directed the 2010 science fiction action film "Inception".'),
('music', 'hard', 'Which band released the album "Dark Side of the Moon"?', 'Led Zeppelin', 'The Beatles', 'Pink Floyd', 'The Rolling Stones', 'c', 'Pink Floyd released "The Dark Side of the Moon" in 1973, one of the best-selling albums worldwide.'),
('food', 'easy', 'Which country is the origin of sushi?', 'China', 'Korea', 'Thailand', 'Japan', 'd', 'Sushi originated in Japan as a method of preserving fish in fermented rice.'),
('mythology', 'medium', 'Who is the Greek god of the sea?', 'Zeus', 'Apollo', 'Poseidon', 'Hermes', 'c', 'Poseidon is the Greek god of the sea, earthquakes, and horses in Greek mythology.');


CREATE TABLE notifications (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    message TEXT NOT NULL,
    type ENUM('achievement', 'subscription', 'payment', 'system', 'challenge', 'other') NOT NULL,
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
show tables; 
INSERT INTO notifications (user_id, title, message, type, is_read) VALUES
(1, 'Achievement Unlocked!', 'Congratulations! Youve earned the "Quiz Master" achievement.', 'achievement', FALSE),
(2, 'Subscription Ending Soon', 'Your monthly subscription will end in 3 days. Renew now to continue enjoying premium features!', 'subscription', TRUE),
(3, 'Daily Challenge Available', 'Todays challenge "History Buff" is now available! Complete it within 24 hours for bonus points.', 'challenge', FALSE),
(4, 'Payment Successful', 'Your quarterly subscription payment was processed successfully.', 'payment', TRUE),
(5, 'New Features Added', 'Check out our new mythology quiz section with over 100 new questions!', 'system', FALSE),
(6, 'Achievement Progress', 'You are 2 quizzes away from unlocking the "Persistent Learner" achievement!', 'achievement', FALSE),
(7, 'Weekly Summary', 'This week you completed 12 quizzes with an average score of 85%. Keep it up!', 'other', TRUE),
(8, 'Leaderboard Update', 'You haveve entered the top 10 in the Science category! Well done!', 'other', FALSE),
(9, 'Trial Ending', 'Your free trial ends tomorrow. Subscribe now to continue access to premium features!', 'subscription', FALSE),
(10, 'Friend Challenge', 'Gary has challenged you to beat their score in the Technology quiz!', 'challenge', FALSE);

CREATE TABLE daily_challenges (
    id INT AUTO_INCREMENT PRIMARY KEY,
    challenge_date DATE NOT NULL,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    theme VARCHAR(50) NOT NULL,
    difficulty ENUM('easy', 'medium', 'hard', 'expert') NOT NULL,
    points_reward INT NOT NULL DEFAULT 50,
    time_limit_seconds INT DEFAULT NULL COMMENT 'Optional time limit in seconds',
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    UNIQUE KEY unique_date_challenge (challenge_date),
    INDEX idx_challenge_date (challenge_date)
);

INSERT INTO daily_challenges (challenge_date, title, description, theme, difficulty, points_reward, time_limit_seconds) VALUES
(CURDATE(), 'Science Explorer', 'Test your knowledge of basic scientific principles', 'science', 'easy', 50, 300),
(DATE_ADD(CURDATE(), INTERVAL 1 DAY), 'History Buff', 'Challenge yourself with historical events and figures', 'history', 'medium', 75, 360),
(DATE_ADD(CURDATE(), INTERVAL 2 DAY), 'Geography Master', 'How well do you know our world?', 'geography', 'medium', 75, 300),
(DATE_ADD(CURDATE(), INTERVAL 3 DAY), 'Sports Fanatic', 'Put your sports knowledge to the test', 'sports', 'hard', 100, 240),
(DATE_ADD(CURDATE(), INTERVAL 4 DAY), 'Literary Genius', 'For those who love books and authors', 'literature', 'expert', 150, 420),
(DATE_ADD(CURDATE(), INTERVAL 5 DAY), 'Tech Wizard', 'Updates on technology and innovations', 'technology', 'medium', 75, 300),
(DATE_ADD(CURDATE(), INTERVAL 6 DAY), 'Movie Buff', 'Test your knowledge of cinema', 'movies', 'easy', 50, 300),
(DATE_ADD(CURDATE(), INTERVAL 7 DAY), 'Music Maestro', 'From classical to contemporary', 'music', 'hard', 100, 360),
(DATE_ADD(CURDATE(), INTERVAL 8 DAY), 'Food Connoisseur', 'Global cuisines and cooking techniques', 'food', 'medium', 75, 300),
(DATE_ADD(CURDATE(), INTERVAL 9 DAY), 'Mythology Expert', 'Legends and myths from around the world', 'mythology', 'expert', 150, 420);

CREATE TABLE user_challenge_attempts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    challenge_id INT NOT NULL,
    score INT NOT NULL,
    time_taken INT COMMENT 'Time taken in seconds',
    completed BOOLEAN DEFAULT FALSE,
    attempt_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (challenge_id) REFERENCES daily_challenges(id) ON DELETE CASCADE,
    UNIQUE KEY unique_user_challenge (user_id, challenge_id)
);

show tables;
INSERT INTO user_challenge_attempts (user_id, challenge_id, score, time_taken, completed) VALUES
(1, 1, 45, 280, TRUE),
(2, 1, 40, 295, TRUE),
(3, 1, 35, 300, TRUE),
(4, 1, 50, 220, TRUE),
(5, 1, 30, 290, TRUE),
(1, 2, 65, 350, TRUE),
(2, 2, 70, 340, TRUE),
(3, 2, 45, 360, TRUE),
(4, 2, 75, 320, TRUE),
(5, 2, 55, 355, TRUE);

CREATE TABLE quiz_reports (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    question_id INT NOT NULL,
    report_reason TEXT NOT NULL,
    report_status ENUM('pending', 'resolved', 'dismissed') DEFAULT 'pending',
    reported_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO quiz_reports (user_id, question_id, report_reason, report_status) VALUES
(1, 101, 'Incorrect answer marked as correct', 'pending'),
(2, 105, 'Typo in one of the options', 'pending'),
(3, 108, 'Question is outdated', 'pending'),
(4, 110, 'All options seem wrong', 'pending'),
(5, 112, 'Offensive content detected', 'pending'),
(6, 115, 'Image in question is broken', 'pending'),
(7, 117, 'Confusing wording in the question', 'pending'),
(8, 120, 'Duplicate question exists', 'pending'),
(9, 125, 'Wrong translation in regional language', 'pending'),
(10, 128, 'Answer explanation is missing', 'pending');

CREATE TABLE user_device_logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    device_info VARCHAR(255),
    ip_address VARCHAR(45),
    logged_in_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO user_device_logs (user_id, device_info, ip_address) VALUES
(1, 'Chrome on Windows 11', '192.168.1.101'),
(2, 'Safari on iPhone 14', '172.16.0.2'),
(3, 'Firefox on Ubuntu 22.04', '10.0.0.3'),
(4, 'Edge on Windows 10', '192.168.1.108'),
(5, 'Chrome on Android 13', '172.16.10.5'),
(6, 'Samsung Internet on Galaxy S22', '192.168.100.22'),
(7, 'Brave on macOS', '10.10.1.33'),
(8, 'Opera on Windows 11', '192.168.0.89'),
(9, 'Safari on macOS Ventura', '172.20.1.7'),
(10, 'Firefox on Fedora 38', '10.1.1.99');

CREATE TABLE quiz_categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) UNIQUE NOT NULL
);
INSERT INTO quiz_categories (category_name) VALUES
('general_knowledge'),
('tech'),
('sports'),
('wildlife'),
('history'),
('geography'),
('science'),
('maths'),
('movies'),
('music'),
('mythology'),
('food'),
('space'),
('literature'),
('geopolitics'),
('video_games');

-- Queries 

-- 1. Top scorers with more than 5 attempts and an average score above 8
SELECT 
    us.username, 
    COUNT(us.id) AS attempts, 
    AVG(us.score) AS avg_score
FROM 
    user_score us
JOIN 
    users u ON us.email = u.email
GROUP BY 
    us.username
HAVING 
    COUNT(us.id) > 5 AND AVG(us.score) > 8;

INSERT INTO users (name, email, phone, dob, gender, password)
VALUES 
('Alice Smith', 'alice@example.com', '1234567890', '1995-06-15', 'female', 'hashedpassword1'),
('Bob Johnson', 'bob@example.com', '0987654321', '1992-03-20', 'male', 'hashedpassword2'),
('Charlie Brown', 'charlie@example.com', '1122334455', '1990-01-10', 'male', 'hashedpassword3');
-- Alice: qualifies (6 attempts, all scores above 85)
INSERT INTO user_score (email, username, score, theme) VALUES
('alice@example.com', 'AliceS', 90, 'Science'),
('alice@example.com', 'AliceS', 85, 'History'),
('alice@example.com', 'AliceS', 88, 'Math'),
('alice@example.com', 'AliceS', 92, 'Tech'),
('alice@example.com', 'AliceS', 87, 'English'),
('alice@example.com', 'AliceS', 89, 'Geography');

-- 2. Delete command
DELETE FROM user_score
WHERE email = 'alice@example.com'
  AND score IN (90, 85, 88, 92, 87, 89);

INSERT INTO user_score (email, username, score, theme) VALUES
('alice@example.com', 'AliceS', 9, 'Science'),
('alice@example.com', 'AliceS', 8, 'History'),
('alice@example.com', 'AliceS', 8, 'Math'),
('alice@example.com', 'AliceS', 9, 'Tech'),
('alice@example.com', 'AliceS', 8, 'English'),
('alice@example.com', 'AliceS', 8, 'Geography');

-- 3. Users who scored full in any quiz
SELECT 
    us.username, 
    us.score, 
    us.timestamp AS attempted_at
FROM 
    users u
JOIN 
    user_score us ON u.email = us.email
WHERE 
    us.score = 10;

-- 4. Top 5 most attempted quizzes
SELECT 
    theme, 
    COUNT(*) AS attempt_count
FROM 
    user_score
GROUP BY 
    theme
ORDER BY 
    attempt_count DESC
LIMIT 5;


-- 5. Users who registered but have never attempted any quiz
SELECT 
    u.id, u.name, u.email, u.created_at
FROM 
    users u
LEFT JOIN 
    user_score us ON u.email = us.email
WHERE 
    us.email IS NULL;

-- 6. Average score for each quiz
SELECT 
    theme AS quiz_title, 
    AVG(score) AS avg_score
FROM 
    user_score
GROUP BY 
    theme
ORDER BY 
    avg_score DESC;



-- 7 . Quizes that have never been attempted

SELECT 
    qc.category_name AS quiz_title
FROM 
    quiz_categories qc
LEFT JOIN 
    user_score us ON qc.category_name = us.theme
WHERE 
    us.theme IS NULL;

-- 8. Count of unread notifications per user
SELECT 
    u.name AS user_name,
    COUNT(n.id) AS unread_notifications_count
FROM 
    users u
LEFT JOIN 
    notifications n ON u.id = n.user_id AND n.is_read = FALSE
GROUP BY 
    u.id;
    
-- 9. Contacts who never became users
SELECT DISTINCT 
    cm.name,
    cm.email,
    cm.subject,
    cm.created_at
FROM 
    contact_messages cm
LEFT JOIN 
    users u ON cm.email = u.email
WHERE 
    u.email IS NULL;
	
-- 10 . Users with more than 3 reviews and average rating above 3.5

SELECT 
    ur.email, 
    COUNT(ur.id) AS review_count,
    AVG(ur.rating) AS avg_rating
FROM 
    user_reviews ur
GROUP BY 
    ur.email
HAVING 
    COUNT(ur.id) > 3 AND AVG(ur.rating) > 3.5;

INSERT INTO user_reviews (name, email, rating, feedback_type, feedback, discovery, interests)
VALUES
('John Doe', 'john.doe@example.com', 4, 'content', 'Good quiz, but some questions are too easy.', 'search', 'coding, trivia'),
('John Doe', 'john.doe@example.com', 5, 'general', 'Loved the quiz, would do again!', 'social', 'technology, puzzles'),
('John Doe', 'john.doe@example.com', 4, 'feature', 'Nice, but add more time for some of the harder questions.', 'friend', 'programming, games'),
('John Doe', 'john.doe@example.com', 5, 'general', 'Very engaging and informative quiz.', 'search', 'math, history');

-- 11. Top 5 most active users by number of quiz attempts

SELECT 
    us.email, 
    u.name, 
    COUNT(us.id) AS attempts
FROM 
    user_score us
JOIN 
    users u ON us.email = u.email
GROUP BY 
    us.email
ORDER BY 
    attempts DESC
LIMIT 5;

-- 12. Users with name starting with A or S
SELECT 
    id, 
    name, 
    email 
FROM 
    users
WHERE 
    name LIKE 'A%' OR name LIKE 'S%';

-- 13 users who have completed the 'Science Explorer' challenge (challenge_id = 1) and scored more than 40 points.

SELECT 
    u.name,
    u.email
FROM 
    users u
WHERE 
    u.id IN (
        SELECT 
            user_id
        FROM 
            user_challenge_attempts
        WHERE 
            challenge_id = 1 
            AND score > 40
    );

-- 14 Get the challenge that has the highest average score (average score from all attempts) among users.

SELECT 
    dc.title,
    AVG(uca.score) AS avg_score
FROM 
    daily_challenges dc
JOIN 
    user_challenge_attempts uca ON dc.id = uca.challenge_id
GROUP BY 
    dc.id
HAVING 
    AVG(uca.score) = (
        SELECT 
            MAX(avg_score)
        FROM (
            SELECT 
                AVG(score) AS avg_score
            FROM 
                user_challenge_attempts
            GROUP BY 
                challenge_id
        ) AS subquery
    );

-- 15. Get the usernames of users who have earned the "Genius" achievement.

ALTER TABLE users
CHANGE COLUMN name username VARCHAR(100);

SELECT username
FROM users
WHERE id IN (
    SELECT user_id
    FROM user_achievements
    WHERE achievement_id = (
        SELECT id
        FROM achievements
        WHERE title = 'Genius'
    )
);
INSERT INTO user_achievements (user_id, achievement_id) VALUES
(1, 4),
(2, 4),
(3, 4),
(4, 4);


-- 16. total achievement points earned by each user and rank them (Top 5 only).

SELECT 
    u.username,
    SUM(a.points) AS total_points
FROM user_achievements ua
JOIN users u ON ua.user_id = u.id
JOIN achievements a ON ua.achievement_id = a.id
GROUP BY ua.user_id
ORDER BY total_points DESC
LIMIT 5;

-- 17  quiz reports where the reason contains the word “question”

SELECT *
FROM quiz_reports
WHERE report_reason LIKE '%question%';


-- 18 device logs for users not using Chrome, and either using macOS or having an IP starting with 10.
SELECT *
FROM user_device_logs
WHERE device_info NOT LIKE '%Chrome%'
  AND (device_info LIKE '%macOS%' OR ip_address LIKE '10.%');

-- 19 Using Union method

SELECT id, username, email 
FROM users 
WHERE gender = 'male'
UNION
SELECT id, username, email 
FROM users 
WHERE gender = 'female';


-- 20 using union all method
SELECT id, name, email 
FROM users 
WHERE gender = 'male'
UNION ALL
SELECT id, name, email 
FROM users 
WHERE gender = 'female';


-- 21 total revenue generated from completed payments for each subscription plan

SELECT sp.plan_name, SUM(p.amount) AS total_revenue
FROM payments p
JOIN user_subscriptions us ON p.subscription_id = us.id
JOIN subscription_plans sp ON us.plan_id = sp.id
WHERE p.status = 'completed'
GROUP BY sp.plan_name;
