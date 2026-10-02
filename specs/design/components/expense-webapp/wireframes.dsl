screen HouseholdSetup "Invite your partner to form the household"
  navbar "Expense Tracker"
  heading "Set up your household"
  text "Invite your partner to start sharing expenses together."
  input "Partner's email"
  button "Send invite" primary // stays on this screen; invite sent, waiting for partner to accept

screen ExpensesList "The household's combined, always-current expense list"
  navbar "Expense Tracker"
  sidebar "Expenses -> ExpensesList | Categories -> Categories | Budgets -> Budgets | Reports -> Reports"
  row
    heading "Expenses"
    right
    button "Log expense" primary -> LogExpense
  table "Date | Category | Amount | Paid by | Logged by" -> EditExpense
    row "2026-09-30 | Groceries | $84.20 | You | You"
    row "2026-09-29 | Transport | $18.00 | Partner | Partner"
    row "2026-09-27 | Utilities | $120.00 | You | Partner"

screen LogExpense "Log a new shared expense"
  navbar "Expense Tracker"
  heading "Log expense"
  textarea "What was this expense for?"
  text "Suggested category: Transport"
  select "Category"
  input "Amount"
  input "Date"
  select "Paid by"
  row
    button "Cancel" -> ExpensesList
    right
    button "Save expense" primary -> ExpensesList

screen EditExpense "Edit or delete a logged expense"
  navbar "Expense Tracker"
  heading "Edit expense"
  select "Category"
  input "Amount"
  input "Date"
  select "Paid by"
  row
    button "Delete" danger -> ExpensesList
    right
    button "Cancel" -> ExpensesList
    button "Save changes" primary -> ExpensesList

screen Categories "The household's expense categories"
  navbar "Expense Tracker"
  sidebar "Expenses -> ExpensesList | Categories -> Categories | Budgets -> Budgets | Reports -> Reports"
  row
    heading "Categories"
    right
    button "Add category" primary -> AddCategory
  table "Name"
    row "Groceries"
    row "Transport"
    row "Utilities"

screen AddCategory "Add a new category to the household's list"
  navbar "Expense Tracker"
  heading "Add category"
  input "Category name"
  row
    button "Cancel" -> Categories
    right
    button "Save category" primary -> Categories

screen Budgets "Monthly spending limits per category"
  navbar "Expense Tracker"
  sidebar "Expenses -> ExpensesList | Categories -> Categories | Budgets -> Budgets | Reports -> Reports"
  row
    heading "Budgets"
    right
    button "Set budget" primary -> SetBudget
  table "Category | Monthly limit | Spent so far | Status"
    row "Groceries | $400.00 | $312.40 | On track"
    row "Transport | $150.00 | $168.00 | Over budget"

screen SetBudget "Set or edit a category's monthly budget"
  navbar "Expense Tracker"
  heading "Set budget"
  select "Category"
  input "Monthly limit"
  row
    button "Cancel" -> Budgets
    right
    button "Save budget" primary -> Budgets

screen Reports "Spending summaries and trends"
  navbar "Expense Tracker"
  sidebar "Expenses -> ExpensesList | Categories -> Categories | Budgets -> Budgets | Reports -> Reports"
  row
    heading "Reports"
    right
    select "This month"
  card "Spending by category"
    chart "By category" 600x260
  card "Spending trend"
    chart "By month" 600x260
  card "Spending by who paid"
    chart "By payer" 600x260

flow "Set up household"
  role "Household member"
  description "A new member invites their partner to form the household"
  HouseholdSetup
  ExpensesList

flow "Track expenses"
  role "Household member"
  description "A household member logs, edits and reviews shared expenses, categories, budgets and reports"
  ExpensesList
  LogExpense
  EditExpense
  Categories
  AddCategory
  Budgets
  SetBudget
  Reports
