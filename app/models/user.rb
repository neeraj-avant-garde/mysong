class User < ActiveRecord::Base
  has_many :host_users
  has_many :hosts, through: :host_users
  has_many :messages
  has_many :song_queues
  has_many :song_queue_users

  before_save :init_data

  validates :phone, presence: true, uniqueness: true

  def init_data
    self.guid  = SecureRandom.uuid if new_record?
    self.verification  = ('a'..'z').to_a.shuffle[0..2].join if new_record?
  end  
end
