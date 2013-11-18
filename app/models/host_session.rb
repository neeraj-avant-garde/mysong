class HostSession < ActiveRecord::Base
  belongs_to :host
  
  validates :host_id, presence: true, numericality: { only_integer: true }
  
  before_save :init_data

  def init_data
    self.host_session_id  = SecureRandom.uuid if new_record?
  end
end
