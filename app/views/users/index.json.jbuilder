json.array!(@users) do |user|
  json.extract! user, :app_id, :phone, :verification, :longitude, :latitude, :privilege, :avatar
  json.url user_url(user, format: :json)
end
