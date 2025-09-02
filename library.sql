CREATE DATABASE IF NOT EXISTS library;
USE library;

CREATE TABLE IF NOT EXISTS users1 (
  user_id INT PRIMARY KEY,
  username VARCHAR(100),
  -- add other user fields if needed
  password VARCHAR(100) -- if you have authentication
);

CREATE TABLE IF NOT EXISTS books (
  book_id INT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  is_checked_out BOOLEAN DEFAULT FALSE
);

CREATE TABLE IF NOT EXISTS reservations (
  reservation_id INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,
  book_id INT,
  reserve_days INT,
  reserve_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users1(user_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id)
);
show tables;
INSERT INTO books (book_id, title, author, is_checked_out) VALUES
(1, 'Java Programming', 'James Gosling', FALSE),
(2, 'Data Structures and Algorithms', 'Robert Lafore', TRUE),
(3, 'Clean Code', 'Robert C. Martin', FALSE),
(4, 'Effective Java', 'Joshua Bloch', TRUE),
(5, 'Introduction to Algorithms', 'Thomas H. Cormen', FALSE),
(6, 'Design Patterns', 'Erich Gamma', FALSE),
(7, 'Artificial Intelligence: A Modern Approach', 'Stuart Russell', TRUE),
(8, 'Database System Concepts', 'Abraham Silberschatz', FALSE),
(9, 'Operating System Concepts', 'Abraham Silberschatz', FALSE),
(10, 'Computer Networks', 'Andrew S. Tanenbaum', TRUE),
(11, 'The Pragmatic Programmer', 'Andrew Hunt', FALSE),
(12, 'Head First Java', 'Kathy Sierra', TRUE),
(13, 'Java Concurrency in Practice', 'Brian Goetz', FALSE),
(14, 'Learning Python', 'Mark Lutz', FALSE),
(15, 'Python Crash Course', 'Eric Matthes', TRUE),
(16, 'Modern Operating Systems', 'Andrew S. Tanenbaum', FALSE),
(17, 'Compilers: Principles, Techniques, and Tools', 'Alfred V. Aho', TRUE),
(18, 'Computer Architecture', 'David A. Patterson', FALSE),
(19, 'Refactoring', 'Martin Fowler', FALSE),
(20, 'Code Complete', 'Steve McConnell', TRUE);
DESCRIBE reservations;
ALTER TABLE reservations
ADD COLUMN reservation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE reservations ADD COLUMN reserved_days INT;
SELECT * FROM users1 WHERE user_id = 1;
INSERT INTO users1 (user_id, username, email, password) VALUES
(1, 'alice', 'alice@example.com', 'password1'),
(2, 'bob', 'bob@example.com', 'password2'),
(3, 'charlie', 'charlie@example.com', 'password3'),
(4, 'david', 'david@example.com', 'password4'),
(5, 'eva', 'eva@example.com', 'password5'),
(6, 'frank', 'frank@example.com', 'password6'),
(7, 'grace', 'grace@example.com', 'password7'),
(8, 'henry', 'henry@example.com', 'password8'),
(9, 'irene', 'irene@example.com', 'password9'),
(10, 'jack', 'jack@example.com', 'password10'),
(11, 'kate', 'kate@example.com', 'password11'),
(12, 'leo', 'leo@example.com', 'password12'),
(13, 'maria', 'maria@example.com', 'password13'),
(14, 'nate', 'nate@example.com', 'password14'),
(15, 'olivia', 'olivia@example.com', 'password15'),
(16, 'peter', 'peter@example.com', 'password16'),
(17, 'queen', 'queen@example.com', 'password17'),
(18, 'ryan', 'ryan@example.com', 'password18'),
(19, 'sophia', 'sophia@example.com', 'password19'),
(20, 'tom', 'tom@example.com', 'password20');
SHOW COLUMNS FROM users1;
INSERT INTO users1 (user_id, username, password) VALUES
(1, 'alice', 'pass123'),
(2, 'bob', 'pass234'),
(3, 'charlie', 'pass345'),
(4, 'david', 'pass456'),
(5, 'eva', 'pass567'),
(6, 'frank', 'pass678'),
(7, 'grace', 'pass789'),
(8, 'henry', 'pass890'),
(9, 'irene', 'pass901'),
(10, 'jack', 'pass012'),
(11, 'kate', 'pass111'),
(12, 'leo', 'pass222'),
(13, 'maria', 'pass333'),
(14, 'nate', 'pass444'),
(15, 'olivia', 'pass555'),
(16, 'peter', 'pass666'),
(17, 'queen', 'pass777'),
(18, 'ryan', 'pass888'),
(19, 'sophia', 'pass999'),
(20, 'tom', 'pass000');

