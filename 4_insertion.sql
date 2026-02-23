-- =================================================-- =================================================
-- 1. BASE TABLES (Parent Tables)
-- =================================================

SET FOREIGN_KEY_CHECKS = 0;

-- Clear all existing data
TRUNCATE TABLE takes;
TRUNCATE TABLE assigns;
TRUNCATE TABLE taught_by;
TRUNCATE TABLE Students;
TRUNCATE TABLE Courses;
TRUNCATE TABLE Teachers;
TRUNCATE TABLE Houses;
SET FOREIGN_KEY_CHECKS = 1;

-- Insert the 4 specific Houses
INSERT INTO Houses (H_name, H_motto, H_animal) VALUES
('Algorindor', 'Code is our sword, logic our shield', 'owl'),
('Cyberclaw', 'We protect the secrets of the digital world', 'panther'),
('Forgepuff', 'We build the future, line by line', 'bear'),
('Syntherin', 'Data is our power', 'fox');

-- Insert 15 Courses (Format: "Topic - Subtopic")
INSERT INTO Courses (C_ID, C_title) VALUES
('C01', 'Intro - Python'), ('C02', 'Data - Structures'), ('C03', 'Web - Design'),
('C04', 'Cyber - Security'), ('C05', 'Cloud - Native'), ('C06', 'ML - Basics'),
('C07', 'Logic - Gates'), ('C08', 'Python - Scripting'), ('C09', 'Project - Management'),
('C10', 'System - Analysis'), ('C11', 'Network - Admin'), ('C12', 'Parallel - Computing'),
('C13', 'Mobile - Dev'), ('C14', 'Ethical - Hacking'), ('C15', 'User - Experience');

-- =================================================
-- 2. ENTITY TABLES (Child of Houses)
-- =================================================

-- Insert 15 Teachers
-- Note: Ensure UNIQUE(H_name) is removed from your schema to allow more than 4 teachers.
INSERT INTO Teachers (T_ID, T_firstname, T_lastname, T_field, H_name) VALUES
(1, 'Abeba', 'Bekele', 'Algorithms', 'Algorindor'), (2, 'Chen', 'Wei', 'Security', 'Cyberclaw'),
(3, 'Søren', 'Larsen', 'Hardware', 'Forgepuff'), (4, 'Yara', 'Al-Sayed', 'Data', 'Syntherin'),
(5, 'Diego', 'Ramirez', 'AI', 'Algorindor'), (6, 'Elena', 'Popova', 'Networks', 'Cyberclaw'),
(7, 'Hiroshi', 'Tanaka', 'Web', 'Forgepuff'), (8, 'Fatima', 'Zahra', 'Databases', 'Syntherin'),
(9, 'Liam', 'O''Connor', 'Cryptography', 'Cyberclaw'), (10, 'Priya', 'Sharma', 'DevOps', 'Forgepuff'),
(11, 'Jean', 'Dupont', 'Ethics', 'Algorindor'), (12, 'Kwame', 'Nkrumah', 'Systems', 'Syntherin'),
(13, 'Svetlana', 'Ivanova', 'Robotics', 'Algorindor'), (14, 'Mateo', 'Silva', 'UI/UX', 'Forgepuff'),
(15, 'Arjun', 'Patel', 'Architecture', 'Cyberclaw');

