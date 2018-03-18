class Expense < ApplicationRecord
belongs_to :user, dependent: :destroy
end
