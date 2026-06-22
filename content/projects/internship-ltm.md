---
title: "Internship at LTM – Optical Simulation of Bragg Mirrors and Microcavities"
date: 2026-04-07
order: 8
show_date: false
url: /en/internship-ltm/
tags: ["Python", "NumPy", "Simulation", "Optics", "Physics", "Transfer Matrix Method", "CNRS"]
author: "Jonathan Wild / Internship @LTM – Laboratoire des Technologies de la Microélectronique, CNRS / UGA"
summary: "12-week internship at LTM (CNRS/UGA) under the supervision of David Peyrade. Development of a vectorized Python simulator based on the Transfer Matrix Method (TMM) to compute the reflectance of Bragg mirrors and Fabry-Pérot microcavities, approximately 2000× faster than the original implementation."
cover:
    image: "projects/bragg-report.png"
    alt: "Optical simulation of Bragg mirrors"
    relative: false

---

---

##### Abstract

This **12-week internship** took place at the **LTM (Laboratoire des Technologies de la Microélectronique)**, a joint research unit between the CNRS and Université Grenoble Alpes (Grenoble INP), under the supervision of **David Peyrade**, with academic mentoring by Olivier Renault (IUT2 Grenoble).

The main objective was to **develop an optical simulator in Python** based on the Transfer Matrix Method (TMM), capable of computing the reflectance, transmittance, and absorptance of thin-film stacks (Bragg mirrors, Fabry-Pérot microcavities) for any wavelength, angle of incidence, and polarization.

> This work contributed to the submission of an **abstract to the international conference MNE 2026** (Micro and Nano Engineering, Grenoble).

---

##### Scientific Context

Bragg mirrors are periodic dielectric structures that selectively reflect light within a precise spectral band (the photonic stop-band). They are at the heart of many technologies: VCSEL lasers, gravitational wave interferometers (LIGO/Virgo), photovoltaic cells, photonic sensors.

At the LTM, these mirrors are fabricated by **spin-coating**, a low-cost technique that alternately deposits a ZrO₂ nanocomposite (high-index, n ≈ 1.75) and the polymer SU-8 (low-index, n ≈ 1.58) to build an infrared mirror centered near λ₀ ≈ 1,150 nm.

---

##### Work Carried Out

**1. Development of the vectorized TMM simulator**
- Complete rewrite of Steve Byrnes' open-source code in a fully vectorized NumPy version
- Performance gain: **approximately 2000× faster** than the original implementation
- Simultaneous computation over the full (θ × λ) grid in a single NumPy call

**2. Material modeling**
- Dispersive model (Cauchy law): n(λ) = A + B/λ² + C/λ⁴
- Non-dispersive model (constant index)
- Import of experimental CSV data (ellipsometry) with cubic spline interpolation
- Available materials: ZrO₂, SU-8, TiO₂, SiO₂, Fused Silica, metals (Au, Ag, Al, Cu, Cr)

**3. Angular map computation (gap-maps)**
- Reflectance/transmittance heatmaps R(λ, θ) and T(λ, θ) over the full grid (0°–90°, 300–3000 nm)
- TE, TM polarizations and unpolarized light
- Maxwell-Garnett model for nanoparticle photonic crystals

**4. Extension to Fabry-Pérot microcavities**
- Insertion of a defect layer (λ/2) between two Bragg mirrors
- Narrow resonant mode inside the photonic stop-band
- Quality factor Q = λ₀/Δλ_FWHM

**5. Systematic validation**
- TMM vs OpenFilters comparison (RSE < 0.5% in all cases)
- Validation against the literature (Moscardi et al., 2021)
- Application to the real ZrO₂/SU-8 system fabricated at LTM

**6. Inverse problem**
- Exhaustive search (grid of M values per layer)
- Probabilistic sampling: Monte-Carlo and Latin Hypercube Sampling
- Metrics: RSE and FWHM of the stop-band

---

##### Simulator Architecture

| Module | Role |
|--------|------|
| `main.py` | Entry point – parameters and Boolean activation flags |
| `modeles_dielectriques.py` | Material library – returns n(λ) and k(λ) |
| `tmm_core.py` | Coherent scalar TMM engine |
| `extensions_tmm.py` | Vectorized 2D extension (_coh_tmm_2d) – (θ × λ) grid |
| `bragg_mirror.py` | Orchestrator – builds the stack, calls TMM, saves, plots |

---

##### Key Results

- Simulator **2000× faster** than the original scalar version
- Gap-map over 900 angles × 2500 wavelengths: a few seconds
- RSE < 0.5% vs OpenFilters across all validation cases
- Direct contribution to an **international publication (MNE 2026)**
- Collaboration with Marouane Chag (spin-coating fabrication): simulation vs experimental measurements

---

##### Technologies and Tools

* **Python** – Simulator development
* **NumPy** – Vectorization and performance
* **Matplotlib** – Visualizations and heatmaps
* **OpenFilters** – Reference software for validation
* **OriginPro** – Publication-quality figures
* **SciPy** – Cubic spline interpolation

---

##### Download

+ [Full Internship Report (PDF)](/portfolio-website/WILD_Jonathan_rapport_final.pdf)

---

##### Skills Developed

- Numerical simulation and Transfer Matrix Method (TMM)
- Python code optimization (NumPy vectorization, ×2000)
- Physical optics: Bragg mirrors, microcavities, polarization, Cauchy law
- Inverse problem and sampling methods (Monte-Carlo, LHS)
- Numerical model validation against literature references
- Work in a CNRS research laboratory / collaboration on an international publication
- Autonomy, scientific rigor, communicating results to physics experts

---
