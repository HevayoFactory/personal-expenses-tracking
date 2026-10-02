# Budgets

## Purpose

Let the household set a spending limit per category (and period) and see an
in-app alert when spending in that category goes over the limit.

Needs: F1.

## User Stories

- F3.1 As a household member, I set a monthly spending limit for a category.
- F3.2 As a household member, I edit or remove a category's monthly budget.
- F3.3 As a household member, I see each category's budget alongside what the household has spent in it so far this month.
- F3.4 As a household member, I see an in-app alert when spending in a category exceeds its monthly budget.

## Decisions

- Budgets are monthly only; each resets at the start of the calendar month.
- Only per-category budgets exist; there is no overall household total budget.
- The alert fires once spending exceeds the limit; there is no earlier
approaching-limit warning.

## Out of Scope

- An overall household-wide budget total.
- Weekly or yearly budget periods.
- An earlier "approaching the limit" warning.

