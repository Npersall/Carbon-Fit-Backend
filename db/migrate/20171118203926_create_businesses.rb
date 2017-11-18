class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.integer :total_footprint


      t.timestamps
    end
  end
end
