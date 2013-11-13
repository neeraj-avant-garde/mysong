class Host < ActiveRecord::Base
  has_many :users, through: :host_users
  has_many :songs
  has_many :messages
  has_many :playlists
  has_many :playlist_songs, through: :playlists
  has_many :song_queues
  has_many :song_queue_users, through: :song_queues
  has_many :host_users

  before_save :init_data

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,        presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password,     length: {minimum: 6}
  validates :address,      presence: true
  validates :city,         presence: true
  validates :max_requests, presence: true, numericality: { only_integer: true }
  validates :max_queue,    presence: true, numericality: { only_integer: true }
  validates :max_queue,    presence: true, numericality: { greater_than: 0 }

  def init_data
    self.email = email.downcase      
    self.guid  = SecureRandom.uuid if new_record?
    self.verification  = ('a'..'z').to_a.shuffle[0..2].join if new_record?
  end
end
