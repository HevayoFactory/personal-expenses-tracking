# Product-wide

Rules that apply to more than one feature.

## Requirements

- P1 Every household member signs in via SSO before using the app. \[org default\] Applies to: all.
- P2 All amounts are in a single household currency, stored in cents. Applies to: all. *assumed*

## Decisions

- A household has exactly two members; there is no owner/admin distinction
between them — both have identical access to shared data.

