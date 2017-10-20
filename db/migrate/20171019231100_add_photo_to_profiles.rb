class AddPhotoToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :image_url, :string
  end
end
