class MatchesController < ApplicationController
  def user_matches
    matches = Match.where(user_1: current_user) + Match.where(user_2: current_user)
    matches.reject! { |m| m.score == 0 }
    matches
  end

  def index
    @matches = user_matches
  end
end
