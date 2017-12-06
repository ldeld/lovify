class Track < ApplicationRecord
  validates :spotify_id, uniqueness: true
end
