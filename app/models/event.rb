class Event < ActiveRecord::Base

  after_initialize :set_defaults

  validates :title, presence: true

  has_many :tasks

  def set_defaults
    self.date_time ||= Date.today
    self.complete ||= false
  end


end
