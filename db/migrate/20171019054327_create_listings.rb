class CreateListings < ActiveRecord::Migration[5.1]
  def change
    create_table :listings do |t|
      t.string :name
      t.text :description
      t.references :user, foreign_key: true
      t.decimal :price
      t.text :photo_data
      t.string :category_id
      t.string :item_type

      t.timestamps
    end
  end
end
