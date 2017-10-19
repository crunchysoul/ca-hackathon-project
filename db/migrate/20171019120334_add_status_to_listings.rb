class AddStatusToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :status, :integer
  end
end
