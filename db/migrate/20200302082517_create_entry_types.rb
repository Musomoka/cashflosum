class CreateEntryTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :entry_types do |t|
      t.string :name
      t.string :default_acc
      t.boolean :fixed_entry_type

      t.timestamps
    end
  end
end
