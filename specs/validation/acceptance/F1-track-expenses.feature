Feature: F1 Track expenses

  @story-F1.1
  Rule: A household member logs an expense with an amount, date, category and optional note

    Scenario: Logging a grocery expense
      When Olivia logs an expense of "84.20" on "2026-09-30" in category "Groceries" with the note "Weekly shop"
      Then the household's expense list shows one more expense than before, for "84.20" in "Groceries" on "2026-09-30"

    @negative
    Scenario: An expense needs an amount, date and category
      When Olivia tries to log an expense with no amount
      Then the household's expense list has as many expenses as before

  @story-F1.2
  Rule: The agent suggests a category from the expense's description, which the member may accept or override

    Scenario: Accepting the suggested category
      Given Olivia has typed the description "Uber ride to the airport" for a new expense
      When she sees the suggested category and accepts it
      Then the logged expense is in the suggested category

    Scenario: Overriding the suggested category
      Given Olivia has typed the description "Uber ride to the airport" for a new expense
      When she picks a different category than the one suggested and logs the expense
      Then the logged expense is in the category she picked, not the suggested one

  @story-F1.3
  Rule: An expense records who paid, defaulting to the person logging it

    Scenario: Logging an expense defaults the payer to the logger
      When Olivia logs an expense without choosing who paid
      Then the expense records Olivia as the payer

    Scenario: Logging an expense on the partner's behalf
      When Olivia logs an expense and sets the payer to her partner
      Then the expense records her partner as the payer

  @story-F1.4
  Rule: Either partner may edit or delete any expense in the household

    Scenario: The partner edits an expense the other member logged
      Given Olivia has logged an expense of "18.00" in category "Transport"
      When her partner changes that expense's amount to "20.00"
      Then the expense now shows "20.00"

    Scenario: The partner deletes an expense the other member logged
      Given Olivia has logged an expense of "18.00" in category "Transport"
      When her partner deletes that expense
      Then the household's expense list no longer includes it

  @story-F1.5
  Rule: A household member picks a category from the household's list, and can add, rename or remove categories

    Scenario: Adding a new category
      When Olivia adds a category named "Childcare"
      Then the household's category list includes "Childcare"

    Scenario: Renaming a category
      Given the household has a category named "Transport"
      When Olivia renames it to "Travel"
      Then the household's category list includes "Travel" and no longer includes "Transport"

    @negative
    Scenario: Removing a category
      Given the household has a category named "Childcare"
      When Olivia removes the category "Childcare"
      Then the household's category list no longer includes "Childcare"
