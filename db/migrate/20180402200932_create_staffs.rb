class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :job_title
      t.text :bio
      t.string :avatar

      t.timestamps
    end
  end
end
