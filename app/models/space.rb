class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  validates :photo, presence: true
  validates :description, presence: true
end
