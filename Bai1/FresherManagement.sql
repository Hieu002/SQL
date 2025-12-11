CREATE DATABASE FresherManagement;
USE FresherManagement;

CREATE TABLE Trainee (
	TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    Birth_Date DATE,
    Gender ENUM('male', 'female', 'unknown') DEFAULT 'unknown',
    ET_IQ TINYINT UNSIGNED,
    ET_Gmath TINYINT UNSIGNED,
    ET_English TINYINT UNSIGNED,
    Training_Class VARCHAR(50),
    Evaluation_Notes TEXT
    );
    