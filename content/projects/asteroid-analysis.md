---
title: "Statistical Analysis: Orbit of Asteroid 1221 Amor"
date: 2025-11-13
order: 4
show_date: false
url: /en/asteroid-analysis/
aliases:
    - /en/orbital-math.html
tags: ["Statistics", "Time Series", "Prediction", "Astronomy"]
author: "Jonathan Wild / Academic Project @IUT2 Grenoble"
summary: "Mathematical and statistical study of Earth-Asteroid distance through time series decomposition and Holt-Winters predictive modeling."
cover:
    image: "projects/Graphique.png"
    alt: "Asteroid 1221 Orbit"
    relative: false

---

---

##### Abstract

This data analysis project (SAE 3.03) explores the evolution of the distance between Earth and asteroid (1221) Amor. Passionate about space, I sought to demonstrate how statistical decomposition can predict complex celestial movements despite an orbit considered unstable.

The study is structured around three axes of analysis:
1. **Time Series Decomposition**: Identification of an additive model combining a quasi-stationary global trend and a marked seasonal component of 8 years (revolution cycle).
2. **Residual Analysis**: Heteroscedasticity analysis to identify the limits of the theoretical model against the real instabilities of the trajectory.
3. **Predictive Modeling**: Comparison of several exponential smoothing algorithms to determine the model most faithful to physical reality.

---

##### Project Results

> **Orbital Cycle Analysis**
>
> ![Seasonality](/portfolio-website/projects/asteroid-seasonality.png)
> *Superposition of cycles revealing the repetitive but fluctuating structure of the orbit.*

> **Model Performance Comparison**
>
> | Model | AIC | MSE | MAPE (Error) |
> | :--- | :--- | :--- | :--- |
> | Simple Smoothing (ANN) | $544.094$ | $0.738$ | $58.117\%$ |
> | Holt Smoothing (AAN) | $547.727$ | $0.736$ | $58.237\%$ |
> | **Holt-Winters (AAA)** | **$-104.209$** | **$0.002$** | **$2.531\%$** |
> *The Holt-Winters model proves to be the only one capable of faithfully reproducing the oscillatory dynamics.*

---

##### Links

+ [View Analysis Report (PDF, in French)](/portfolio-website/ReportAnalysisOrbital-JonathanWILD.pdf)

---

##### Methodology

The analysis was performed on data sampled every 4 months to maintain a periodicity of 24 observations per cycle, allowing optimal application of the Holt-Winters test ($h=72$ for 3-cycle prediction).

---

##### Sources

* **NASA JPL Data** – Primary source for distance data in Astronomical Units (AU).
* **Triple Exponential Smoothing Modeling** – Application of Holt-Winters principles for series with strong seasonality.

---
