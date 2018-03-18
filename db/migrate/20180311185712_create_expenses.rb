class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.string :line
      t.date :Date
      t.string :AccountName
      t.string :Description
      t.string :Expense

      t.timestamps
    end
  end
end
