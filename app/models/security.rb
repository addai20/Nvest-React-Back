class Security < ApplicationRecord
  has_many :taxlots
  has_many :accounts, through: :taxlots
end
