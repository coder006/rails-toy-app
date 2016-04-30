json.array!(@railusers) do |railuser|
  json.extract! railuser, :id, :name, :email
  json.url railuser_url(railuser, format: :json)
end
