class AddBusinessIdentifierToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :business_identifier, :string
  end
end
