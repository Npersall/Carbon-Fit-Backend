class DropShifts < ActiveRecord::Migration[5.1]
  def change
    drop_table :shifts
  end
end
