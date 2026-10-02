# Track expenses

## Purpose

Let a household member log, edit and categorize expenses as they happen, with
an agent suggesting the category from the description.

## User Stories

- F1.1 As a household member, I log an expense with an amount, date, category and optional note.
- F1.2 As a household member, when I enter a description, I see a category the agent suggests, which I can accept or override.
- F1.3 As a household member, I record who paid for an expense, defaulting to myself but changeable to my partner.
- F1.4 As a household member, I edit or delete any expense, whether I logged it or my partner did.
- F1.5 As a household member, I pick a category from the household's standard list, and add, rename or remove categories in that list.

## Decisions

- Every expense is shared and visible to both partners; there is no
personal-only or private expense.
- Categories ship with a standard starter list; either partner can customize
it (add, rename, remove).

