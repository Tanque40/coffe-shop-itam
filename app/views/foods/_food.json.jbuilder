json.extract! food, :id, :name, :description, :price, :photo, :user_id, :created_at, :updated_at
json.url food_url(food, format: :json)
