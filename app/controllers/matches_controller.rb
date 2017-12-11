class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :ask_out, :not_interested, :update]

  def user_matches
    matches = Match.where(user_1: current_user) + Match.where(user_2: current_user)
    matches.reject! { |m| m.score == 0 || m.asker == current_user.id || m.hide == true}
    matches
  end

  def index
    @user = current_user
    @matches_done = Match.where(asker: current_user.id).where.not(receiver: nil) + Match.where(receiver: current_user.id).where.not(asker: nil)
    @match_requests = Match.where(receiver: nil).where.not(asker: nil).where.not(asker: current_user.id).where(user_1:current_user) + Match.where(receiver: nil).where.not(asker: nil).where.not(asker: current_user.id).where(user_2:current_user)
  end

  def show
    @user = current_user
  end

  def ask_out
    @match.asker = current_user.email
    @match.save
  end

  def not_interested
    @match.hide = true
    @match.save
  end

  def update
    @user = current_user
    @match.update_attributes(match_params)
    redirect_match
  end

  def no_matches
  end

  def redirect_match
    if user_matches.empty?
      redirect_to matches_no_matches_path
    else
      redirect_to match_path(user_matches.first.id)
    end
  end

  private

  def set_match
    @match = user_matches.first
  end

  def match_params
    params.require(:match).permit(:hide, :asker)
  end
end
