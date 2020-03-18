class AddAncestryToChartOfAccount < ActiveRecord::Migration[6.0]
  def change
    add_column :chart_of_accounts, :ancestry, :string
    add_index :chart_of_accounts, :ancestry
  end
end
