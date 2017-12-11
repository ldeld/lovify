class Bar < ApplicationRecord
  has_many :bar_genres
  has_many :bars, through: :bar_genres
end
