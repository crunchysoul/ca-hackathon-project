json.extract! listing, :id, :name, :description, :user_id, :price, :photo_data, :category_id, :item_type, :created_at, :updated_at
json.url listing_url(listing, format: :json)
