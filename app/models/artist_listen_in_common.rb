class ArtistListenInCommon < ApplicationRecord
  belongs_to :artist_listen_user_1, class_name: "ArtistListen"
  belongs_to :artist_listen_user_2, class_name: "ArtistListen"
  belongs_to :match
  has_one :artist, through: :artist_listen_user_1
end
