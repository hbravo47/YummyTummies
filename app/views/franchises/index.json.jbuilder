json.array!(@franchises) do |franchise|
  json.extract! franchise, :id
  json.url franchise_url(franchise, format: :json)
end
