json.food @foods do |f|
  json.id f.id
  json.name f.name
  json.category do 
    json.id f.category.id
    json.name f.category.name
  end
end
