class MatchGenre < ApplicationRecord
  belongs_to :match
  belongs_to :genre
end
