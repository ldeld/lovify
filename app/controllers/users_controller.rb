class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    hash = spotify_user.to_hash
    redirect_to root_path
  end

  def user_params
  params.require(:user).permit(:name, :description, :photo, :photo_cache)
end

end
