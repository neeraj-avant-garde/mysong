class SongQueueUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :song_queue

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :song_queue_id, presence: true, numericality: { only_integer: true }
end
