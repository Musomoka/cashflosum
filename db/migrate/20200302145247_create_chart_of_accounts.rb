class CreateChartOfAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :chart_of_accounts do |t|
      t.string :account_number
      t.references :account_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
