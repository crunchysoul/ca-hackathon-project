class AddImageToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :image_url, :string
  end
end
