class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :city
      t.string :country
      t.string :contact_number
      t.text :bio
      t.text :photo_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
