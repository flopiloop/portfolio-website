---
title: "Rubik's Cube Trainer – Interactive Simulator & Algorithm Learning Platform"
date: 2025-12-01
order: 4
show_date: false
url: /rubiks-cube/
aliases:
    - /rubikscube.html
tags: []
author: "Jonathan Wild, Academic Project @IUT2 Grenoble"
summary: "A comprehensive web-based training platform for mastering the Rubik's Cube using the Fridrich method. Features a 3D interactive simulator for practicing solving techniques and a complete reference guide for all 78 OLL and PLL algorithms."
cover:
    image: "/projects/rubikscube.png#center"
    alt: "Rubik's Cube Simulator"
    relative: true

---

---

##### Abstract

This project provides a complete learning environment for speedcubing enthusiasts. The application combines two main components:
1. **Interactive 3D Simulator**: A fully functional virtual Rubik's Cube with standard WCA color scheme, supporting all 6 basic moves (F, R, U, L, D, B), view rotation, random scrambling, and reset functionality.
2. **Algorithm Reference Library**: A comprehensive catalog of all 78 algorithms from the advanced Fridrich method (CFOP), including 57 OLL (Orientation of Last Layer) cases and 21 PLL (Permutation of Last Layer) cases, organized by pattern type.

The simulator allows users to practice solving sequences in a realistic environment, while the learning section provides instant access to algorithm solutions for any last-layer configuration encountered during solving.

---

##### Key Features

> **3D Cube Simulator**
>
> * Visual representation of the cube with color-coded faces (Green-Front, Red-Right, Orange-Left, Blue-Back, White-Top, Yellow-Bottom)
> * Six standard rotation moves (F, R, U, L, D, B)
> * Dynamic view control to inspect all faces (Left, Right, Up, Down navigation)
> * WCA-standard scrambler (15 random moves)
> * One-click reset to solved state
> * Clean, intuitive interface built with HTML5 Canvas

> **Learning Platform**
>
> * Complete OLL algorithm set (57 cases) categorized by pattern:
>   - Point (7), Line (4), Cross (7), 4 Corners (2), Various shapes (┘, L, Ꞁ, ┌, C, P, T, W, Z)
> * Complete PLL algorithm set (21 cases) categorized by permutation type:
>   - A, U, H, Z, T, J, R, F, V, Y, N, G, E permutations
> * Expandable sections for easy navigation
> * Algorithm notation using standard cubing terminology

---

##### Technical Implementation

* **Frontend**: Pure HTML5, CSS3, and vanilla JavaScript
* **Rendering**: HTML5 Canvas API for cube face visualization
* **State Management**: Custom JavaScript logic for tracking cube state across all faces
* **UI/UX**: Responsive design with organized button layouts and clear visual hierarchy
* **Standards Compliance**: WCA (World Cube Association) color scheme and notation

---

##### Live Demo & Source Code

+ [Live Web Application](https://flopiloop.github.io/rubikscube/) (GitHub Pages)
+ [GitHub Repository](https://github.com/flopiloop/rubikscube)

---

##### Project Context

This project was developed as part of the **BUT Informatique** curriculum at **IUT2 Grenoble** to demonstrate proficiency in:
* Front-end web development and interactive UI design
* Algorithmic thinking and state management
* Educational content organization
* JavaScript Canvas manipulation

The application serves both beginners learning the Fridrich method and intermediate solvers looking for a quick algorithm reference during practice sessions.

---
