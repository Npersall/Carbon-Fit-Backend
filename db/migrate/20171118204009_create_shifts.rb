class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer :total_shift_footprint
      t.time :shift_start
      t.time :shift_end
      t.integer :shift_miles
      t.integer :LPG
      t.integer :isobutane
      t.integer :propane
      t.integer :methane
      t.integer :alcohol
      t.integer :smoke

      t.timestamps
    end
  end
end
