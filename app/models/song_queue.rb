class SongQueue < ActiveRecord::Base
  belongs_to :host
  belongs_to :user
  belongs_to :song
  has_many :song_queue_users
end
