class PlaylistSong < ActiveRecord::Base
  belongs_to :playlist
  belongs_to :song

  validates :playlist_id, presence: true, numericality: { only_integer: true }
  validates :song_id, presence: true, numericality: { only_integer: true }
  validates :rank, presence: true, numericality: { only_integer: true }
end
