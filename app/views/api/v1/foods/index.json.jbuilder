json.pagination do
  json.current_page @foods.current_page
  json.per_page @foods.per_page
  json.total_entries @foods.total_entries
end

json.foods @foods do |food|
  json.id food.id
  
  json.category do
    json.id food.category.id
    json.name food.category.name
  end

  json.name food.name
  json.description food.description
  json.price food.price
  json.photo food.photo
end