INSERT INTO users1 (user_id, username, password) VALUES
(21, 'ursula', 'pass101'),
(22, 'victor', 'pass202'),
(23, 'wanda', 'pass303'),
(24, 'xander', 'pass404'),
(25, 'yasmin', 'pass505'),
(26, 'zack', 'pass606'),
(27, 'amber', 'pass707'),
(28, 'brian', 'pass808'),
(29, 'cathy', 'pass909'),
(30, 'daniel', 'pass010'),
(31, 'elena', 'pass121'),
(32, 'felix', 'pass232'),
(33, 'george', 'pass343'),
(34, 'hannah', 'pass454'),
(35, 'ian', 'pass565'),
(36, 'julia', 'pass676'),
(37, 'kiran', 'pass787'),
(38, 'linda', 'pass898'),
(39, 'mike', 'pass909'),
(40, 'nora', 'pass020');

select * from reservations;
select * from books;

INSERT INTO books (book_id, title, author, is_checked_out) VALUES
(21, 'Introduction to Machine Learning', 'Ethem Alpaydin', FALSE),
(22, 'Hands-On Machine Learning with Scikit-Learn and TensorFlow', 'Aurélien Géron', TRUE),
(23, 'Deep Learning', 'Ian Goodfellow', FALSE),
(24, 'Natural Language Processing with Python', 'Steven Bird', TRUE),
(25, 'The Art of Computer Programming', 'Donald E. Knuth', FALSE),
(26, 'Structure and Interpretation of Computer Programs', 'Harold Abelson', TRUE),
(27, 'Algorithms', 'Robert Sedgewick', FALSE),
(28, 'Linux Kernel Development', 'Robert Love', TRUE),
(29, 'You Don’t Know JS', 'Kyle Simpson', FALSE),
(30, 'Eloquent JavaScript', 'Marijn Haverbeke', TRUE),
(31, 'Cracking the Coding Interview', 'Gayle Laakmann McDowell', FALSE),
(32, 'The Mythical Man-Month', 'Frederick P. Brooks Jr.', FALSE),
(33, 'Soft Skills: The Software Developer\'s Life Manual', 'John Sonmez', TRUE),
(34, 'Grokking Algorithms', 'Aditya Bhargava', FALSE),
(35, 'C Programming Language', 'Brian W. Kernighan', TRUE),
(36, 'Programming Pearls', 'Jon Bentley', FALSE),
(37, 'Fluent Python', 'Luciano Ramalho', TRUE),
(38, 'Pro Git', 'Scott Chacon', FALSE),
(39, 'Site Reliability Engineering', 'Betsy Beyer', FALSE),
(40, 'Cloud Native Java', 'Josh Long', TRUE);


