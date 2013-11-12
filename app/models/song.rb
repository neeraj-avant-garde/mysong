class Song < ActiveRecord::Base
  belongs_to :host
  has_many :playlist_songs
  has_many :song_queues
end
