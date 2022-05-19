json.food @foods do |f|
  json.id f.id
  json.name f.name
  json.description f.name
  json.price f.price
  json.photo f.photo
  json.category do 
    json.id f.category.id
    json.name f.category.name
  end
end
