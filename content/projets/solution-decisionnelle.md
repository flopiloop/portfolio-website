---
title: "Développement d'un composant d'une solution décisionnelle"
date: 2026-03-11
order: 6
show_date: false
url: /solution-decisionnelle/
tags: ["ArcGIS", "Dashboard", "SIG", "Collecte de données", "Projet de groupe", "Urbanisme"]
author: "Jonathan Wild, Marius Delavoet, Yanis Stentzel, Tristan Charmetant / Projet Académique @IUT2 Grenoble"
summary: "Conception et déploiement d'un outil de collecte terrain pour recenser les dégradations des signalisations aux croisements tramway sur le campus universitaire de Grenoble, avec dashboard décisionnel et estimation budgétaire."
cover:
    image: "projects/Decision Support System Component.png"
    alt: "Composant solution décisionnelle"
    relative: false

---

---

##### Résumé

Ce projet de groupe (SAE 4.VCOD-01), réalisé avec **Marius Delavoet**, **Yanis Stentzel** et **Tristan Charmetant**, répond à la problématique suivante :

> *Comment recenser les dégradations sur les croisements du tram sur le campus ?*

L'objectif était de concevoir une **solution décisionnelle complète** combinant un outil de collecte terrain, une carte interactive et un dashboard d'analyse budgétaire, afin d'aider les gestionnaires à prioriser les travaux de remise en conformité de la signalisation.

---

##### Flux de données

Le projet s'articule autour d'un pipeline de données en trois étapes :

**1. Formulaire de collecte terrain (ArcGIS Survey123)**
- Identifiant et localisation du croisement
- Type de croisement : Tram/Voiture, Tram/Vélo, Tram/Piétons
- Panneaux : type, nombre, état, visibilité, matériau, massif
- Bandes d'éveil vibrant (BEV) : nombre, longueur, position, état
- Photos associées à chaque élément

**2. Carte interactive (ArcGIS)**
- Visualisation géographique de tous les croisements recensés
- Filtrage par type et état de dégradation
- Intégration directe des données du formulaire

**3. Dashboard décisionnel**
- Budget total estimé en €
- Nombre de panneaux à remplacer par catégorie (BEV, C20, Attention Tramway, feux de signalisation)
- Taux de conformité global
- Graphiques de synthèse par type d'équipement

---

##### Schéma du scénario de collecte

Pour chaque croisement identifié, l'agent de terrain renseigne :

| Élément | Sous-éléments collectés |
|---------|------------------------|
| Croisement | Localisation, type, identifiant |
| Panneaux (Tram/Voiture, Tram/Vélo) | Nombre, état, visibilité, matériau, massif |
| Panneaux (Tram/Piétons) | Nombre, état, visibilité |
| Bandes d'éveil vibrant | Nombre, longueur, position, état |

---

##### Résultats

Le dashboard produit permet d'identifier en un coup d'œil les croisements prioritaires à remettre en conformité, avec une estimation financière par type d'équipement dégradé. Les données récoltées sur le campus de l'Université Grenoble Alpes ont révélé plusieurs points critiques nécessitant une intervention.

---

##### Difficultés rencontrées

- **Qualification de l'état** des équipements : définir des critères objectifs pour évaluer "bon", "dégradé", "à remplacer"
- **Feux de signalisation** : difficulté d'intégration dans le formulaire initial
- **Carrefours complexes** : certains croisements multi-voies nécessitaient une schématisation adaptée
- **Données de prix** : nécessité d'obtenir un fichier de référence des tarifs officiels

---

##### Planning du projet

| Phase | Période | Contenu |
|-------|---------|---------|
| Phase 1 | 02/03 – 09/03 | Analyse & Conception, création du formulaire, tests |
| Phase 2 | 09/03 – 16/03 | Ajustements suite à la présentation intermédiaire |
| Phase 3 | 16/03 – 20/03 | Collecte terrain & données |
| Phase 4 | 20/03 – 23/03 | Création du dashboard et de la StoryMap finale |

---

##### Technologies et Outils

* **ArcGIS Survey123** – Formulaire de collecte terrain mobile
* **ArcGIS Online** – Carte interactive et visualisation SIG
* **ArcGIS Dashboards** – Tableau de bord décisionnel
* **ArcGIS StoryMaps** – Restitution finale

---

##### Compétences Développées

- Conception de formulaires de collecte de données terrain
- Géomatique et Systèmes d'Information Géographique (SIG)
- Création de tableaux de bord décisionnels
- Travail en équipe et gestion de projet agile
- Analyse et qualification de données qualitatives sur le terrain

---
