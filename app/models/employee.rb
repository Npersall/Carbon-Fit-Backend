class Employee < ApplicationRecord
  belongs_to :business
  has_many :shifts
end
