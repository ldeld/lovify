class TrackListen < ApplicationRecord
  belongs_to :user
  belongs_to :track
end
