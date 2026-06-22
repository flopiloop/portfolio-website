---
title: "Reporting d'une Analyse Multivariée – Application R Shiny"
date: 2025-12-01
order: 7
show_date: false
url: /rshiny-analyse/
tags: ["R", "Shiny", "Analyse multivariée", "ACP", "Visualisation", "Statistiques"]
author: "Jonathan Wild / Projet Académique @IUT2 Grenoble"
summary: "Développement d'une application R Shiny interactive permettant d'explorer et de visualiser les résultats d'une analyse multivariée (ACP, clustering, corrélations) à travers un dashboard dynamique."
cover:
    image: "projects/rshiny-app.png"
    alt: "Dashboard R Shiny analyse multivariée"
    relative: false

---

---

##### Résumé

Ce projet consiste en le développement d'une **application web interactive** avec R Shiny pour le reporting d'une analyse multivariée. L'application permet à un utilisateur non-expert en statistiques de naviguer intuitivement à travers des analyses complexes, de filtrer les données, et d'interpréter les résultats visuellement.

L'objectif principal était de rendre l'analyse multivariée **accessible et interactive**, en transformant des sorties statistiques brutes en visualisations dynamiques et en narratif analytique structuré.

---

##### Fonctionnalités de l'Application

**Navigation par onglets :**
- Vue d'ensemble des données (statistiques descriptives, distributions)
- Analyse en Composantes Principales (ACP) interactive
- Visualisation des corrélations (matrice, heatmap)
- Clustering et segmentation
- Exportation des résultats

**Interactivité :**
- Filtres dynamiques sur les variables et les individus
- Sélection du nombre de composantes à afficher
- Zoom sur les biplots ACP
- Paramétrage du nombre de clusters (k-means, CAH)
- Tooltips informatifs sur tous les graphiques

---

##### Analyse Multivariée Implémentée

**Analyse en Composantes Principales (ACP) :**
- Calcul et visualisation des valeurs propres (scree plot)
- Cercle des corrélations (variables)
- Nuage des individus dans le plan factoriel
- Contribution des variables aux axes principaux
- Qualité de représentation (cos²)

**Analyse de Clustering :**
- Méthode k-means avec sélection automatique du k optimal (méthode du coude)
- Classification Ascendante Hiérarchique (CAH) avec dendrogramme
- Visualisation des clusters dans le plan ACP

**Analyse des Corrélations :**
- Matrice de corrélation interactive (Pearson, Spearman)
- Heatmap annotée avec valeurs de p
- Identification automatique des corrélations significatives

---

##### Architecture Technique

L'application R Shiny est structurée selon le pattern **UI / Server** :

```r
# Structure de l'application
ui.R          # Interface utilisateur (layout, inputs, outputs)
server.R      # Logique de traitement (calculs, réactivité)
global.R      # Données et fonctions partagées
modules/      # Modules Shiny réutilisables par onglet
```

**Packages R utilisés :**
- `shiny`, `shinydashboard` – Framework de l'application
- `FactoMineR`, `factoextra` – ACP et analyses factorielles
- `ggplot2`, `plotly` – Visualisations statiques et interactives
- `corrplot`, `GGally` – Matrices de corrélation
- `DT` – Tables de données interactives
- `cluster`, `dendextend` – Méthodes de clustering

---

##### Technologies et Outils

* **R** – Langage de développement principal
* **R Shiny** – Framework d'application web interactive
* **FactoMineR / factoextra** – Analyses multivariées
* **ggplot2 / plotly** – Visualisations dynamiques
* **RMarkdown** – Génération de rapports automatisés

---

##### Compétences Développées

- Développement d'applications web avec R Shiny
- Analyse multivariée (ACP, clustering, corrélations)
- Design d'interfaces utilisateur pour la dataviz
- Programmation réactive et gestion de l'état
- Packaging et déploiement d'applications R
- Communication de résultats statistiques à un public non-expert

---
