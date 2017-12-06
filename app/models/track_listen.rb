class TrackListen < ApplicationRecord
  belongs_to :user
  belongs_to :track
  has_many :track_listen_in_commons
end
