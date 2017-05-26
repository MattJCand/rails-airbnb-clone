class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_attachment :photo

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  validates :photo, presence: true
  validates :description, presence: true
  validates :price_by_day, presence: true
  validates :name, presence: true
  validates :address, presence: true
end
