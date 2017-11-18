class CreateShifts < ActiveRecord::Migration[5.1]
  def change
    create_table :shifts do |t|
      t.integer :total_shift_footprint
      t.time :shift_start
      t.time :shift_end
      t.integer :shift_miles

      t.timestamps
    end
  end
end
