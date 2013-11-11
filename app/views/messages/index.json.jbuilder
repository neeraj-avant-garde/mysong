json.array!(@messages) do |message|
  json.extract! message, :host_id, :user_id, :text, :created_by
  json.url message_url(message, format: :json)
end
