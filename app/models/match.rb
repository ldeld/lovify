class Match < ApplicationRecord
  belongs_to :user_1, :class_name => "User"
  belongs_to :user_2, :class_name => "User"
  has_many :meetings
  has_many :artist_listen_in_commons
  has_many :track_listen_in_commons

  validates :user_1, presence: true
  validates :user_2, presence: true
  validates :score, presence: true

  after_create :calculate_score

  def calculate_score
    match_user_artists
    match_user_tracks
    binding.pry
    self.save
  end

  private

  def match_user_artists
    user_1.artist_listens.each do |artist_listen|
      if user_2.artists.include? artist_listen.artist
        common = ArtistListenInCommon.new(artist_listen_user_1: artist_listen)
        common.artist_listen_user_2 = user_2.artist_listens.where(artist: artist_listen.artist).first
        common.match = self
        common.save
        self.score += 1
      end
    end
  end

  def match_user_tracks
    user_1.track_listens.each do |track_listen|
      if user_2.tracks.include? track_listen.track
        common = TrackListenInCommon.new(track_listen_user_1: track_listen)
        common.track_listen_user_2 = user_2.track_listens.where(track: track_listen.track).first
        common.match = self
        common.save
        self.score += 1
      end
    end
  end
end
