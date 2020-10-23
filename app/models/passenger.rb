class Passenger < ApplicationRecord
  validates :name, :email, presence: true, length: { maximum: 60 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }

  belongs_to :booking
  has_many :flights, through: :bookings
end
