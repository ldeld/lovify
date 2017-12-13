module ApplicationHelper
  def profile_picture_for(user, options = {})
    if user.photo.present?
      cl_image_tag user.photo, options
    else
      image_tag user.spotify_photo, options
    end
  end
end
