json.array!(@hosts) do |host|
  json.extract! host, :app_id, :email, :password, :address, :area, :city, :verification, :longitude, :latitude, :subscription_end, :max_requests, :max_queue, :proximity, :facebook, :twitter, :slogan
  json.url host_url(host, format: :json)
end
