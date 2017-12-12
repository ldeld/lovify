class Match < ApplicationRecord
  belongs_to :user_1, :class_name => "User"
  belongs_to :user_2, :class_name => "User"
  has_many :artist_listen_in_commons, dependent: :destroy
  has_many :track_listen_in_commons, dependent: :destroy
  has_many :match_genres, dependent: :destroy
  has_many :genres, through: :match_genres
  has_many :match_bars, dependent: :destroy
  has_many :bars, through: :match_bars

  validates :user_1, presence: true
  validates :user_2, presence: true
  validates :score, presence: true

  after_create :calculate_score, :find_bars

  def calculate_score
    match_user_artists
    match_user_tracks
    self.score = (score * 1000).round / 100
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
        create_match_genre(artist_listen.artist)
        self.score += (10 / (artist_listen.rank + user_2.artist_listens.where(artist: artist_listen.artist).first.rank)) * (Math.exp(- 0.8 - (artist_listen.artist.popularity / 100 )) + 1)
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
        self.score += 0.8 * (10 / (track_listen.rank + user_2.track_listens.where(track: track_listen.track).first.rank)) * (Math.exp(- 0.8 - (track_listen.track.popularity / 100 )) + 1)

      end
    end
  end

  def create_match_genre(match_artist)
    match_artist.genres.each do |genre|
      unless self.genres.include? genre
        MatchGenre.create!(genre: genre, match: self)
      end
    end
  end

  def find_bars
    Bar.all.each do |bar|
      bar.genres.each do |genre|
        if self.genres.include? genre
          MatchBar.create!(bar: bar, match: self)
        end
      end
    end
  end
end
