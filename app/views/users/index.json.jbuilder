json.array!(@users) do |user|
  json.extract! user, :guid, :phone, :verification, :longitude, :latitude, :privilege, :status
  json.url user_url(user, format: :json)
end
