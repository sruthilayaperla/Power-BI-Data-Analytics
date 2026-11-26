# Contributing

Thank you for helping improve this Power BI analytics portfolio. Contributions that make the reports more accurate, accessible, reproducible, or easier to understand are welcome.

## Good contribution areas

- Improve Power Query data-quality checks or transformations.
- Review DAX measures and add testable calculation examples.
- Improve report layout, accessibility, labeling, or visual explanations.
- Add reproducible business questions and evidence-based findings.
- Fix typos, broken links, or unclear setup instructions.

## Before opening an issue

1. Search existing issues to avoid duplicates.
2. Describe the specific project and file.
3. Include the expected result and the actual result.
4. For calculation issues, include a small reproducible example and the filter context.
5. Do not upload confidential, personal, or licensed third-party data.

## Pull request workflow

1. Fork the repository and create a focused branch.
2. Keep each pull request limited to one change.
3. Update the relevant README when behavior or setup changes.
4. For DAX changes, explain the measure's business definition and filter behavior.
5. For Power Query changes, describe source column assumptions and data types.
6. Validate JSON theme files and check all changed links.
7. Include screenshots only when they help explain a report-layout change.
8. Open a pull request describing the problem, the change, and how it was checked.

## Project-specific standards

- Treat invoice IDs as text identifiers.
- Do not invent customer IDs, store dimensions, or unsupported metrics.
- Do not apply a currency symbol until the source currency is confirmed.
- Distinguish sales, cost of goods sold, gross income, and gross-income margin.
- Describe the sample dataset as historical; avoid claims about current business performance.
- Do not commit credentials, local file paths containing personal information, or private datasets.

## Review expectations

A contribution may be revised when calculations are not reproducible, claims are unsupported, or documentation omits important limitations. Be respectful and explain technical feedback clearly.
