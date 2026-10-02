Feature: F2 Shared household

  @story-F2.1
  Rule: A household member creates a household and invites their partner by email

    Scenario: Creating a household and sending an invite
      When Olivia creates a household and invites her partner at "partner@example.com"
      Then the household is pending until her partner accepts

  @story-F2.2
  Rule: An invited partner accepts the invite and joins the household

    Scenario: The partner accepts the invite
      Given Olivia has invited her partner at "partner@example.com"
      When her partner accepts the invite
      Then the household is active with both of them as members

  @story-F2.3
  Rule: A household member may log expenses solo before their partner joins, and those expenses become shared once the partner joins

    Scenario: Solo expenses become shared once the partner joins
      Given Olivia has logged an expense of "40.00" in category "Groceries" before her partner joined
      When her partner accepts the invite and joins the household
      Then her partner's expense list includes that "40.00" expense

  @story-F2.4
  Rule: A household member sees a single combined list of all household expenses

    Scenario: Both partners' expenses appear together
      Given Olivia has logged an expense of "40.00" in category "Groceries"
      And her partner has logged an expense of "18.00" in category "Transport"
      When Olivia opens the household's expense list
      Then it shows both the "40.00" expense and the "18.00" expense