INSERT INTO books (book_id, title, author, is_checked_out) VALUES
(41, 'Head First Design Patterns', 'Eric Freeman', FALSE),
(42, 'Design Patterns: Elements of Reusable Object-Oriented Software', 'Erich Gamma', TRUE),
(43, 'Clean Code', 'Robert C. Martin', FALSE),
(44, 'Refactoring', 'Martin Fowler', TRUE),
(45, 'The Pragmatic Programmer', 'Andrew Hunt', FALSE),
(46, 'Code Complete', 'Steve McConnell', TRUE),
(47, 'Introduction to Algorithms', 'Thomas H. Cormen', FALSE),
(48, 'The Clean Coder', 'Robert C. Martin', TRUE),
(49, 'Extreme Programming Explained', 'Kent Beck', FALSE),
(50, 'Test-Driven Development', 'Kent Beck', TRUE),
(51, 'Working Effectively with Legacy Code', 'Michael Feathers', FALSE),
(52, 'The Phoenix Project', 'Gene Kim', TRUE),
(53, 'Continuous Delivery', 'Jez Humble', FALSE),
(54, 'Accelerate', 'Nicole Forsgren', TRUE),
(55, 'Domain-Driven Design', 'Eric Evans', FALSE),
(56, 'The DevOps Handbook', 'Gene Kim', TRUE),
(57, 'Infrastructure as Code', 'Kief Morris', FALSE),
(58, 'Building Microservices', 'Sam Newman', TRUE),
(59, 'Microservices Patterns', 'Chris Richardson', FALSE),
(60, 'Kubernetes Up and Running', 'Brendan Burns', TRUE),
(61, 'Learning React', 'Alex Banks', FALSE),
(62, 'Fullstack React', 'Anthony Accomazzo', TRUE),
(63, 'Learning Node.js Development', 'Andrew Mead', FALSE),
(64, 'Node.js Design Patterns', 'Mario Casciaro', TRUE),
(65, 'The Road to React', 'Robin Wieruch', FALSE),
(66, 'Python Crash Course', 'Eric Matthes', TRUE),
(67, 'Effective Python', 'Brett Slatkin', FALSE),
(68, 'Automate the Boring Stuff with Python', 'Al Sweigart', TRUE),
(69, 'Think Python', 'Allen B. Downey', FALSE),
(70, 'Python Cookbook', 'David Beazley', TRUE),
(71, 'You Don’t Know JS Yet', 'Kyle Simpson', FALSE),
(72, 'JavaScript: The Good Parts', 'Douglas Crockford', TRUE),
(73, 'Programming TypeScript', 'Boris Cherny', FALSE),
(74, 'Mastering TypeScript', 'Nathan Rozentals', TRUE),
(75, 'Learning SQL', 'Alan Beaulieu', FALSE),
(76, 'SQL for Data Scientists', 'Renee M. P. Teate', TRUE),
(77, 'Data Science from Scratch', 'Joel Grus', FALSE),
(78, 'Python for Data Analysis', 'Wes McKinney', TRUE),
(79, 'Machine Learning Yearning', 'Andrew Ng', FALSE),
(80, 'AI Superpowers', 'Kai-Fu Lee', TRUE);

use library;
select * from books;
select * from users1;
select * from reservations;

use library;
CREATE TABLE admin (
    username VARCHAR(50) PRIMARY KEY,
    password VARCHAR(50) NOT NULL
);
INSERT INTO admin (username, password) VALUES ('admin', 'admin123');
ALTER TABLE reservations ADD COLUMN reservation_date DATE DEFAULT CURRENT_DATE;
ALTER TABLE reservations ADD COLUMN reservation_date DATE DEFAULT (CURRENT_DATE);
ALTER TABLE reservations ADD COLUMN reservation_date DATE;
UPDATE reservations SET reservat_date = CURRENT_DATE WHERE reservation_date IS NULL;
SELECT * FROM reservations WHERE user_id = '1';
SELECT b.title, b.author, r.reserve_days, r.reservation_date, 
       DATE_ADD(r.reservation_date, INTERVAL r.reserve_days DAY) as due_date
FROM reservations r
JOIN books b ON r.book_id = b.book_id
WHERE r.user_id = '1';
