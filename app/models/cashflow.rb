class Cashflow < ApplicationRecord
belongs_to :user
belongs_to :category, :optional => true
accepts_nested_attributes_for :category

scope :incomes, -> { where(:category_id => [1,3,4,5])}
# Ex:- scope :active, -> {where(:active => true)}





end
