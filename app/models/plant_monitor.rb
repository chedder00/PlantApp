class PlantMonitor < ActiveRecord::Base
  belongs_to :plant
  validates :date, presence: true
end
