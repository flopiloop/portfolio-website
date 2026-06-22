---
title: "Development of a Decision Support System Component"
date: 2026-03-11
order: 6
show_date: false
url: /en/decision-support/
tags: ["ArcGIS", "Dashboard", "GIS", "Data Collection", "Group Project", "Urban Planning"]
author: "Jonathan Wild, Marius Delavoet, Yanis Stentzel, Tristan Charmetant / Academic Project @IUT2 Grenoble"
summary: "Design and deployment of a field data collection tool to survey signage degradation at tram crossings on the Grenoble university campus, with a decision-making dashboard and budget estimation."
cover:
    image: "projects/plan.png"
    alt: "Grenoble campus tram map"
    relative: false

---

---

##### Abstract

This group project (SAE 4.VCOD-01), carried out with **Marius Delavoet**, **Yanis Stentzel** and **Tristan Charmetant**, addresses the following challenge:

> *How can we survey degradations at tram crossings on the university campus?*

The goal was to design a **complete decision support solution** combining a field data collection tool, an interactive map, and a budget analysis dashboard, to help facility managers prioritize signage compliance work.

---

##### Data Pipeline

The project is built around a three-step data pipeline:

**1. Field Collection Form (ArcGIS Survey123)**
- Crossing identifier and location
- Crossing type: Tram/Car, Tram/Bike, Tram/Pedestrian
- Signs: type, number, condition, visibility, material, base
- Tactile paving strips (BEV): number, length, position, condition
- Photos associated with each element

**2. Interactive Map (ArcGIS)**
- Geographic visualization of all surveyed crossings
- Filtering by type and degradation level
- Direct integration of form data

**3. Decision Dashboard**
- Total estimated budget in €
- Number of signs to replace by category (BEV, C20, Tram Warning, traffic lights)
- Overall compliance rate
- Summary charts by equipment type

---

##### Data Collection Scenario

For each identified crossing, the field agent records:

| Element | Collected sub-items |
|---------|---------------------|
| Crossing | Location, type, identifier |
| Signs (Tram/Car, Tram/Bike) | Number, condition, visibility, material, base |
| Signs (Tram/Pedestrian) | Number, condition, visibility |
| Tactile paving strips | Number, length, position, condition |

---

##### Results

The produced dashboard allows facility managers to instantly identify priority crossings that need to be brought into compliance, with a financial estimate by degraded equipment type. Data collected on the Université Grenoble Alpes campus revealed several critical points requiring intervention.

---

##### Challenges Encountered

- **Condition assessment** of equipment: defining objective criteria to evaluate "good", "degraded", "to replace"
- **Traffic lights**: difficulty integrating them into the initial form
- **Complex intersections**: some multi-lane crossings required adapted schematization
- **Price data**: need to obtain an official reference pricing file

---

##### Project Timeline

| Phase | Period | Content |
|-------|--------|---------|
| Phase 1 | 02/03 – 09/03 | Analysis & Design, form creation, testing |
| Phase 2 | 09/03 – 16/03 | Adjustments following the intermediate presentation |
| Phase 3 | 16/03 – 20/03 | Field data collection |
| Phase 4 | 20/03 – 23/03 | Dashboard and final StoryMap creation |

---

##### Technologies and Tools

* **ArcGIS Survey123** – Mobile field data collection form
* **ArcGIS Online** – Interactive map and GIS visualization
* **ArcGIS Dashboards** – Decision-making dashboard
* **ArcGIS StoryMaps** – Final project restitution

---

##### Skills Developed

- Field data collection form design
- Geomatics and Geographic Information Systems (GIS)
- Decision dashboard creation
- Teamwork and agile project management
- Qualitative field data analysis and qualification

---
