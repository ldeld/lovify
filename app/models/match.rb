class Match < ApplicationRecord
  belongs_to :user_1, :class_name => "User"
  belongs_to :user_2, :class_name => "User"
  has_many :meetings

  validates :user_1, presence: true
  validates :user_2, presence: true
  validates :score, presence: true

  after_create :calculate_score

  def calculate_score
    user_1.artist_listens.each do |artist_listen|
      if user_2.artists.include? artist_listen.artist
        common = ArtistListenInCommon.new(artist_listen_user_1: artist_listen)
        common.artist_listen_user_2 = user_2.artist_listens.where(artist: artist_listen.artist).first
        common.match = self
        common.save
        self.score += 1
      end
    end
    p self.score
    binding.pry
  end

end
