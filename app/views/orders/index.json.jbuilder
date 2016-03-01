json.array!(@orders) do |order|
  json.extract! order, :id, :Mealname, :calories, :date, :price, :kidsID, :orderID
  json.url order_url(order, format: :json)
end
