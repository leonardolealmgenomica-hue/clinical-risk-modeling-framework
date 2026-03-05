Clinical Risk Modeling Framework

This repository contains a reproducible R pipeline for binary clinical outcome modeling using logistic regression.

It includes:

Univariate logistic regression

Multivariate logistic regression

Odds Ratio (OR) estimation with 95% confidence intervals

Automated forest plot visualization

Example dataset for reproducibility

What This Project Demonstrates

Clean statistical modeling workflow in R

Modular code organization

Reproducible data analysis

Publication-ready forest plots

Clinical risk factor evaluation framework

Folder Structure
clinical-risk-modeling-framework/
│
├── data/               # Example dataset (CSV format)
├── R/                  # Modeling and plotting scripts
├── outputs/            # Generated tables and figures
└── README.md
How to Run

Open the project in RStudio.

Open R/run_pipeline.R.

Run the script.

The script will:

Fit logistic regression models

Export Odds Ratio tables

Generate forest plots

Outputs are saved in the outputs/ folder.

Requirements

R ≥ 4.3.0

Required packages:

tidyverse

broom

ggplot2

Install them with:

install.packages(c("tidyverse", "broom", "ggplot2"))
Example Use Case

This framework can be adapted to:

Clinical cohort datasets

Epidemiological studies

Health-tech modeling workflows

Translational biomedical research

Author

Leonardo Leal-Mercado, PhD
Molecular Biology in Medicine
Biomedical Data Science | Clinical Modeling | Genomics
