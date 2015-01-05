class Note < ActiveRecord::Base
  belongs_to :plant
  validates :date, presence: true
  validates :comment, presence: true
end
