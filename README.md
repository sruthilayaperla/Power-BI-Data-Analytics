# Power BI Data Analytics Portfolio

A hands-on **Power BI, DAX, Power Query, and business intelligence portfolio** featuring interactive dashboard case studies, data preparation, statistical reporting, and business-focused visual analysis.

[![Power BI portfolio asset checks](https://github.com/sruthilayaperla/Power-BI-Data-Analytics/actions/workflows/portfolio-assets.yml/badge.svg)](https://github.com/sruthilayaperla/Power-BI-Data-Analytics/actions/workflows/portfolio-assets.yml)
[![Walmart retail analytics validation](https://github.com/sruthilayaperla/mysql/actions/workflows/walmart-retail-analytics.yml/badge.svg)](https://github.com/sruthilayaperla/mysql/actions/workflows/walmart-retail-analytics.yml)

## Featured end-to-end project

### Retail Sales Analytics — Power BI, DAX, Power Query

[Open the implementation pack](projects/walmart-retail-sales/)

This project adds a reusable Power BI build pack for the historical 1,000-transaction retail sample dataset: a Calendar dimension, 20 explicit DAX measures, a Power Query transformation, a report theme, a four-page dashboard blueprint, and KPI reconciliation checks.

**Build status:** The source assets and report instructions are in the repository; the finished `.pbix` file and report screenshots still need to be saved from Power BI Desktop. The linked Python/SQL companion project validates the source totals with GitHub Actions.

## Existing case studies

| Case study | Repository folder | Available material |
|---|---|---|
| Sandwich Sales – 1 | [Open project](casestudies/01-sandwitchsales/) | CSV, PBIX report, project report, screenshots |
| Sandwich Sales – 2 | [Open project](casestudies/02-sandwitchsales/) | CSV, PBIX report, QA/report material, screenshots |
| India Suicide Data (2001–2012) | [Open project](casestudies/03-Suicides%20in%20india/) | CSV, PBIX report, QA/report material, screenshots |
| E-Commerce Sales & Customer Analytics | [Open project](casestudies/E-Commerce%20Sales%20%26%20Customer%20Analytics/) | Dataset, analysis questions, screenshots |
| Employee Data Cleaning | [Open project](casestudies/dirty%20employees/) | Employee data, PBIX report, documentation |

> The names above describe the folders and materials currently in this repository. Open each project folder to inspect its exact files before using it.

## Tools and techniques

- **Power BI Desktop** — interactive reports, KPI scorecards, drill-through, and slicers
- **Power Query (M)** — data import, cleaning, type conversion, and derived columns
- **DAX** — explicit measures, date intelligence, ratios, and context-aware calculations
- **Data modeling** — fact/dimension design, date tables, and relationships
- **Data visualization** — trend, category, location, and customer-mix analysis
- **SQL and Python** — companion analysis and validation of source data

## Typical analytics workflow

1. Define the business question and inspect the source data.
2. Check field types, missing values, duplicates, and data quality.
3. Transform the data with Power Query.
4. Build and validate the model and relationships.
5. Create explicit DAX measures and KPI calculations.
6. Develop report pages with meaningful visual hierarchy and filters.
7. Reconcile results against source queries or independent analysis.
8. Document findings, assumptions, and dataset limitations.

## How to review a case study

1. Open a linked project folder.
2. Read its project README/report, where available.
3. Review the screenshots to understand the report layout.
4. Open the `.pbix` file in Power BI Desktop to interact with an included report.
5. Use the included CSV/source files to understand the input data where provided.

Power BI Desktop is required to open and edit PBIX files. Screenshots are static previews and do not replace the interactive report.

## Contribution and feedback

Improvements to DAX calculations, Power Query transformations, visual accessibility, documentation, and reproducible QA are welcome. Read the [contribution guide](CONTRIBUTING.md), use the repository issue templates, or open an issue with a small reproducible example.

## Portfolio notes

This repository contains PBIX files, CSV datasets, screenshots, and supporting documents. Numerical findings should be taken from the relevant workbook/report, not inferred from a project title or folder name. The public-data case study concerning suicide statistics should be interpreted carefully and in its original statistical context.

## Author

**Sruthi Laya Perla**
