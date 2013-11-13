class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :host

  validates :user_id, presence: true, numericality: { only_integer: true }
  validates :host_id, presence: true, numericality: { only_integer: true }
  validates :phone, presence: true
end
