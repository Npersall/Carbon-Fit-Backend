class RemoveEmployeeTotalFootprintFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :employee_total_footprint, :integer
  end
end
