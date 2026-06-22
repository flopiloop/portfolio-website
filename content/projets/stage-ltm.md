---
title: "Stage au LTM – Simulation Optique de Miroirs de Bragg et Microcavités"
date: 2026-04-07
order: 8
show_date: false
url: /stage-ltm/
tags: ["Python", "NumPy", "Simulation", "Optique", "Physique", "Transfer Matrix Method", "CNRS"]
author: "Jonathan Wild / Stage @LTM – Laboratoire des Technologies de la Microélectronique, CNRS / UGA"
summary: "Stage de 12 semaines au LTM (CNRS/UGA) sous la supervision de David Peyrade. Développement d'un simulateur Python vectorisé basé sur la Transfer Matrix Method (TMM) pour calculer la réflectance de miroirs de Bragg et microcavités Fabry-Pérot, environ 2000× plus rapide que l'implémentation originale."
cover:
    image: "projects/etoile.png"
    alt: "Simulation optique miroirs de Bragg"
    relative: false

---

---

##### Résumé

Ce stage de **12 semaines** s'est déroulé au **LTM (Laboratoire des Technologies de la Microélectronique)**, unité de recherche commune au CNRS et à l'Université Grenoble Alpes (Grenoble INP), sous la supervision de **David Peyrade**, avec le suivi académique d'Olivier Renault (IUT2 Grenoble).

L'objectif principal était de **développer un simulateur optique en Python** basé sur la Transfer Matrix Method (TMM), permettant de calculer la réflectance, la transmittance et l'absorptance d'empilements de couches minces (miroirs de Bragg, microcavités Fabry-Pérot) pour toute longueur d'onde, angle d'incidence et polarisation.

> Ce travail a contribué à la soumission d'un **abstract à la conférence internationale MNE 2026** (Micro and Nano Engineering, Grenoble).

---

##### Contexte Scientifique

Les miroirs de Bragg sont des structures diélectriques périodiques qui réfléchissent sélectivement la lumière dans une bande spectrale précise (la bande interdite photonique). Ils sont au cœur de nombreuses technologies : lasers VCSEL, interféromètres gravitationnels (LIGO/Virgo), cellules photovoltaïques, capteurs photoniques.

Au LTM, ces miroirs sont fabriqués par **spin-coating**, une technique bas-coût qui dépose alternativement un nanocomposite ZrO₂ (indice élevé, n ≈ 1,75) et le polymère SU-8 (indice faible, n ≈ 1,58) pour construire un miroir infrarouge centré vers λ₀ ≈ 1 150 nm.

---

##### Travaux Réalisés

**1. Développement du simulateur TMM vectorisé**
- Réécriture complète du code open-source de Steve Byrnes en version entièrement vectorisée NumPy
- Gain de performance : **environ 2000× plus rapide** que l'implémentation originale
- Calcul simultané sur la grille complète (θ × λ) en un seul appel NumPy

**2. Modélisation des matériaux**
- Modèle dispersif (loi de Cauchy) : n(λ) = A + B/λ² + C/λ⁴
- Modèle non-dispersif (indice constant)
- Import de données expérimentales CSV (ellipsométrie) avec interpolation par spline cubique
- Matériaux disponibles : ZrO₂, SU-8, TiO₂, SiO₂, Silice fondue, métaux (Au, Ag, Al, Cu, Cr)

**3. Calcul de cartes angulaires (gap-maps)**
- Heatmaps R(λ, θ) et T(λ, θ) sur la grille complète (0°–90°, 300–3000 nm)
- Polarisations TE, TM et lumière non-polarisée
- Modèle Maxwell-Garnett pour cristaux photoniques nanoparticulaires

**4. Extension aux microcavités Fabry-Pérot**
- Insertion d'une couche défaut (λ/2) entre deux miroirs de Bragg
- Mode résonant étroit à l'intérieur de la bande interdite
- Facteur de qualité Q = λ₀/Δλ_FWHM

**5. Validation systématique**
- Comparaison TMM vs OpenFilters (RSE < 0,5 % dans tous les cas)
- Validation contre la littérature (Moscardi et al., 2021)
- Application au système ZrO₂/SU-8 réel fabriqué au LTM

**6. Problème inverse**
- Recherche exhaustive (grille de M valeurs par couche)
- Échantillonnage probabiliste Monte-Carlo et Latin Hypercube Sampling
- Métriques : RSE et FWHM de la bande d'arrêt

---

##### Architecture du Simulateur

| Module | Rôle |
|--------|------|
| `main.py` | Point d'entrée – paramètres et flags booléens d'activation |
| `modeles_dielectriques.py` | Bibliothèque de matériaux – retourne n(λ) et k(λ) |
| `tmm_core.py` | Moteur TMM scalaire cohérent |
| `extensions_tmm.py` | Extension 2D vectorisée (_coh_tmm_2d) – grille (θ × λ) |
| `bragg_mirror.py` | Orchestrateur – construit la pile, appelle TMM, sauvegarde, trace |

---

##### Résultats Clés

- Simulateur **2000× plus rapide** que la version scalaire originale
- Gap-map sur 900 angles × 2500 longueurs d'onde : quelques secondes
- RSE < 0,5 % vs OpenFilters sur tous les cas de validation
- Contribution directe à une **publication internationale (MNE 2026)**
- Collaboration avec Marouane Chag (fabrication spin-coating) : simulation vs mesures expérimentales

---

##### Technologies et Outils

* **Python** – Développement du simulateur
* **NumPy** – Vectorisation et performances
* **Matplotlib** – Visualisations et heatmaps
* **OpenFilters** – Logiciel de référence pour la validation
* **OriginPro** – Figures de publication
* **SciPy** – Interpolation spline cubique

---

##### Téléchargements

+ [Rapport de stage complet (PDF, en anglais)](/portfolio-website/WILD_Jonathan_rapport_final.pdf)

---

##### Compétences Développées

- Simulation numérique et méthodes matricielles de transfert (TMM)
- Optimisation de code Python (vectorisation NumPy, ×2000)
- Optique physique : miroirs de Bragg, microcavités, polarisation, loi de Cauchy
- Problème inverse et méthodes d'échantillonnage (Monte-Carlo, LHS)
- Validation de modèles numériques contre des références de la littérature
- Travail en laboratoire de recherche CNRS / collaboration avec publication internationale
- Autonomie, rigueur scientifique, communication de résultats à des experts physique

---
