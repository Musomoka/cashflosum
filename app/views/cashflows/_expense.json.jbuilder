json.extract! expense, :id, :line, :Date, :AccountName, :Description, :Expense, :created_at, :updated_at
json.url expense_url(expense, format: :json)
