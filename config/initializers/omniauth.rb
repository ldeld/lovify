require 'rspotify/oauth'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :spotify,
    ENV["SPOTIFY_CLIENT_ID"],
    ENV["SPOTIFY_CLIENT_SECRET"],
    scope: 'user-read-email playlist-read-private playlist-read-collaborative user-library-read user-top-read user-read-recently-played'
  )
end
