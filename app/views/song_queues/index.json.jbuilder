json.array!(@song_queues) do |song_queue|
  json.extract! song_queue, :host_id, :song_id, :user_id, :message, :message_approved, :priority, :status
  json.url song_queue_url(song_queue, format: :json)
end
