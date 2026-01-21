---
title: "Analyse Statistique : Orbite de l'Astéroïde 1221 Amor"
date: 2025-11-13
order: 4
show_date: false
url: /asteroid-analysis/
aliases:
    - /orbital-math.html
tags: ["Statistiques", "Séries Temporelles", "Prédiction", "Astronomie"]
author: "Jonathan Wild / Projet Académique @IUT2 Grenoble"
summary: "Étude mathématique et statistique de la distance Terre-Astéroïde via la décomposition de séries temporelles et la modélisation prédictive Holt-Winters."
cover:
    image: "projects/Graphique.png"
    alt: "Orbite Astéroïde 1221"
    relative: false

---

---

##### Résumé

Ce projet d'analyse de données (SAE 3.03) explore l'évolution de la distance entre la Terre et l'astéroïde (1221) Amor. Passionné par l'espace, j'ai cherché à démontrer comment un modèle statistique peut prédire des mouvements célestes malgré une orbite considérée comme instable.

L'étude s'articule autour de trois axes d'analyse :
1. **Décomposition de Série Temporelle** : Identification d'un modèle additif combinant une tendance globale quasi-stationnaire et une composante saisonnière marquée de 8 ans (cycle de révolution).
2. **Étude des Résidus** : Analyse de l'hétéroscédasticité pour identifier les limites du modèle théorique face aux instabilités réelles de la trajectoire.
3. **Modélisation Prédictive** : Comparaison de plusieurs algorithmes de lissage exponentiel pour déterminer le modèle le plus fidèle à la réalité physique.

---

##### Résultats du Projet

> **Analyse des Cycles Orbitaux**
>
> ![Saisonalité](/portfolio-website/projects/asteroid-seasonality.png)
> *Superposition des cycles révélant la structure répétitive mais fluctuante de l'orbite.*

> **Comparaison de Performance des Modèles**
>
> | Modèle | AIC | MSE | MAPE (Erreur) |
> | :--- | :--- | :--- | :--- |
> | Lissage Simple (ANN) | $544.094$ | $0.738$ | $58.117\%$ |
> | Lissage de Holt (AAN) | $547.727$ | $0.736$ | $58.237\%$ |
> | **Holt-Winters (AAA)** | **$-104.209$** | **$0.002$** | **$2.531\%$** |
> *Le modèle Holt-Winters s'avère être le seul capable de reproduire fidèlement la dynamique oscillatoire.*

---

##### Liens

+ [Consulter le Rapport d'Analyse (PDF)](/portfolio-website/ReportAnalysisOrbital-JonathanWILD.pdf)

---

##### Méthodologie

L'analyse a été effectuée sur des données échantillonnées toutes les 4 mois afin de respecter une périodicité de 24 observations par cycle, permettant l'application optimale du test de Holt-Winters ($h=72$ pour la prédiction de 3 cycles).

---

##### Sources

* **NASA JPL Data** – Source primaire pour les données de distance en Unités Astronomiques (UA).
* **Modélisation Triple Lissage Exponentiel** – Application des principes de Holt-Winters pour les séries à forte saisonnalité.

---
