Feature: F4 Reports & insights

  @story-F4.1
  Rule: A household member sees a breakdown of spending by category for a selected period

    Scenario: Viewing this month's category breakdown
      Given the household has spent "120.00" in "Groceries" and "60.00" in "Transport" this month
      When Olivia views the report for "this month"
      Then it shows "120.00" for "Groceries" and "60.00" for "Transport"

  @story-F4.2
  Rule: A household member sees a month-over-month trend of the household's spending

    Scenario: Viewing the spending trend
      Given the household spent "300.00" last month and "260.00" this month
      When Olivia views the spending trend
      Then it shows last month's total of "300.00" next to this month's total of "260.00"

  @story-F4.3
  Rule: A household member sees a breakdown of spending by who paid for a selected period

    Scenario: Viewing this month's paid-by breakdown
      Given Olivia paid "120.00" and her partner paid "60.00" this month
      When Olivia views the report for "this month"
      Then it shows "120.00" paid by Olivia and "60.00" paid by her partner

  @story-F4.4
  Rule: A household member chooses a fixed period for any report

    Scenario: Switching the report period
      Given the household has spending recorded in both this month and last month
      When Olivia switches the report period from "this month" to "last month"
      Then the figures shown update to last month's totals

  @story-F4.5
  Rule: A report shows actual spending against the budget for any category that has one

    Scenario: A category with a budget shows actual vs budget
      Given the household has a monthly budget of "400.00" for category "Groceries"
      And it has spent "350.00" in "Groceries" this month
      When Olivia views the report for "this month"
      Then it shows "350.00" spent against a "400.00" budget for "Groceries"

    Scenario: A category with no budget shows only the spend
      Given the household has no budget set for category "Entertainment"
      And it has spent "75.00" in "Entertainment" this month
      When Olivia views the report for "this month"
      Then it shows "75.00" spent for "Entertainment" with no budget figure
