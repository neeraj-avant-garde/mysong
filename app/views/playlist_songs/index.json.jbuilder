json.array!(@playlist_songs) do |playlist_song|
  json.extract! playlist_song, :playlist_id, :song_id, :rank
  json.url playlist_song_url(playlist_song, format: :json)
end
