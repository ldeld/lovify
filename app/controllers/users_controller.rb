class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    binding.pry
    hash = spotify_user.to_hash
    redirect_to root_path
  end
end
