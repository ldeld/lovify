class TrackListen < ApplicationRecord
  belongs_to :user
  belongs_to :track
  has_many :track_listen_in_commons, foreign_key: :track_listen_user_1_id, dependent: :destroy
  has_many :track_listen_in_commons, foreign_key: :track_listen_user_2_id, dependent: :destroy
end
