class MatchesController < ApplicationController
  before_action :set_match, only: [:show]

  def user_matches
    matches = Match.where(user_1: current_user) + Match.where(user_2: current_user)
    matches.reject! { |m| m.score == 0 }
    matches
  end

  def index
    @matches = user_matches
  end

  def show
  end

  private

  def set_match
    matches = Match.all.where(hide: false)
    @match = matches.first
  end
end
