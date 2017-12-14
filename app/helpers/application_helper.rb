module ApplicationHelper
  def profile_picture_for(user, options = {})
    if user.photo.present?
      cl_image_tag user.photo, options
    else
      image_tag user.spotify_photo, options
    end
  end

  def unread_messages_count
    count = 0
    conversations = Conversation.where(sender_id: current_user.id) + Conversation.where(recipient_id: current_user.id)
    conversations.each do |conversation|
      if conversation.messages.last
        if conversation.messages.last.user_id != current_user.id && !conversation.messages.last.read
          count += 1
        end
      end
    end
    return count
  end
end
