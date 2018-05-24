class AddEmployeeIdentifierToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :employee_identifier, :string
  end
end
