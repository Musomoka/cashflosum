class CreateAccountGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :account_groups do |t|
      t.string :account_group_name
      t.integer :first_number
      t.integer :last_number

      t.timestamps
    end
  end
end
