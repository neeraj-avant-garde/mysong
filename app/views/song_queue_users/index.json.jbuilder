json.array!(@song_queue_users) do |song_queue_user|
  json.extract! song_queue_user, :song_queue_id, :user_id, :like, :dislike
  json.url song_queue_user_url(song_queue_user, format: :json)
end
