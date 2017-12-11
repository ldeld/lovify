class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    user = User.find_for_spotify_oauth(request.env['omniauth.auth'])

    if user.persisted?
      spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      hash = spotify_user.to_hash
      sign_in(user)
      user.login_count += 1
      user.save
      if user.login_count == 1
        redirect_to edit_user_registration_path
      else redirect_to '/next-match'
      end
      set_flash_message(:notice, :success, kind: 'Spotify') if is_navigational_format?
    else
      session['devise.spotify_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end
end
