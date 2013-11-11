json.array!(@songs) do |song|
  json.extract! song, :host_id, :title, :artist, :album, :length
  json.url song_url(song, format: :json)
end
