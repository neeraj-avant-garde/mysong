class Song < ActiveRecord::Base
  belongs_to :host
  has_many :playlist_songs
  has_many :song_queues

  validates :host_id, presence: true, numericality: { only_integer: true }
  validates :title,   presence: true
  validates :length,  presence: true, numericality: { only_integer: true }
end
