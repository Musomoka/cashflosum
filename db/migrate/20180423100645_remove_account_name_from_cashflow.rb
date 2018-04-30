class RemoveAccountNameFromCashflow < ActiveRecord::Migration[5.2]
  def change
    remove_column :cashflows, :AccountName, :string
    remove_column :cashflows, :tranaction_type, :string
  end
end
