---
title: "Entrepôt de Données GTS - Intégration ROLAP"
date: 2025-12-08
order: 3
show_date: false
url: /data-warehouse-gts/
aliases:
    - /gts-data.html
tags: ["KNIME", "MySQL", "ETL", "Business Intelligence"]
author: "Jonathan Wild, Yanis Stentzel / Projet Académique @IUT2 Grenoble"
summary: "Mise en œuvre d'un entrepôt de données (ROLAP) pour l'aide à la décision financière, utilisant KNIME pour les processus ETL et MySQL pour le stockage structuré."
cover:
    image: "projects/gts-cover.png"
    alt: "Data Warehouse GTS"
    relative: false

---

---

##### Résumé

Ce projet académique (SAE 3.02), réalisé en collaboration avec **Yanis Stentzel**, porte sur la conception et l'implémentation d'un système de Business Intelligence complet pour la gestion financière. L'objectif principal était de transformer des données brutes hétérogènes en une structure décisionnelle exploitable.

L'application suit un cycle de traitement de données rigoureux :
1. **Appréhension des données** : Identification et liaison de fichiers sources variés tels que CSV, XLSX et XML.
2. **Processus ETL (KNIME)** : Extraction, transformation et chargement des données via l'outil KNIME pour nettoyer et structurer l'information.
3. **Modélisation en Étoile** : Structuration de la base de données autour d'une table de faits (`Fait_Vente`) et de dimensions clés (Client, Temps, Tarif).
4. **Analyse Décisionnelle** : Utilisation de requêtes SQL complexes pour répondre à des problématiques métier, comme l'identification des profils clients ou l'analyse des erreurs de paiement.

---

##### Résultats du Projet

> **Modélisation ROLAP**
>
> ![Modèle en étoile](/portfolio-website/projects/gts-star-schema.png)
> *Structure du modèle en étoile permettant l'analyse multidimensionnelle des ventes.*

> **Flux de Transformation KNIME**
>
> ![Workflow KNIME](/portfolio-website/projects/gts-knime-flow.png)
> *Aperçu du processus ETL automatisé pour la dimension Temps et la table de faits.*

---

##### Liens

+ [Consulter le Rapport de Projet Complet (PDF)](/portfolio-website/PDF_KNIME.pdf)
+ [Dépôt GitHub du Projet](https://github.com/votre-username/GTS-Datawarehouse)

---

##### Conformité et Éthique

Dans le cadre de ce projet de gestion financière, une attention particulière a été portée à l'intégrité des données et à la simulation d'un environnement professionnel sécurisé. Le dictionnaire de données garantit une traçabilité complète des variables utilisées.

---

##### Sources

* **KNIME Analytics Platform** – Outil principal pour la conception des flux de transformation.
* **MySQL** – Système de gestion de base de données pour l'implémentation du stockage ROLAP.

---
