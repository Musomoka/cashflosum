class Cashflow < ApplicationRecord
	
belongs_to :user
belongs_to :category, :optional => true
accepts_nested_attributes_for :category





end
