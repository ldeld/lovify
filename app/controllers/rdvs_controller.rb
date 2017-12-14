class RdvsController < ApplicationController
  def index
    @user = current_user
    @rdvs_done = Rdv.where(receiver_id: @user.id).where(accepted: true) + Rdv.where(asker_id: @user.id).where(accepted: true)
    @rdvs_requests = @user.rdvs.where(receiver: current_user, accepted: false)
  end

  def create
    rdv = Rdv.new(rdv_params)
    match = Match.find(params[:match_id].to_i)
    rdv.match = match
    rdv.asker = current_user
    rdv.receiver = (match.user_1 == current_user) ? match.user_2 : match.user_1
    match.hide = true
    match.save!
    rdv.save!
    redirect_to "/next-match"
    flash[:notice] = "You asked #{rdv.receiver.first_name} out!"
  end

  def accept
    rdv = Rdv.find(params[:id])
    rdv.update(accepted: true)
    Conversation.create!(sender_id: rdv.asker.id, recipient_id: rdv.receiver.id, rdv_id: rdv.id)
    redirect_to rdvs_path
  end

  private

  def rdv_params
    params.require(:rdv).permit(:bar_id)
  end
end
