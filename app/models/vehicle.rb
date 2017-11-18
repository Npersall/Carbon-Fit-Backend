class Vehicle < ApplicationRecord
 has_many :shift
 belongs_to :businesses

end
