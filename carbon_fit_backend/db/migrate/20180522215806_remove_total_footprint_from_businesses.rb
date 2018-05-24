class RemoveTotalFootprintFromBusinesses < ActiveRecord::Migration[5.1]
  def change
    remove_column :businesses, :total_footprint, :integer
  end
end
