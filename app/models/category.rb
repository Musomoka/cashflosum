class Category < ApplicationRecord
	has_many :expenses
	has_ancestry
end
