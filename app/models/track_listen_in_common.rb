class TrackListenInCommon < ApplicationRecord
  belongs_to :track_listen_user_1, class_name: "TrackListen"
  belongs_to :track_listen_user_2, class_name: "TrackListen"
  belongs_to :match
  has_one :track, through: :track_listen_user_1
end
