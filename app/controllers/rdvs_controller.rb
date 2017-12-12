class RdvsController < ApplicationController
  def create
    rdv = Rdv.new(rdv_params)
    match = Match.find(params[:match_id].to_i)
    rdv.match = match
    rdv.save!
    match.asker = current_user.id
    match.save!
    redirect_to "/next-match"
  end

  private

  def rdv_params
    params.require(:rdv).permit(:bar_id)
  end
end
