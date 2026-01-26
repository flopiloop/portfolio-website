---
title: "Rubik's Cube - Simulateur & Guide d'Algorithmes"
date: 2025-12-01
order: 1
show_date: false
url: /rubiks-cube/
aliases:
    - /rubikscube.html
tags: ["Rubiks", "HTML", "CSS", "Javascript"]
author: "Jonathan Wild, Projet Académique @IUT2 Grenoble"
summary: "Plateforme web d'entraînement pour maîtriser le Rubik's Cube avec la méthode Fridrich. Comprend un simulateur 2D interactif pour pratiquer les techniques de résolution et un guide de référence complet des 78 algorithmes OLL et PLL."
cover:
    image: "projects/rubik.jpg"
    alt: "Simulateur Rubik's Cube"
    relative: false

---

---

##### Résumé

Ce projet propose un environnement d'apprentissage complet pour les passionnés de speedcubing. L'application combine deux composants principaux :
1. **Simulateur 2D Interactif** : Un Rubik's Cube virtuel entièrement fonctionnel avec le schéma de couleurs standard WCA, supportant les 6 mouvements de base (F, R, U, L, D, B), la rotation de la vue, le mélange aléatoire et la réinitialisation.
2. **Bibliothèque d'Algorithmes** : Un catalogue complet des 78 algorithmes de la méthode Fridrich (CFOP), incluant 57 cas OLL (Orientation de la Dernière Couche) et 21 cas PLL (Permutation de la Dernière Couche), organisés par type de motif.

Le simulateur permet aux utilisateurs de pratiquer des séquences de résolution dans un environnement réaliste, tandis que la section d'apprentissage fournit un accès instantané aux solutions algorithmiques pour toute configuration de la dernière couche.

---

##### Fonctionnalités Principales

> **Simulateur de Cube 2D**
>
> * Représentation visuelle du cube avec faces codées par couleur (Vert-Avant, Rouge-Droite, Orange-Gauche, Bleu-Arrière, Blanc-Haut, Jaune-Bas)
> * Six mouvements de rotation standard (F, R, U, L, D, B)
> * Contrôle de vue dynamique pour inspecter toutes les faces (navigation Gauche, Droite, Haut, Bas)
> * Mélangeur standard WCA (15 mouvements aléatoires)
> * Réinitialisation en un clic vers l'état résolu
> * Interface épurée et intuitive 

> **Plateforme d'Apprentissage**
>
> * Ensemble complet d'algorithmes OLL (57 cas) catégorisés par motif :
>   - Point (7), Ligne (4), Croix (7), 4 Coins (2), Formes variées (┘, L, Ꞁ, ┌, C, P, T, W, Z)
> * Ensemble complet d'algorithmes PLL (21 cas) catégorisés par type de permutation :
>   - Permutations A, U, H, Z, T, J, R, F, V, Y, N, G, E
> * Sections extensibles pour une navigation facile
> * Notation algorithmique utilisant la terminologie standard du cubing

##### Démo en Direct & Code Source

+ [Application Web en Direct](https://flopiloop.github.io/rubikscube/) (GitHub Pages)
+ [Dépôt GitHub](https://github.com/flopiloop/rubikscube)

---

##### Contexte du Projet

Ce projet a été développé dans le cadre du cursus **BUT Sciences des données** à l'**IUT2 Grenoble** pour démontrer la maîtrise de :
* Développement web front-end et conception d'UI interactive
* Pensée algorithmique et gestion d'état
* Organisation de contenu éducatif
* Manipulation de Canvas JavaScript

L'application s'adresse à la fois aux débutants apprenant la méthode Fridrich et aux résolveurs intermédiaires cherchant une référence rapide d'algorithmes pendant leurs sessions de pratique.

---
