class CreateShiftLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :shift_logs do |t|
      t.timestamp :log_start
      t.timestamp :log_end
      t.integer :tracked_miles
      t.integer :total_shift_footprint
      t.integer :start_odometer
      t.integer :end_odometer
      t.references :vehicles
      t.references :employees

      t.timestamps
    end
  end
end
