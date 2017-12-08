class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def spotify
    user = User.find_for_spotify_oauth(request.env['omniauth.auth'])

    if user.persisted?
      spotify_user = RSpotify::User.new(request.env['omniauth.auth'])
      hash = spotify_user.to_hash
      sign_in(user)
      redirect_match
      set_flash_message(:notice, :success, kind: 'Spotify') if is_navigational_format?
    else
      session['devise.spotify_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end
  end

  def redirect_match
    if user_matches.empty?
      redirect_to matches_no_matches_path
    else
      redirect_to match_path(Match.all.where(hide: false).first.id)
    end
  end

  def user_matches
    matches = Match.where(user_1: current_user) + Match.where(user_2: current_user)
    matches.reject! { |m| m.score == 0 || m.asker == current_user.id || m.hide == true}
    matches
  end
end
