class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    hash = spotify_user.to_hash
    redirect_to edit_user_registration_path
  end
end
