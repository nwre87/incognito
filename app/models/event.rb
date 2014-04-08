class Event < ActiveRecord::Base

  belongs_to :user

  after_initialize :set_defaults

  validates :title, presence: true

  def set_defaults
    self.date_time ||= Date.today
    self.complete ||= false
  end


end
