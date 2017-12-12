class Bar < ApplicationRecord
  has_many :bar_genres
  has_many :genres, through: :bar_genres
end
