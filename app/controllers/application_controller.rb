class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_up_path_for(resource)
    if current_user
      flash[:sing_up] = "Welcome! You have signed up successfully."
    else
      flash[:sign_in] = "Signed in successfully." 
    end
    user_path(current_user)
  end
  
  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

end
