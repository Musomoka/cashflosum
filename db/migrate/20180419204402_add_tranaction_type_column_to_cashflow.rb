class AddTranactionTypeColumnToCashflow < ActiveRecord::Migration[5.2]
  def change
    add_column :cashflows, :tranaction_type, :string
  end
end
