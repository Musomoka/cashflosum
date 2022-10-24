class AddAccountNameToChartOfAccount < ActiveRecord::Migration[6.0]
  def change
    add_column :chart_of_accounts, :account_name, :string
  end
end
