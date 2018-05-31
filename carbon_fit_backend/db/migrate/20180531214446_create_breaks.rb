class CreateBreaks < ActiveRecord::Migration[5.1]
  def change
    create_table :breaks do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.references :shift_logs

      t.timestamps
    end
  end
end
