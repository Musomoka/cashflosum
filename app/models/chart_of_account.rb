class ChartOfAccount < ApplicationRecord
  belongs_to :account_group
  has_ancestry 
  validates :account_name, :account_number, :account_group_id, presence: true
  validates :account_name, :account_number, :account_group_id, uniqueness: true

end




