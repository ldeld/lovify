class Track < ApplicationRecord
  validates :spotify_id, uniqueness: true
  has_many :track_listens
end
