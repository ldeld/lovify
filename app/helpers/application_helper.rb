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

  def unread_conversation_messages(conversation)
    if conversation.messages.last
      count = 0
      i = conversation.messages.count - 1
      until conversation.messages[i].user_id == current_user.id || conversation.messages[i].read || i == -1
        count += 1
        i -= 1
      end
    end
    return count
  end

  def request_count
    requests = Rdv.where(receiver_id: current_user.id).where(accepted: false)
    requests.count
  end
end
