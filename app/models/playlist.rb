class Playlist < ActiveRecord::Base
  belongs_to :host
  has_many :playlist_songs
  has_many :songs, through: :playlist_songs
  validates :title, presence: true, length: { maximum: 100 }
  validates :host_id, presence: true, numericality: { only_integer: true }
end
