class Business < ApplicationRecord
  has_many :employees
  has_many :vehicles
  has_many :shifts, through: :employees

end
