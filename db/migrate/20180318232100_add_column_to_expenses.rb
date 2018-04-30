class AddColumnToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_reference :cashflows, :category, foreign_key: true
  end
end
