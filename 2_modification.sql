CREATE TABLE Houses(
   H_name VARCHAR(50),
   H_motto VARCHAR(50),
   H_animal VARCHAR(50),
   PRIMARY KEY(H_name)
);

CREATE TABLE Courses(
   C_ID VARCHAR(50),
   C_title VARCHAR(50),
   PRIMARY KEY(C_ID)
);

CREATE TABLE Teachers(
   T_ID INT,
   T_firstname VARCHAR(50),
   T_field VARCHAR(50),
   T_lastname VARCHAR(50),
   H_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(T_ID),
   UNIQUE(H_name),
   FOREIGN KEY(H_name) REFERENCES Houses(H_name)
);

CREATE TABLE Students(
   S_ID INT,
   S_firstname VARCHAR(50),
   S_lastname VARCHAR(50),
   S_gender VARCHAR(50),
   H_name VARCHAR(50) NOT NULL,
   PRIMARY KEY(S_ID),
   FOREIGN KEY(H_name) REFERENCES Houses(H_name)
);

CREATE TABLE takes(
   S_ID INT,
   C_ID VARCHAR(50),
   grade INT,
   PRIMARY KEY(S_ID, C_ID),
   FOREIGN KEY(S_ID) REFERENCES Students(S_ID),
   FOREIGN KEY(C_ID) REFERENCES Courses(C_ID)
);

CREATE TABLE taught_by(
   C_ID VARCHAR(50),
   T_ID INT,
   PRIMARY KEY(C_ID, T_ID),
   FOREIGN KEY(C_ID) REFERENCES Courses(C_ID),
   FOREIGN KEY(T_ID) REFERENCES Teachers(T_ID)
);

CREATE TABLE assigns(
   H_name VARCHAR(50),
   T_ID INT,
   points INT,
   PRIMARY KEY(H_name, T_ID),
   FOREIGN KEY(H_name) REFERENCES Houses(H_name),
   FOREIGN KEY(T_ID) REFERENCES Teachers(T_ID)
);

ALTER table Houses drop foreign key Courses_ibfk_1;