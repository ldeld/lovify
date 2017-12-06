class Artist < ApplicationRecord
  validates :spotify_id, uniqueness: true

  has_many :artist_genres
  has_many :genres, through: :artist_genres
  has_many :artist_listens
end
