class CreateVehicles < ActiveRecord::Migration[5.1]
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :model
      t.string :make
      t.integer :mpg
      t.integer :total_miles

      t.timestamps
    end
  end
end
