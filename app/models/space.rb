class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_attachment :photo
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
