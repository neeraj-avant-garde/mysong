class User < ActiveRecord::Base
  has_many :hosts, through: :host_users
  has_many :messages
  has_many :song_queues
  has_many :song_queue_users
end
