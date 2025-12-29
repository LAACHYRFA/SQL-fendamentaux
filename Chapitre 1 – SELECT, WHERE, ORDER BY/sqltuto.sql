CREATE DATABASE mysql;
USE mysql;

CREATE TABLE Article(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(100) NOT NULL,
    contenu TEXT NOT NULL,
    date-Pub DATE
);
INSERT INTO Article (titre, contenu, datePub)
VALUES
('Introduction SQL', 'Apprendre à manipuler les tables et les données SQL', '2025-01-15'),
('Sélection et Filtrage', 'Comment utiliser SELECT et WHERE pour filtrer les données', '2025-03-10'),
('Tri des données', 'Utilisation de ORDER BY pour trier les résultats', '2024-12-05'),
('Limitation des résultats', 'Utilisation de LIMIT pour restreindre le nombre de résultats', '2025-07-22');

SELECT * 
FROM Article;

SELECT titre, datePub
FROM Article
WHERE datePub >= '2025-01-01'
ORDER BY datePub ASC
LIMIT 4;
