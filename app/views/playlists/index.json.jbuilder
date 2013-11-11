json.array!(@playlists) do |playlist|
  json.extract! playlist, :host_id, :title
  json.url playlist_url(playlist, format: :json)
end
