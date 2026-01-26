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
    image: "projects/Graphique.png"
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

+ [Rapport final du projet (PDF)](/portfolio-website/Rapport_final_SAE_Indicateurs_de_performance.pdf)

---

##### Competences Developpees

- Analyse de donnees et statistiques descriptives
- Modelisation par regression
- Datavisualisation et reporting
- Sensibilisation aux enjeux environnementaux du numerique
- Travail collaboratif et redaction scientifique

---
