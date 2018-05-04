class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :cashflows do |t|
      
      t.date :date
      
      t.string :description
      t.string :amount

      t.timestamps
    end
  end
end
