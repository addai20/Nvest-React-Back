class Account < ApplicationRecord
  belongs_to :investor
    #belongs_to :investor creates an investor_id to track ownership
  has_many :taxlots
  has_many :securities, through: :taxlots
end
