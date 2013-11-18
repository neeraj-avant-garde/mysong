json.array!(@host_sessions) do |host_session|
  json.extract! host_session, :host_id, :host_session_id, :is_active
  json.url host_session_url(host_session, format: :json)
end
