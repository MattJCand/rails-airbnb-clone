class Space < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  has_attachment :photo
  validates :photo, presence: true
  validates :description, presence: true
end
