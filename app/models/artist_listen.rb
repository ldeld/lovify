class ArtistListen < ApplicationRecord
  belongs_to :artist
  belongs_to :user
  has_many :artist_listen_in_commons, foreign_key: :artist_listen_user_1_id, dependent: :destroy
  has_many :artist_listen_in_commons, foreign_key: :artist_listen_user_2_id, dependent: :destroy
end
