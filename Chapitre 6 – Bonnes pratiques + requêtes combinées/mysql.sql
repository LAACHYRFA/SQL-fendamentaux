CREATE DATABASE tuto6;
USE tuto6;
CREATE TABLE Utilisateur(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(40) NOT NULL
);
CREATE TABLE Article(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(50) NOT NULL,
    auteur VARCHAR(50),
    contenu TEXT NOT NULL,
    datePub DATETIME,
    vues INT,
    id_auteur INT ,
    FOREIGN KEY (id_auteur) REFERENCES Utilisateur(id)
);

INSERT INTO Utilisateur (id, nom)
VALUES
(1,'AHMED'),
(2,'FARAH'),
(3,'SALMA'),
(4,'hiba');
INSERT INTO Article (id, titre, auteur, contenu, datePub, vues, id_auteur)
VALUES
(1,'Introduction SQL', 'Apprendre à manipuler les tables et les données SQL', '2025-01-15'),
(2,'Sélection et Filtrage', 'Comment utiliser SELECT et WHERE pour filtrer les données', '2025-03-10'),
(3,'Tri des données', 'Utilisation de ORDER BY pour trier les résultats', '2024-12-05'),
(4,'Limitation des résultats', 'Utilisation de LIMIT pour restreindre le nombre de résultats', '2025-07-22');

START TRANSACTION;
INSERT INTO Article (titre, auteur, contenu, datePub, vues, id_auteur)
VALUES ('Introduction SQL', 'Apprendre à manipuler les tables et les données SQL', '2025-01-15');

UPDATE Utilisateur
SET nom = 'AHMED'
WHERE id = 4;

COMMIT;