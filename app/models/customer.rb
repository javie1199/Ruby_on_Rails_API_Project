class Customer < ApplicationRecord
  has_many :checkins

  validates :first_name, :last_name, :email, :birth_date, :phone_num, presence: true
  validates :phone_num, numericality: { only_integer: true }
end