-- Insert 30 Students (Mixed Origins)
INSERT INTO Students (S_ID, S_firstname, S_lastname, S_gender, H_name) VALUES
(101, 'Amara', 'Okonkwo', 'F', 'Algorindor'), (102, 'Luca', 'Rossi', 'M', 'Cyberclaw'),
(103, 'Mei', 'Ling', 'F', 'Forgepuff'), (104, 'Aleksandr', 'Volkov', 'M', 'Syntherin'),
(105, 'Zahra', 'Hassan', 'F', 'Algorindor'), (106, 'Mateo', 'Hernandez', 'M', 'Cyberclaw'),
(107, 'Chloe', 'Dubois', 'F', 'Forgepuff'), (108, 'Ravi', 'Kumar', 'M', 'Syntherin'),
(109, 'Aiko', 'Sato', 'F', 'Algorindor'), (110, 'Finn', 'Murphy', 'M', 'Cyberclaw'),
(111, 'Ines', 'Garcia', 'F', 'Forgepuff'), (112, 'Youssef', 'Mansour', 'M', 'Syntherin'),
(113, 'Saanvi', 'Iyer', 'F', 'Algorindor'), (114, 'Hans', 'Müller', 'M', 'Cyberclaw'),
(115, 'Sofia', 'Bianchi', 'F', 'Forgepuff'), (116, 'Kenji', 'Uchida', 'M', 'Syntherin'),
(117, 'Leila', 'Abadi', 'F', 'Algorindor'), (118, 'Elias', 'Petrou', 'M', 'Cyberclaw'),
(119, 'Nia', 'Toure', 'F', 'Forgepuff'), (120, 'Ivan', 'Petrov', 'M', 'Syntherin'),
(121, 'Noor', 'Al-Farsi', 'F', 'Algorindor'), (122, 'Lars', 'Jensen', 'M', 'Cyberclaw'),
(123, 'Elena', 'Varga', 'F', 'Forgepuff'), (124, 'Wei', 'Zhang', 'M', 'Syntherin'),
(125, 'Amira', 'Said', 'F', 'Algorindor'), (126, 'Joao', 'Santos', 'M', 'Cyberclaw'),
(127, 'Freja', 'Nielsen', 'F', 'Forgepuff'), (128, 'Kofi', 'Adu', 'M', 'Syntherin'),
(129, 'Sita', 'Devi', 'F', 'Algorindor'), (130, 'Omar', 'Sharif', 'M', 'Syntherin');

-- =================================================
-- 3. RELATIONSHIP TABLES (Child Tables)
-- =================================================

-- Every student takes at least one course (30 rows, Grades A-F)
INSERT INTO takes (S_ID, C_ID, grade) VALUES
(101,'C01','A'),(102,'C01','B'),(103,'C02','C'),(104,'C02','A'),(105,'C03','B'),
(106,'C03','F'),(107,'C04','A'),(108,'C04','D'),(109,'C05','B'),(110,'C05','C'),
(111,'C06','A'),(112,'C06','E'),(113,'C07','B'),(114,'C07','C'),(115,'C08','A'),
(116,'C08','B'),(117,'C09','C'),(118,'C09','D'),(119,'C10','A'),(120,'C10','B'),
(121,'C11','F'),(122,'C11','C'),(123,'C12','A'),(124,'C12','B'),(125,'C13','C'),
(126,'C13','A'),(127,'C14','B'),(128,'C14','D'),(129,'C15','A'),(130,'C15','C');

-- 50 Point Allocations (Points between -200 and 200)
INSERT INTO assigns (H_name, T_ID, points) VALUES
('Algorindor',1,50),('Algorindor',5,20),('Algorindor',11,-5),('Algorindor',13,10),('Algorindor',1,-200),
('Cyberclaw',2,15),('Cyberclaw',6,-10),('Cyberclaw',9,30),('Cyberclaw',15,100),('Cyberclaw',2,5),
('Forgepuff',3,5),('Forgepuff',7,25),('Forgepuff',10,-50),('Forgepuff',14,10),('Forgepuff',3,200),
('Syntherin',4,20),('Syntherin',8,-100),('Syntherin',12,40),('Syntherin',4,60),('Syntherin',8,-20),
('Algorindor',1,5),('Algorindor',5,-15),('Algorindor',11,25),('Algorindor',13,10),('Algorindor',1,45),
('Cyberclaw',2,-20),('Cyberclaw',6,40),('Cyberclaw',9,5),('Cyberclaw',15,-10),('Cyberclaw',2,12),
('Forgepuff',3,100),('Forgepuff',7,10),('Forgepuff',10,15),('Forgepuff',14,-5),('Forgepuff',3,-80),
('Syntherin',4,30),('Syntherin',8,20),('Syntherin',12,-10),('Syntherin',4,5),('Syntherin',8,150),
('Algorindor',1,88),('Cyberclaw',2,-42),('Forgepuff',3,15),('Syntherin',4,90),('Algorindor',5,30),
('Cyberclaw',6,10),('Forgepuff',7,-5),('Syntherin',8,20),('Algorindor',1,10),('Cyberclaw',2,15);