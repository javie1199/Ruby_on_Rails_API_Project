class Checkin < ApplicationRecord
  has_many :technicians
  has_many :services
  has_many :customer_checkins
  has_many :customers, through: :customer_checkins
  
  validates :date, presence: true
end
