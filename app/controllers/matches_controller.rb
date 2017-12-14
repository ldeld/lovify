class MatchesController < ApplicationController
  before_action :set_match, only: [:show, :update]

  def user_matches
    matches = Match.where(user_1: current_user) + Match.where(user_2: current_user)
    matches.reject! { |m| m.score == 0 || m.asker == current_user.id || (m.asker != nil && m.receiver != nil) || m.hide == true}
    matches.reject! { |m| m.score == 0 || m.asker == current_user.id || (m.asker != nil && m.receiver != nil) || m.hide == true}
    matches.each do |match|
      if match.user_1.interested_in != match.user_2.gender && match.user_1.interested_in != "both"
        Match.destroy(match.id)
      elsif match.user_2.interested_in != match.user_1.gender && match.user_2.interested_in != "both"
        Match.destroy(match.id)
      end
    end
    matches
  end

  def index
    @user = current_user
    @matches_done = Match.where(asker: current_user.id).where.not(receiver: nil) + Match.where(receiver: current_user.id).where.not(asker: nil)
    @match_requests = Match.where(receiver: nil).where.not(asker: nil).where.not(asker: current_user.id).where(user_1:current_user) + Match.where(receiver: nil).where.not(asker: nil).where.not(asker: current_user.id).where(user_2:current_user)
  end

  def show
    @user = current_user
    @rdv = Rdv.new
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
    if Rdv.where(match_id: params[:id]).present?
      @match = Match.find(params[:id])
    else
      @match = user_matches.first
    end
  end

  def match_params
    params.require(:match).permit(:hide, :asker, :receiver)
  end
end
