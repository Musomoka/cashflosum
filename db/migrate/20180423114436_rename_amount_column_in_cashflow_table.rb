class RenameAmountColumnInCashflowTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :cashflows, :Amount, :integer
    remove_column :cashflows, :Description, :string
    remove_column :cashflows, :Date, :Date
    
    add_column :cashflows, :amount, :integer
    add_column :cashflows, :description, :string
    add_column :cashflows, :date, :Date

  end
end
