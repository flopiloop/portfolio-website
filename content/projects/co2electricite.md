---
title: "Electricity CO2 Footprint - Data Analysis"
date: 2025-01-15
order: 5
show_date: false
url: /en/co2-electricite/
tags: ["R", "Tableau", "Data Analysis", "Datavisualisation", "Statistics", "Environment"]
author: "Jonathan Wild, Marius Delavoet / Academic Project @IUT2 Grenoble"
summary: "In-depth study of the carbon intensity of the electricity mix in 7 countries (France, Germany, Poland, Norway, India, Brazil, USA) between 2021 and 2024. Statistical analysis, modeling, and data visualization with R and Tableau."
cover:
    image: "projects/Graphique.png"
    alt: "Electricity CO2 Analysis"
    relative: false

---

---

##### Abstract

This SAE 2.06 project, developed in collaboration with **Marius Delavoet**, focuses on analyzing the carbon footprint of electricity production at an international scale. The study compares the carbon intensity (gCO2/kWh) of the electricity mix across **7 countries** over the 2021-2024 period.

**Main objectives:**
- Compare carbon intensity of electricity production across countries
- Study the composition of energy mixes (renewable, low-carbon, fossil)
- Analyze temporal and seasonal evolution of indicators
- Quantify the impact of cloud computing and data centers
- Model household electricity consumption

---

##### Methodology

**1. Data Collection**
- Primary source: **Electricity Maps** (hourly data 2021-2024)
- Complementary sources: ADEME, Boavizta, World Bank

**2. Transformation and Cleaning**
- Format harmonization (dates, units)
- Missing value treatment through interpolation
- Creation of derived variables (Low Carbon share, year-over-year differences)

**3. Statistical Analysis with R**
- Univariate exploration (distributions, boxplots)
- Correlation analysis between indicators
- Linear and quadratic regression modeling
- Identification of outlier countries (residual analysis)

---

##### Key Results

| Country | Average Carbon Intensity | Renewable Share |
|---------|--------------------------|-----------------|
| Norway | ~20 gCO2/kWh | ~100% |
| France | ~60 gCO2/kWh | ~25% |
| Brazil | ~100 gCO2/kWh | ~85% |
| Germany | ~350 gCO2/kWh | ~55% |
| USA | ~380 gCO2/kWh | ~25% |
| India | ~600 gCO2/kWh | ~20% |
| Poland | ~700 gCO2/kWh | ~20% |

**Major findings:**
- Strong negative correlation between Low Carbon share and carbon intensity (r = -0.96)
- Marked seasonality in Europe (winter increase linked to heating)
- Cloud impact: a single server instance can emit as much as thirty French households

---

##### Household Modeling

Five typical profiles were created (studio, couple, family, large family, senior couple) to estimate the carbon footprint by country:

- **Average French household**: ~4,700 kWh/year = ~280 kgCO2
- **Same household in Poland**: ~4,700 kWh/year = ~3,300 kgCO2

The origin of electricity is as important as the amount consumed.

---

##### Technologies and Tools

* **R** - Statistical analysis and visualizations
* **Tableau** - Interactive dashboards
* **Excel** - Data preparation and transformation
* **Electricity Maps API** - Primary data source

---

##### Full Report

+ [Full project report (PDF, in French)](/portfolio-website/Rapport_final_SAE_Indicateurs_de_performance.pdf)

---

##### Skills Developed

- Data analysis and descriptive statistics
- Regression modeling
- Data visualization and reporting
- Awareness of environmental issues in digital technology
- Collaborative work and scientific writing

---
