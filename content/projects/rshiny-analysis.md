---
title: "Multivariate Analysis Reporting – R Shiny Application"
date: 2025-12-01
order: 7
show_date: false
url: /en/rshiny-analysis/
tags: ["R", "Shiny", "Multivariate Analysis", "PCA", "Visualization", "Statistics"]
author: "Jonathan Wild / Academic Project @IUT2 Grenoble"
summary: "Development of an interactive R Shiny web application for exploring and visualizing multivariate analysis results (PCA, clustering, correlations) through a dynamic dashboard."
cover:
    image: "projects/Graphique.png"
    alt: "R Shiny multivariate analysis dashboard"
    relative: false

---

---

##### Abstract

This project consists of developing an **interactive web application** with R Shiny for multivariate analysis reporting. The application allows a non-expert user to intuitively navigate through complex analyses, filter data, and visually interpret results.

The main objective was to make multivariate analysis **accessible and interactive**, transforming raw statistical outputs into dynamic visualizations and a structured analytical narrative.

---

##### Application Features

**Tab-based navigation:**
- Data overview (descriptive statistics, distributions)
- Interactive Principal Component Analysis (PCA)
- Correlation visualization (matrix, heatmap)
- Clustering and segmentation
- Result export

**Interactivity:**
- Dynamic filters on variables and individuals
- Selection of the number of components to display
- Zoom on PCA biplots
- Cluster count parameterization (k-means, HAC)
- Informative tooltips on all charts

---

##### Multivariate Analysis Implemented

**Principal Component Analysis (PCA):**
- Eigenvalue computation and visualization (scree plot)
- Correlation circle (variables)
- Individual scatter plot in the factorial plane
- Variable contributions to principal axes
- Representation quality (cos²)

**Clustering Analysis:**
- K-means method with automatic optimal k selection (elbow method)
- Hierarchical Ascendant Classification (HAC) with dendrogram
- Cluster visualization in the PCA plane

**Correlation Analysis:**
- Interactive correlation matrix (Pearson, Spearman)
- Annotated heatmap with p-values
- Automatic identification of significant correlations

---

##### Technical Architecture

The R Shiny application is structured following the **UI / Server** pattern:

```r
# Application structure
ui.R          # User interface (layout, inputs, outputs)
server.R      # Processing logic (calculations, reactivity)
global.R      # Shared data and functions
modules/      # Reusable Shiny modules per tab
```

**R packages used:**
- `shiny`, `shinydashboard` – Application framework
- `FactoMineR`, `factoextra` – PCA and factorial analyses
- `ggplot2`, `plotly` – Static and interactive visualizations
- `corrplot`, `GGally` – Correlation matrices
- `DT` – Interactive data tables
- `cluster`, `dendextend` – Clustering methods

---

##### Technologies and Tools

* **R** – Primary development language
* **R Shiny** – Interactive web application framework
* **FactoMineR / factoextra** – Multivariate analyses
* **ggplot2 / plotly** – Dynamic visualizations
* **RMarkdown** – Automated report generation

---

##### Skills Developed

- Web application development with R Shiny
- Multivariate analysis (PCA, clustering, correlations)
- User interface design for data visualization
- Reactive programming and state management
- R application packaging and deployment
- Communicating statistical results to a non-expert audience

---
