Feature: F3 Budgets

  @story-F3.1
  Rule: A household member sets a monthly spending limit for a category

    Scenario: Setting a budget for Groceries
      When Olivia sets a monthly budget of "400.00" for category "Groceries"
      Then the household's budgets show a "400.00" monthly limit for "Groceries"

  @story-F3.2
  Rule: A household member edits or removes a category's monthly budget

    Scenario: Editing a budget's limit
      Given the household has a monthly budget of "400.00" for category "Groceries"
      When Olivia changes that budget to "450.00"
      Then the household's budgets show a "450.00" monthly limit for "Groceries"

    Scenario: Removing a budget
      Given the household has a monthly budget of "400.00" for category "Groceries"
      When Olivia removes the budget for "Groceries"
      Then the household's budgets no longer include a limit for "Groceries"

  @story-F3.3
  Rule: A household member sees each category's budget alongside spending so far this month

    Scenario: Viewing spend against budget
      Given the household has a monthly budget of "400.00" for category "Groceries"
      And "120.00" has been spent in "Groceries" so far this month
      When Olivia views the household's budgets
      Then it shows "120.00" spent against the "400.00" limit for "Groceries"

  @story-F3.4
  Rule: A household member sees an in-app alert when spending in a category exceeds its monthly budget

    Scenario: Spending passes the monthly limit
      Given the household has a monthly budget of "150.00" for category "Transport"
      And "140.00" has already been spent in "Transport" this month
      When Olivia logs a "20.00" expense in category "Transport"
      Then she sees an alert that "Transport" is over its monthly budget

    Scenario: Spending stays within the monthly limit
      Given the household has a monthly budget of "150.00" for category "Transport"
      And "40.00" has already been spent in "Transport" this month
      When Olivia logs a "20.00" expense in category "Transport"
      Then she sees no over-budget alert for "Transport"
