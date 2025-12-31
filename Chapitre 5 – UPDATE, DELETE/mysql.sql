CREATE DATABASE tuto5;
USE tuto5;
CREATE TABLE Utilisateur(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(80) UNIQUE,
    mot_de_passe VARCHAR(200)
);
INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES 
('David', 'david@test.com', 'passdavid'),
('Emma', 'emma@test.com', 'emma123'),
('Fatima', 'fatima@test.com', 'fatima_pass');

UPDATE Utilisateur
SET nom = 'Alice Dupont', email = 'alice.dupont@test.com'
WHERE id = 1;
DELETE FROM Utilisateur
WHERE id = 2;