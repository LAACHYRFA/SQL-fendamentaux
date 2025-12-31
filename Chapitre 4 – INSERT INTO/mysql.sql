CREATE DATABASE tuto4;
USE tuto4;

create table utilisateur(
 id_utilisateur INT AUTO_INCREMENT PRIMARY KEY,
 nom VARCHAR(50) NOT NULL,
 email VARCHAR(40) UNIQUE NOT NULL,
 mot_de_pas VARCHAR(100) NOT NULl
);

INSERT INTO Utilisateur (nom, email, mot_de_passe)
VALUES
  ('Alice', 'alice@test.com', '1234'),
  ('Bob', 'bob@test.com', 'passbob'),
  ('Charlie', 'charlie@test.com', 'passcharlie');

SELECT * FROM Utilisateur;


