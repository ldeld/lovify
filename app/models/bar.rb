class Bar < ApplicationRecord
  has_many :bar_genres
  has_many :genres, through: :bar_genres
  validates :name, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
