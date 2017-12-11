class Genre < ApplicationRecord
  has_many :artist_genres
  has_many :artists, through: :artist_genres
  has_many :bar_genres
  has_many :bars, through: :bar_genres
end
