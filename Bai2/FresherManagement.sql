DROP DATABASE IF EXISTS FresherManagement;
CREATE DATABASE IF NOT EXISTS FresherManagement;
USE FresherManagement;

CREATE TABLE Trainee(
	TraineeID INT AUTO_INCREMENT PRIMARY KEY,
    Full_Name	VARCHAR(100) NOT NULL,
    Birth_Day DATE NOT NULL,
    Gender ENUM('male', 'female', 'unknown') DEFAULT 'unknown',
    ET_IQ TINYINT UNSIGNED NOT NULL,
    ET_Gmath TINYINT UNSIGNED NOT NULL,
    ET_English TINYINT UNSIGNED NOT NULL,
    Training_Class VARCHAR(50),
    Evaluation_Notes TEXT,
    VIT_Account VARCHAR (50) NOT NULL UNIQUE
    );
    
    