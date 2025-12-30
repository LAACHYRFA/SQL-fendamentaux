
CREATE DATABASE tuto2;
USE tuto2;
CREATE TABLE Article (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(40) NOT NULL,
    auteur VARCHAR(35),
    contenu TEXT NOT NULL,
    datePub DATE,
    vues INT
);


INSERT INTO Article (id, titre, auteur, contenu, datePub, vues)
VALUES
(1, 'SQL Basics', 'Omar', 'Introduction aux bases de SQL et bases de données', '2024-01-10', 12),
(2, 'Requêtes avancées', 'Sara', 'Utilisation de GROUP BY et HAVING en SQL', '2024-05-18', 9),
(3, 'Jointures SQL', 'Omar', 'Comprendre les jointures INNER et LEFT JOIN', '2024-09-02', 15),
(4, 'Optimisation SQL', 'Yassine', 'Améliorer les performances des requêtes SQL', '2025-02-11', 6);


SELECT * FROM Article;
SELECT COUNT(*) AS total_articles FROM Article;

SELECT MAX(datePub) AS derniere_publication FROM Article;
SELECT auteur, COUNT(*) AS nb_articles
FROM Article
GROUP BY auteur
HAVING COUNT(*) >= 2;
SELECT AVG(vues) AS moyenne_vues FROM Article;
