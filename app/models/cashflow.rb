class Cashflow < ApplicationRecord
belongs_to :user
belongs_to :category, :optional => true
accepts_nested_attributes_for :category
validates_associated :category
validates_associated :user
validates :amount, presence: true

# Ex:- scope :active, -> {where(:active => true)}





end
