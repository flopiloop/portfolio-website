---
title: "Commercial Database - SQL"
date: 2024-11-08
order: 4
show_date: false
url: /en/bd-commerciale/
tags: ["SQL", "Database", "MySQL", "Excel", "Data Analysis"]
author: "Jonathan Wild, Alix Cartal / Academic Project @IUT2 Grenoble"
summary: "Design and implementation of a commercial database. Development of complex SQL queries for order, customer, and pricing analysis, with report generation and data visualizations."
cover:
    image: "projects/mysql-datascientest.png"
    alt: "Commercial Database"
    relative: false

---

---

##### Abstract

This academic project, developed in collaboration with **[Alix Cartal](https://www.linkedin.com/in/alix-cartal-18333534b/)**, focuses on the design and implementation of a commercial database. The objective was to develop skills in data modeling and advanced SQL query writing to address real business needs.

The project is structured around three main areas:

1. **Database Modeling**: Design of the relational schema with CLIENTS, ORDERS, ORDER_DETAILS, PRODUCTS, and PRICING entities.

2. **Advanced SQL Queries**: Development of complex queries including multiple joins, correlated subqueries, and aggregation functions to extract commercial indicators.

3. **Analysis and Reporting**: Generation of sales analysis reports by customer, period, and product, with data imported into Excel for comprehensive business intelligence.

---

##### Workflow: From MySQL to Excel Analysis

The complete project workflow involved extracting data from the MySQL database and importing it into Excel for detailed analysis and visualization. This approach allowed us to:
- Leverage SQL for powerful data extraction and transformation
- Use Excel's native tools for pivot tables, charts, and ad-hoc analysis
- Create dynamic reports that stakeholders could easily understand and manipulate
- Demonstrate the bridge between database systems and business analysis tools

---

##### Query Examples

**Order analysis with dynamic pricing:**
```sql
SELECT CLIENTS.NomClient,
       SUM(TARIFS.Prix * DETAILCOMMANDES.Quantite) AS TOTAL
FROM CLIENTS, COMMANDES, DETAILCOMMANDES, TARIFS
WHERE CLIENTS.CodeClient = COMMANDES.RefClient
AND COMMANDES.NumCmd = DETAILCOMMANDES.RefCmd
AND TARIFS.RefProduit = DETAILCOMMANDES.RefProduit
AND TARIFS.Annee = YEAR(COMMANDES.DateC)
GROUP BY CLIENTS.NomClient;
```

**Temporal extraction for seasonal analysis:**
```sql
SELECT DAYOFWEEK(DateC) AS DAY,
       MONTH(DateC) AS MONTH,
       SUM(Quantite) AS TOTAL_QUANTITY
FROM COMMANDES, DETAILCOMMANDES
WHERE DETAILCOMMANDES.RefCmd = COMMANDES.NumCmd
GROUP BY DAY, MONTH;
```

---

##### Project Deliverables - Three-Part Submission

The project was delivered in three phases, each addressing specific business requirements:

> **Phase 1: Initial Analysis**
>
> ![Query Sheet FR1](/portfolio-website/projects/FR1.png)
> *First set of business queries analyzing customer orders and basic metrics.*

> **Phase 2: Advanced Queries**
>
> ![Query Sheet FR2](/portfolio-website/projects/FR2.png)
> *Second phase focusing on temporal patterns and seasonal trends in sales data.*

> **Phase 3: Comprehensive Reporting**
>
> ![Query Sheet FR3](/portfolio-website/projects/FR3.png)
> *Final phase presenting integrated analysis and performance indicators for business decision-making.*

---

##### Skills Developed

- Relational database modeling
- Complex SQL query writing (joins, subqueries, aggregations)
- Commercial data analysis
- Report creation and performance indicators
- Collaborative work and project management

---

##### Project Documents

+ [Project Presentation (PDF, in French)](/portfolio-website/FR_BD/PresentationBD.pdf)
+ [Query Sheet FR1 (PDF, in French)](/portfolio-website/FR_BD/FR1.pdf)
+ [Query Sheet FR2 (PDF, in French)](/portfolio-website/FR_BD/FR2.pdf)
+ [Query Sheet FR3 (PDF, in French)](/portfolio-website/FR_BD/FR3.pdf)

---

##### Technologies Used

* **MySQL** - Relational database management system
* **Excel** - Result analysis and visualization
* **SQL** - Structured query language for data extraction and manipulation

---
