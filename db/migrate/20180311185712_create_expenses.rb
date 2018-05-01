class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :cashflows do |t|
      
      t.date :Date
      
      t.string :Description
      t.string :Amount

      t.timestamps
    end
  end
end
