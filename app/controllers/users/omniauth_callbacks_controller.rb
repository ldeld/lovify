class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    user = User.find_for_spotify_oauth(request.env['omniauth.auth'])

    if user.persisted?
      spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      hash = spotify_user.to_hash
      sign_in(user)
      redirect_to match_path(Match.all.where(hide: false).first.id)
      set_flash_message(:notice, :success, kind: 'Spotify') if is_navigational_format?
    else
      session['devise.spotify_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
