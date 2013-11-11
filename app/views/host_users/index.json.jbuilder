json.array!(@host_users) do |host_user|
  json.extract! host_user, :activity, :old_visit
  json.url host_user_url(host_user, format: :json)
end
