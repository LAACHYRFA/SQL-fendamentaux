--emloye--
INSERT INTO employe values 
(1,'laachyr','farah','developper'),
(2,'bouhya','Ahmed','chef de proget'),
(3,'el haddad','hiba','developper'),
(4,'alami','ahmed','designer');

--proget--
INSERT INTO proget values
(234,'app mobile','01-01-2026','10-03-2026',5),
(98,'site web','02-10-2025','01-12-2026',4),
(123,'site-ecommrce beaty','10-02-2026','05-01-2026',1);

--tache--
INSERT into tache values
(1,'fullstack developper','términee',1,234),
(2,'designer','en cours',2,234),
(3,'security audit','non commencé',4,123),
(4,'developper front-end','en cours',3,98);

--afficher les proget--
select titre,dateDeb,dateFin
 from proget;

 --les employés avec le nom  'EL'--
 select *
 from employe 
 where nom like 'el%';

--Afficher les taches du projet Num 234 ordonnées par priorité par ordre--
select *
from tache 
where numproget = 234 
order by priorete ASC;

--proget terminee avant Avril 2026--
select * 
from proegt 
where date-fin < 01-04-2026;

-- les employés développeurs--
select *
from employe 
where fonction = 'developper';

-- les taches terminées du projet de code 98--
select * 
from tache
where numproget = 98
and etat = 'terminee';

--Afficher pour les projets avec leur responsables(titre,dateDéb,dateFin,nomChef,prénomChef)--
SELECT p.titre, p.dateDeb, p.dateFin,
       e.nom AS nomChef,
       e.prenom AS prenomChef
FROM PROJET p
JOIN EMPLOYE e
ON p.idChef = e.idEmp;

--Afficher les taches du projet 'Site E-commerce Beauty'--
select t.*
from tache T
join proget P
on t.numproget = p.proget
WHERE p.titre = 'site-ecommrce beaty';

--Afficher le nombre de taches 'terminées' du projet  'Site E-commerce Beauty'--
select count(*) AS numTterminee
from tache t 
join proget P
on t.numproget = p.proget 
WHERE p.titre = 'site-ecommrce beaty'
and t.etat = 'terminee';

--Combien de projets ont été terminé dans l'année 2025--
select count(*) AS PGterminee2025
from proget 
where year(datedefin) = 2025;

--update--

--Modifier la date de fin du projet 234 par "16/05/2026"--
UPDATE proget 
set datefin = '16/05/2026'
where numproget = 234;

--Modifier l'état de la tache 98 par "Terminée"--
update tache 
set eta = 'terminee'
where numTache = 98;

--DELETE--
--Supprimer les taches "non commencées" du projet 123--
DELETE FROM Tache
WHERE etat = 'Non commencée';


--Supprimer l'employé "ALAMI AHMED"--
DELETE FROM employe 
where nom = 'alawi' 
and prenom = 'ahmed';