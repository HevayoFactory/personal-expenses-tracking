# Personal Expenses Tracking

## Problem Statement

Couples who want to track spending together today fall back on spreadsheets or
separate apps that do not talk to each other, so neither partner has a clear,
up-to-date picture of what the household is spending, on what, or whether it
is within budget. Reconciling two people's expenses by hand is tedious enough
that most couples stop doing it within a few weeks.

## Solution

A shared expense tracker for a two-person household: each partner signs in
with their own account, logs expenses as they happen, and both see a combined,
always-current view of household spending. Expenses can be categorized (with
an AI agent suggesting the category from the description), weighed against
category budgets, and summarized in reports that show where the money goes.

## Actors

- Household member — either partner in the two-person household. Signs in
individually, logs expenses, and sees and manages all shared household
expense data equally with the other member — there is no owner/subordinate
split between the two.

## Features

- F1 [Track expenses](features/F1-track-expenses.md)
- F2 [Shared household](features/F2-shared-household.md)
- F3 [Budgets](features/F3-budgets.md)
- F4 [Reports &amp; insights](features/F4-reports-and-insights.md)

## Product-wide

See [Product-wide](product-wide.md) for sign-in and currency rules that apply
across every feature.

## Out of Scope

- Support for more than two members in a household.
- Splitting expenses with people outside the household (e.g. roommates,
friends) or settling up external debts.
- Bank account or card integrations / automatic transaction import.
- Multi-currency spending (one household, one currency).

