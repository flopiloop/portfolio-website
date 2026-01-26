---
title: "Empreinte CO2 de l'Electricite - Analyse de Donnees"
date: 2025-01-15
order: 5
show_date: false
url: /co2-electricite/
tags: ["R", "Tableau", "Analyse de donnees", "Datavisualisation", "Statistiques", "Environnement"]
author: "Jonathan Wild, Marius Delavoet / Projet Academique @IUT2 Grenoble"
summary: "Etude approfondie de l'intensite carbone du mix electrique de 7 pays (France, Allemagne, Pologne, Norvege, Inde, Bresil, USA) entre 2021 et 2024. Analyse statistique, modelisation et datavisualisation avec R et Tableau."
cover:
    image: "projects/Capture d'écran 2026-01-26 183429.png"
    alt: "Analyse CO2 Electricite"
    relative: false

---

---

##### Resume

Ce projet de SAE 2.06, realise en collaboration avec **Marius Delavoet**, porte sur l'analyse de l'empreinte carbone de la production d'electricite a l'echelle internationale. L'etude compare l'intensite carbone (gCO2/kWh) du mix electrique de **7 pays** sur la periode 2021-2024.

**Objectifs principaux :**
- Comparer l'intensite carbone de la production electrique entre pays
- Etudier la composition des mix energetiques (renouvelable, bas-carbone, fossile)
- Analyser l'evolution temporelle et saisonniere des indicateurs
- Quantifier l'impact du cloud et des datacenters
- Modeliser la consommation electrique des foyers

---

##### Methodologie

**1. Collecte des donnees**
- Source principale : **Electricity Maps** (donnees horaires 2021-2024)
- Sources complementaires : ADEME, Boavizta, Banque mondiale

**2. Transformation et nettoyage**
- Harmonisation des formats (dates, unites)
- Traitement des valeurs manquantes par interpolation
- Creation de variables derivees (part Low Carbon, ecarts interannuels)

**3. Analyse statistique sous R**
- Exploration univariee (distributions, boxplots)
- Analyse de correlation entre indicateurs
- Modelisation par regression lineaire et quadratique
- Identification des pays atypiques (analyse des residus)

**Importance de R dans ce projet :**
Le langage R a ete instrumental pour conduire des analyses statistiques rigoureuses et generer des visualisations de qualite publication. En utilisant des packages comme `ggplot2`, `dplyr` et `tidyr`, nous avons pu :
- Realiser un nettoyage et une exploration exhaustive des donnees (EDA)
- Construire des modeles predictifs par regression et valider leurs hypotheses
- Creer des pipelines d'analyse reproductibles pour la transparence
- Generer des rapports automatises integrant code, visualisations et interpretations
- Effectuer des tests statistiques pour valider les hypotheses sur les variations d'intensite carbone

---

##### Resultats Cles

| Pays | Intensite Carbone Moyenne | Part Renouvelable |
|------|---------------------------|-------------------|
| Norvege | ~20 gCO2/kWh | ~100% |
| France | ~60 gCO2/kWh | ~25% |
| Bresil | ~100 gCO2/kWh | ~85% |
| Allemagne | ~350 gCO2/kWh | ~55% |
| USA | ~380 gCO2/kWh | ~25% |
| Inde | ~600 gCO2/kWh | ~20% |
| Pologne | ~700 gCO2/kWh | ~20% |

**Constats majeurs :**
- Forte correlation negative entre part Low Carbon et intensite carbone (r = -0.96)
- Saisonnalite marquee en Europe (hausse hivernale liee au chauffage)
- Impact du cloud : une seule instance serveur peut emettre autant qu'une trentaine de foyers francais

---

##### Visualisations et Resultats d'Analyse

Le projet inclut des visualisations exhaustives et des syntheses statistiques detaillees dans le rapport complet :

> **Distributions Statistiques et Correlations**
> 
> L'analyse revele des motifs specifiques a chaque pays dans l'intensite carbone, avec des graphiques de distribution detailles montrant la variance au sein de chaque nation et dans le temps.

> **Evolution Temporelle**
> 
> Les motifs saisonniers demontrent l'impact des conditions meteo et des variations de demande sur l'intensite carbone, particulierement dans les pays europeens pendant les mois d'hiver.

> **Modeles de Regression**
> 
> Les modeles predictifs developpes par analyse R montrent la relation entre la part d'energie renouvelable et l'intensite carbone globale, permettant la prevision des tendances futures.

---

##### Modelisation des Foyers

Cinq profils types ont ete crees (studio, couple, famille, grande famille, couple senior) pour estimer l'empreinte carbone selon le pays :

- **Foyer francais moyen** : ~4 700 kWh/an = ~280 kgCO2
- **Meme foyer en Pologne** : ~4 700 kWh/an = ~3 300 kgCO2

L'origine de l'electricite est aussi importante que la quantite consommee.

---

##### Technologies et Outils

* **R** - Analyse statistique et visualisations
* **Tableau** - Dashboards interactifs
* **Excel** - Preparation et transformation des donnees
* **Electricity Maps API** - Source de donnees primaire

---

##### Document Complet

+ [Rapport final du projet (PDF)](/portfolio-website/Rapport_final_SAE_2.06_CO2.pdf)

---

##### Competences Developpees

- Analyse de donnees et statistiques descriptives
- Modelisation par regression
- Datavisualisation et reporting
- Sensibilisation aux enjeux environnementaux du numerique
- Travail collaboratif et redaction scientifique

---
