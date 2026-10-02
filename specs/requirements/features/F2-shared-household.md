# Shared household

## Purpose

Link the two partners into one household so every expense either of them
marks as shared is visible to both, giving them a single combined view of
household spending.

## User Stories

- F2.1 As a household member, I create a household and invite my partner by email.
- F2.2 As an invited partner, I accept the invite and join the household.
- F2.3 As a household member, I log expenses solo before my partner has joined; they become shared and visible to both once my partner joins.
- F2.4 As a household member, I see a single combined list of all household expenses, both partners' entries together.

## Decisions

- A household has exactly two members, formed when the creator invites their
partner by email and the partner accepts.
- Pairing is permanent once made; there is no leave/unpair flow.

## Out of Scope

- Leaving or unpairing a household.
- Belonging to more than one household.

