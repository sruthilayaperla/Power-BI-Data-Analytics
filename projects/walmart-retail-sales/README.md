# Retail Sales Analytics — Power BI Project

A portfolio-ready Power BI implementation pack for exploring a 1,000-transaction supermarket sales dataset. The project demonstrates data preparation with Power Query, a date dimension, reusable DAX measures, report design, and reconciliation against the Python/SQL analysis in the companion repository.

> **Build status:** The Power BI implementation assets are provided here. A finished `.pbix` file is not committed yet; open Power BI Desktop and follow the build steps below to create and save the interactive report.

## Project links

- [Source dataset (CSV)](https://raw.githubusercontent.com/sruthilayaperla/mysql/main/Walmart%20sales/WalmartSalesData.csv.csv)
- [Companion Python + MySQL analysis](https://github.com/sruthilayaperla/mysql/tree/main/Walmart%20sales/retail-sales-analytics)
- [20 reusable SQL analysis queries](https://github.com/sruthilayaperla/mysql/blob/main/Walmart%20sales/analysis_queries.sql)
- [Automated Python KPI validation](https://github.com/sruthilayaperla/mysql/actions)

## Business questions

1. How much sales value, gross income, and volume are represented in the dataset?
2. Which product lines and cities contribute the most sales?
3. How do sales vary by month, weekday, and hour?
4. How do payment method and customer type relate to transaction volume and value?
5. How do ratings vary across product lines and branches?

## Dataset and validated baseline

The source file contains 1,000 transactions dated **1 January–30 March 2019**. The following figures are the reconciliation baseline from the companion Python analysis:

| KPI | Expected value |
|---|---:|
| Transaction count | 1,000 |
| Units sold | 5,510 |
| Total sales | 322,966.75 |
| Cost of goods sold | 307,587.38 |
| Gross income | 15,379.37 |
| Average transaction value | 322.97 |
| Average rating | 6.97 |
| Gross income / total sales | 4.76% |

The CSV headers do not specify a currency symbol. Keep visuals formatted as numeric values until the dataset's original currency metadata is confirmed. This is a historical sample-data exercise, not a current Walmart operational report; do not interpret it as current company performance.

## Repository assets

| File | Purpose |
|---|---|
| `dax/calendar_table.dax` | Calendar table with year, month, weekday, and sorting columns |
| `dax/measures.dax` | Sales, margin, transaction, customer, and month-over-month measures |
| `power-query/transform_sales.m` | Power Query transformation with typed fields and derived time columns |
| `theme/powerbi-theme.json` | Reusable report theme |
| `docs/report-blueprint.md` | Page-by-page visual plan and QA checklist |

## Build the report in Power BI Desktop

1. Download the source CSV from the dataset link above.
2. In Power BI Desktop, choose **Transform data → New source → Blank query**.
3. Create a text parameter named `pCsvPath` containing the full local path to the downloaded CSV.
4. Open **Advanced Editor** and paste the contents of `power-query/transform_sales.m`. Name the query `Sales`.
5. Create the calendar table using `dax/calendar_table.dax`.
6. Create a one-to-many, single-direction relationship from `Calendar[Date]` to `Sales[Date]`.
7. Create the measures in `dax/measures.dax`.
8. Import `theme/powerbi-theme.json` using **View → Themes → Browse for themes**.
9. Build the pages described in `docs/report-blueprint.md`.
10. Compare the KPI cards with the validated baseline above, then save the report as `Walmart-Retail-Sales-Analytics.pbix`.

## Model design

- **Fact table:** `Sales` — one row per transaction.
- **Date dimension:** `Calendar` — one row per date, related to `Sales[Date]`.
- **Transaction identifier:** `Sales[Invoice ID]` — text, not a numeric measure.
- **Measures:** Keep business calculations in explicit DAX measures instead of relying on implicit aggregations.

The CSV does not contain a customer ID, product ID, or store master table. Avoid presenting distinct customer counts or unsupported customer-level retention metrics.

## Data validation

Reconcile these measures before sharing the report:

- Transaction count = 1,000
- Units sold = 5,510
- Total sales = 322,966.75
- Cost of goods sold = 307,587.38
- Gross income = 15,379.37
- Average rating ≈ 6.97

If totals differ, verify the CSV path, column types, filters, relationship direction, and whether the report has accidentally duplicated rows.

## Responsible interpretation

The data covers only three months in 2019 and represents a small sample. Describe associations and comparisons; do not infer causes, long-term trends, or present-day business performance from this dataset.

## Feedback and contributions

Suggestions for clearer visuals, additional QA checks, or improvements to the DAX are welcome. See the repository's [contribution guide](../../CONTRIBUTING.md) and open a focused issue with a screenshot or reproducible example.
