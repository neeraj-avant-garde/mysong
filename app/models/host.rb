class Host < ActiveRecord::Base
  has_many :users, through: :host_users
  has_many :songs
  has_many :messages
  has_many :playlists
  has_many :playlist_songs, through: :playlist
  has_many :song_queues
  has_many :song_queue_users, through: :song_queue
  has_many :host_users
end
