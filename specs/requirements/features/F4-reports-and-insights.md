# Reports &amp; insights

## Purpose

Show the household summaries and trends of its combined spending — by
category, by period, and by who paid — so both partners can see where the
money goes.

Needs: F1, F3.

## User Stories

- F4.1 As a household member, I see a breakdown of spending by category for a selected period.
- F4.2 As a household member, I see a month-over-month trend of the household's spending.
- F4.3 As a household member, I see a breakdown of spending by who paid for a selected period.
- F4.4 As a household member, I choose a fixed period (this month, last month, this year) for any report.
- F4.5 As a household member, I see actual spending against the budget for any category that has one.

## Decisions

- Reports support fixed periods only (this month, last month, this year); no
custom date-range picker.
- A category report shows actual spend next to its budget where one exists;
categories without a budget just show the spend.

## Out of Scope

- A custom date-range picker.

