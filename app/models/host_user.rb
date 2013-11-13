class HostUser < ActiveRecord::Base
  belongs_to :host
  belongs_to :user

  validates :host_id, presence: true, numericality: { only_integer: true }
  validates :user_id, presence: true, numericality: { only_integer: true }
end
