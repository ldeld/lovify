class ArtistListen < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  has_many :artist_listen_in_commons
end
