---
title: "GTS Data Warehouse - ROLAP Integration"
date: 2025-12-08
order: 3
show_date: false
url: /en/data-warehouse-gts/
aliases:
    - /en/gts-data.html
tags: ["KNIME", "MySQL", "ETL", "Business Intelligence"]
author: "Jonathan Wild, Yanis Stentzel / Academic Project @IUT2 Grenoble"
summary: "Implementation of a data warehouse (ROLAP) for financial decision support, using KNIME for ETL processes and MySQL for structured storage."
cover:
    image: "projects/image.png"
    alt: "Data Warehouse"
    relative: false

---

---

##### Abstract

This academic project (SAE 3.02), developed in collaboration with **[Yanis Stentzel](https://www.linkedin.com/in/yanis-stentzel/)**, focuses on the design and implementation of a complete Business Intelligence system for financial management. The main objective was to transform heterogeneous raw data into an exploitable decision-making structure.

The application follows a rigorous data processing cycle:
1. **Data Comprehension**: Identification and linking of various source files such as CSV, XLSX, and XML.
2. **ETL Process (KNIME)**: Extraction, transformation, and loading of data using the KNIME tool to clean and structure information.
3. **Star Schema Modeling**: Database structuring around a fact table (`Fait_Vente`) and key dimensions (Customer, Time, Pricing).
4. **Decision Analysis**: Use of complex SQL queries to address business issues, such as customer profile identification or payment error analysis.

---

##### Project Results

> **ROLAP Modeling**
>
> ![Star Schema](/portfolio-website/projects/etoile.png)
> *Star schema structure enabling multidimensional sales analysis.*

> **Transformation Plan**
>
> ![Plan](/portfolio-website/projects/plan.png)
> *Overview of the theoretical plan for the data transformation plan.*

> **KNIME Transformation Flow**
>
> ![KNIME Workflow](/portfolio-website/projects/ETL.png)
> *Overview of the automated ETL process for the Sales dimension and fact table.*

---

##### Links

+ [View Complete Project Report (PDF, in French)](/portfolio-website/PDF_KNIME.pdf)

---

##### Sources

* **KNIME Analytics Platform** – Primary tool for designing transformation workflows.
* **MySQL** – Database management system for ROLAP storage implementation.

---
