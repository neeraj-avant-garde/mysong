class SongQueue < ActiveRecord::Base
  belongs_to :host
  belongs_to :user
  belongs_to :song
  has_many :song_queue_users

  validates :host_id, presence: true, numericality: { only_integer: true }
  validates :song_id, presence: true, numericality: { only_integer: true }
end
