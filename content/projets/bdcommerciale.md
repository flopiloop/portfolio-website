---
title: "Base de Donnees Commerciale - SQL"
date: 2024-11-08
order: 4
show_date: false
url: /bd-commerciale/
tags: ["SQL", "Base de donnees", "MySQL", "Excel", "Analyse de donnees"]
author: "Jonathan Wild, Alix Cartal / Projet Academique @IUT2 Grenoble"
summary: "Projet de conception et d'exploitation d'une base de donnees commerciale. Developpement de requetes SQL complexes pour l'analyse des commandes, clients et tarifs, avec generation de rapports et visualisations."
cover:
    image: "projects/mysql-datascientest.png"
    alt: "Base de Donnees Commerciale"
    relative: false

---

---

##### Resume

Ce projet academique, realise en collaboration avec **[Alix Cartal](https://www.linkedin.com/in/alix-cartal-18333534b/)**, porte sur la conception et l'exploitation d'une base de donnees commerciale. L'objectif etait de developper des competences en modelisation de donnees et en ecriture de requetes SQL avancees pour repondre a des besoins metier concrets.

Le projet se decompose en trois axes principaux :

1. **Modelisation de la base** : Conception du schema relationnel avec les entites CLIENTS, COMMANDES, DETAILCOMMANDES, PRODUITS et TARIFS.

2. **Requetes SQL avancees** : Developpement de requetes complexes incluant des jointures multiples, sous-requetes correlees et fonctions d'agregation pour extraire des indicateurs commerciaux.

3. **Analyse et reporting** : Generation de rapports d'analyse des ventes par client, par periode et par produit, avec donnees importees dans Excel pour une intelligence metier exhaustive.

---

##### Flux de Travail : De MySQL a Excel

L'approche complete du projet a implique l'extraction de donnees depuis la base de donnees MySQL et leur importation dans Excel pour une analyse et une visualisation detaillees. Cette approche nous a permis :
- De tirer parti de SQL pour des extractions et transformations de donnees puissantes
- D'utiliser les outils natifs d'Excel pour les tableaux crises, graphiques et analyses ad hoc
- De creer des rapports dynamiques facilement comprehensibles par les parties prenantes
- De demontrer le pont entre les systemes de base de donnees et les outils d'analyse metier

---

##### Exemples de Requetes

**Analyse des commandes avec tarification dynamique :**
```sql
SELECT CLIENTS.NomClient,
       SUM(TARIFS.Prix * DETAILCOMMANDES.Quantite) AS TOTAL
FROM CLIENTS, COMMANDES, DETAILCOMMANDES, TARIFS
WHERE CLIENTS.CodeClient = COMMANDES.RefClient
AND COMMANDES.NumCmd = DETAILCOMMANDES.RefCmd
AND TARIFS.RefProduit = DETAILCOMMANDES.RefProduit
AND TARIFS.Annee = YEAR(COMMANDES.DateC)
GROUP BY CLIENTS.NomClient;
```

**Extraction temporelle pour analyse saisonniere :**
```sql
SELECT DAYOFWEEK(DateC) AS JOUR,
       MONTH(DateC) AS MOIS,
       SUM(Quantite) AS TOTAL_QUANTITE
FROM COMMANDES, DETAILCOMMANDES
WHERE DETAILCOMMANDES.RefCmd = COMMANDES.NumCmd
GROUP BY JOUR, MOIS;
```

---

##### Livrables du Projet - Soumission en Trois Phases

Le projet a ete remis en trois phases, adressant chacune des exigences metier specifiques :

> **Phase 1 : Analyse Initiale**
>
> ![Fiche de requetes FR1](/portfolio-website/projects/FR1.png)
> *Premier ensemble de requetes metier analysant les commandes clients et metriques de base.*

> **Phase 2 : Requetes Avancees**
>
> ![Fiche de requetes FR2](/portfolio-website/projects/FR2.png)
> *Deuxieme phase concentree sur les motifs temporels et tendances saisonnieres des donnees de ventes.*

> **Phase 3 : Reporting Exhaustif**
>
> ![Fiche de requetes FR3](/portfolio-website/projects/FR3.png)
> *Phase finale presentant l'analyse integree et les indicateurs de performance pour la prise de decision metier.*

---

##### Competences Developpees

- Modelisation de bases de donnees relationnelles
- Ecriture de requetes SQL complexes (jointures, sous-requetes, agregations)
- Analyse de donnees commerciales
- Creation de rapports et indicateurs de performance
- Travail collaboratif et gestion de projet

---

##### Documents du Projet

+ [Presentation du projet (PDF)](/portfolio-website/FR_BD/PresentationBD.pdf)
+ [Fiche de requetes FR1 (PDF)](/portfolio-website/FR_BD/FR1.pdf)
+ [Fiche de requetes FR2 (PDF)](/portfolio-website/FR_BD/FR2.pdf)
+ [Fiche de requetes FR3 (PDF)](/portfolio-website/FR_BD/FR3.pdf)

---

##### Technologies Utilisees

* **MySQL** - Systeme de gestion de base de donnees relationnelle
* **Excel** - Analyse et visualisation des resultats
* **SQL** - Langage de requete structure pour l'extraction et manipulation des donnees

---
