class Plant < ActiveRecord::Base
  validates :strain, presence: true
  validates :serial_number, presence: true
  has_many :plant_monitors, dependent: :destroy
  #accepts_nested_attributes_for :plant_monitors, allow_destroy: true,
  #                                               reject_if: :all_blank
  has_many :notes, dependent: :destroy
end
