class AddBusinessesRefToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_reference :employees, :businesses, foreign_key: true
  end
end
