class Investor < ApplicationRecord
  has_many :accounts

  # accepts_nested_attributes_for :sectors

end
