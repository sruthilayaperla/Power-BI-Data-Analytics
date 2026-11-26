# Report Blueprint

Use a 16:9 canvas. Keep the same page title, date slicer placement, color palette, and number formats across all pages. Use descriptive titles that state the metric and comparison.

## Page 1 — Executive Overview

**Purpose:** Give a quick view of transaction activity and sales performance.

- KPI cards: Total Sales, Transaction Count, Units Sold, Gross Income, Average Rating.
- Line chart: Total Sales by Calendar[Year Month].
- Horizontal bar chart: Total Sales by Product line.
- Bar chart: Total Sales by City.
- Slicers: Date, Branch, City, Product line.

## Page 2 — Product Performance

**Purpose:** Compare product categories without implying that revenue equals profitability.

- Ranked horizontal bar: Total Sales by Product line.
- Matrix: Product line by Branch with Total Sales, Units Sold, Gross Income, Average Rating.
- 100% stacked bar: Gross Income by Product line (use the gross income measure).
- Slicers: Branch, City, Date.

## Page 3 — Customer and Payment Mix

**Purpose:** Describe transaction mix using the categories actually present in the CSV.

- Column chart: Transaction Count by Customer type.
- Column chart: Total Sales by Gender.
- Bar chart: Total Sales by Payment.
- KPI cards: Average Transaction Value and Average Rating.
- Slicers: Date, Branch, Product line.

Do not create distinct-customer or retention visuals: the source does not contain a customer identifier.

## Page 4 — Time Analysis

**Purpose:** Explore the distribution of transactions over the available sample period.

- Line chart: Total Sales by Date.
- Column chart: Total Sales by Day Name (sort by Day Number).
- Column chart: Transaction Count by Hour.
- Matrix: Branch by Time of Day with Transaction Count and Total Sales.
- Slicers: Date, City, Branch.

## Visual and accessibility checks

- Use meaningful visual titles and axis labels.
- Keep category colors consistent across pages.
- Use data labels only when they improve readability.
- Avoid relying on color alone to communicate status or category.
- Add alt text to visuals and maintain readable contrast.
- Add a clear note that the dataset covers January–March 2019.

## Reconciliation checklist

With all slicers cleared, compare report cards to the Python/SQL baseline in the project README:

- [ ] Transaction Count = 1,000
- [ ] Units Sold = 5,510
- [ ] Total Sales = 322,966.75
- [ ] Cost of Goods Sold = 307,587.38
- [ ] Gross Income = 15,379.37
- [ ] Average Rating ≈ 6.97
- [ ] Calendar date relationship is active and one-to-many.
- [ ] Year Month is sorted by Year Month Sort.
- [ ] No duplicate rows were introduced by Power Query.
- [ ] No currency symbol is shown until the source currency is confirmed.

## Publish checklist

- [ ] Save the completed report as `Walmart-Retail-Sales-Analytics.pbix`.
- [ ] Capture readable screenshots of each report page.
- [ ] Add screenshots and the PBIX file to the project folder (respecting dataset licensing).
- [ ] Update the project README with the actual report screenshots and any revised findings.
