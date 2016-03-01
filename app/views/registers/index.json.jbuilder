json.array!(@registers) do |register|
  json.extract! register, :id, :name, :address, :school, :phone, :kids, :kidsId, :SSN
  json.url register_url(register, format: :json)
end
