CREATE DATABASE RainbowSchoolDB;
USE RainbowSchoolDB;

CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(20)
);

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    ClassID INT,
    CONSTRAINT FK_Student_Class FOREIGN KEY (ClassID) REFERENCES Classes(ClassID)
);

INSERT INTO Classes (ClassID, ClassName) VALUES
(1, 'Class 1A'),
(2, 'Class 1B'),
(3, 'Class 2A'),
(4, 'Class 2B');

SELECT * FROM Classes;

INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(101, 'Mathematics'),
(102, 'English'),
(103, 'Science'),
(104, 'Social Studies');

SELECT * FROM Subjects;


INSERT INTO Student (StudentID, FirstName, LastName, DateOfBirth, ClassID) VALUES
(1, 'John', 'Doe', '2005-01-15', 1),
(2, 'Jane', 'Smith', '2004-08-22', 2),
(3, 'Bob', 'Johnson', '2005-03-10', 1),
(4, 'Alice', 'Williams', '2004-11-05', 3);

SELECT * FROM Student;

CREATE INDEX IX_Student_ClassID ON Student (ClassID);
