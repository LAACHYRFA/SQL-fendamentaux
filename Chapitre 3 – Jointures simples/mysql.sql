CREATE DATABASE tuto3;
USE tutoriel3;
CREATE TABLE Utilisateur(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL
);
CREATE TABLE Article(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(40) NOT NULL,
    auteur VARCHAR(40),
    contenu TEXT NOT NULL,
    datePub DATE,
    vues INT,
    id_auteur INT NOT NULL,
    FOREIGN KEY (id_auteur) REFERENCES Utilisateur(id)
);

INSERT INTO Utilisateur (id, nom)
VALUES
(1,'ahmed'),
(2,'farah'),
(3,'chaimae'),
(4,'hiba');
INSERT INTO Article (id, titre, auteur, contenu, datePub, vues, id_auteur)
VALUES
(1, 'Chapitre1', 'ahmed','Introduction aux bases de SQL et bases de donnée', '2023-08-21', 5, 2),
(2, 'Chapitre2', 'farah','Introduction aux bases de SQL et bases de donnée', '2025-12-26', 6, 2),
(3, 'Chapitre3', 'chaimae','Introduction aux bases de SQL et bases de donnée', '2025-10-04', 6, 2),
(4, 'Chapitre4', 'hiba','Introduction aux bases de SQL et bases de donnée', '2023-06-26', 1, 2);

SELECT a.titre, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_auteur = u.id
WHERE u.nom = 'hiba';

SELECT a.titre, a.datePub, u.nom
FROM Article a
INNER JOIN Utilisateur u ON a.id_auteur = u.id;