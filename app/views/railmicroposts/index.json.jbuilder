json.array!(@railmicroposts) do |railmicropost|
  json.extract! railmicropost, :id, :content, :user_id
  json.url railmicropost_url(railmicropost, format: :json)
end
