json.orders @orders do |order|
  json.id order.id
  json.quantity order.quantity
  json.deliver order.deliver
  json.food do 
    json.id order.food.id
    json.name order.food.name
    json.category do
      json.id order.food.category.id
      json.name order.food.category.name
    end
  end
end
