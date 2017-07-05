class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_admin
  before_action :configure_permitted_parameters, if: :devise_controller?


  # def after_sign_in_path_for(admins)
  #   user_path
  # end

  def after_sign_out_path_for(admins)
    new_user_session_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password,])
    devise_parameter_sanitizer.permit(:account_update, keys: [:email, :password, :current_password, :avatar])
  end
end
