class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :ask_out, :not_interested, :update]

  def user_matches
    matches = Match.where(user_1: current_user) + Match.where(user_2: current_user)
    matches.reject! { |m| m.score == 0 || m.asker == current_user.id || m.hide == true}
    matches
  end

  def index
    @matches = user_matches
  end

  def show
    @user = current_user
  end

  def ask_out
    @match.asker = current_user.email
    @match.save
    redirect_to match_path(Match.all.where(hide: false).first.id)
  end

  def not_interested
    @match.hide = true
    @match.save
    redirect_to match_path(Match.all.where(hide: false).first.id)
  end

  def update
    @user = current_user
    @match.update_attributes(match_params)
    redirect_to match_path(Match.all.where(hide: false).first.id)
  end

  private

  def set_match
    @match = user_matches.first
  end

  def match_params
    params.require(:match).permit(:hide, :asker)
  end

end
