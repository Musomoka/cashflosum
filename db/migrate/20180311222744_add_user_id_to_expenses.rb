class AddUserIdToExpenses < ActiveRecord::Migration[5.1]
  def change
    add_reference :cashflows, :user, foreign_key: true
  end
end
