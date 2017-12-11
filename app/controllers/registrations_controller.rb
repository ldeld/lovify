class RegistrationsController < Devise::RegistrationsController
 protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end

  def after_update_path_for(resource)
    profile_path
  end

  def account_update_params
    params.require(:user).permit(:first_name, :photo, :photo_cache, :description, :gender, :interested_in)
  end
end
