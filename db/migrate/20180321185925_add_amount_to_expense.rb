class AddAmountToExpense < ActiveRecord::Migration[5.1]
  def change
    add_column :expenses, :amount, :integer
    remove_column :expenses, :Expense, :string
    remove_column :expenses, :line, :string

  end
end
	