require 'rspotify'

class User < ApplicationRecord
  has_many :artist_listens, dependent: :destroy
  has_many :artists, through: :artist_listens
  has_many :track_listens, dependent: :destroy
  has_many :tracks, through: :track_listens
  has_many :matches, foreign_key: :user_1_id, dependent: :destroy
  has_many :matches, foreign_key: :user_2_id, dependent: :destroy

  serialize :spotify_auth, JSON

  after_create :store_spotify_data, :compare_user

  mount_uploader :photo, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, omniauth_providers: [:spotify]
  # ----------------------------------------------------------------
  def self.find_for_spotify_oauth(auth)


    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email)
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.spotify_auth = auth
      user.save
    end

    return user
  end

  def store_spotify_data
     spotify_user = RSpotify::User.new(spotify_auth)
     top_artists = spotify_user.top_artists(limit: 50)

     store_top_artists(top_artists)
     store_artists_listens(top_artists)

     top_tracks = spotify_user.top_tracks(limit: 100)
     store_top_tracks(top_tracks)
     store_tracks_listens(top_tracks)
  end

  def compare_user
    User.where.not(id: id).each do |user|
      Match.create(user_1_id: id, user_2_id: user.id, score: 0, hide: false)
    end
  end

  private

  def store_top_artists(artists)
    artists.each do |artist|
      unless Artist.find_by(spotify_id: artist.id)
        Artist.create(name: artist.name, popularity: artist.popularity, spotify_id: artist.id)
      end
    end
  end

  def store_artists_listens(artists)
    artists.each_with_index do |artist, index|
      saved_artist = Artist.find_by(spotify_id: artist.id)
      ArtistListen.create(artist: saved_artist, user_id: id, rank: index + 1)
    end
  end

  def store_top_tracks(tracks)
    tracks.each do |track|
      unless Track.find_by(spotify_id: track.id)
        Track.create(name: track.name, popularity: track.popularity, spotify_id: track.id)
      end
    end
  end

  def store_tracks_listens(tracks)
     tracks.each_with_index do |track, index|
        saved_track = Track.find_by(spotify_id: track.id)
        TrackListen.create(track: saved_track, user_id: id, rank: index + 1)
     end
  end


end
