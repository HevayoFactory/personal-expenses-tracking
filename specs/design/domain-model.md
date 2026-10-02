# Domain model

The household is the unit everything else belongs to: its two members share
one set of expenses, categories and budgets.

```mermaid
erDiagram
    HOUSEHOLD ||--o{ HOUSEHOLDMEMBER : has
    HOUSEHOLD ||--o{ EXPENSE : logs
    HOUSEHOLD ||--o{ CATEGORY : defines
    HOUSEHOLD ||--o{ BUDGET : sets
    CATEGORY ||--o{ EXPENSE : categorizes
    CATEGORY ||--o{ BUDGET : limits
    HOUSEHOLDMEMBER ||--o{ EXPENSE : logs
    HOUSEHOLDMEMBER ||--o{ EXPENSE : "paid for"

    HOUSEHOLD {
        string id
        string status
        string currency
        datetime createdAt
    }
    HOUSEHOLDMEMBER {
        string id
        string householdId
        string email
        string name
    }
    EXPENSE {
        string id
        string householdId
        string categoryId
        string loggedByMemberId
        string paidByMemberId
        int amountCents
        date expenseDate
        string note
    }
    CATEGORY {
        string id
        string householdId
        string name
    }
    BUDGET {
        string id
        string householdId
        string categoryId
        int monthlyLimitCents
    }
```

A `HOUSEHOLD` starts `pending` when its creator signs up and becomes `active`
once the invited partner accepts. Every `EXPENSE` belongs to exactly one
`CATEGORY` and records both who logged it and who paid; a `BUDGET` is a
monthly limit on one category.