require 'rspotify'

class User < ApplicationRecord
  has_many :artist_listens, dependent: :destroy
  has_many :artists, through: :artist_listens
  has_many :track_listens, dependent: :destroy
  has_many :tracks, through: :track_listens

  serialize :spotify_auth, JSON

  after_create :store_spotify_data

  mount_uploader :photo, PhotoUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable, omniauth_providers: [:spotify]
  # ----------------------------------------------------------------

  def store_spotify_data
    spotify_user = RSpotify::User.new(spotify_auth)
    top_artists = spotify_user.top_artists(limit: 50)
    ArtistsController.update_artist_list(top_artists)
    ArtistListensController.create_artist_listens(top_artists, id)
    # ----------------------------------------------------------
    top_tracks = spotify_user.top_tracks(limit: 100)
    TracksController.update_track_list(top_tracks)
    TrackListensController.create_track_listens(top_tracks, id)
    binding.pry
  end

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
end
