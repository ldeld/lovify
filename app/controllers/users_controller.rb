class UsersController < ApplicationController
  skip_before_action :authenticate_user!

  def spotify
    spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
    hash = spotify_user.to_hash
    redirect_to root_path
  end

  def profile
  end

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(current_user.id)
    @user.update_attributes(user_params)
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:first_name, :description, :photo, :photo_cache, :gender, :interested_in)

  end



end
