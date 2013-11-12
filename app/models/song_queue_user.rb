class SongQueueUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :song_queue
end
