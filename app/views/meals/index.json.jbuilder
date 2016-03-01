json.array!(@meals) do |meal|
  json.extract! meal, :id, :name, :calories, :premium, :pic, :mealID
  json.url meal_url(meal, format: :json)
end
