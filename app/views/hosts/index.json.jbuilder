json.array!(@hosts) do |host|
  json.extract! host, :id, :name, :app_id, :email, :password, :avatar, :address, :area, :city, :postcode, :state, :country, :verification, :longitude, :latitude, :subscription_end, :max_requests, :max_queue, :proximity, :facebook, :twitter, :slogan, :device_id, :is_logged_in, :session_id
  json.url host_url(host, format: :json)
end
