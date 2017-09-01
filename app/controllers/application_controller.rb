class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  before_action :authenticate_user!
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  

  protected
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:id,:password, :password_confirmation, :remember_me,:role_type])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:id,:password, :remember_me])
    devise_parameter_sanitizer.permit(:account_update, keys: [:id,:password, :password_confirmation, :current_password,:role_type])
    # devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:userid, :password, :password_confirmation) }
  
  end 
  
  
  #   devise_parameter_sanitizer.for(:account_update) { |u| u.permit({ roles: [] }, :email, :password, :password_confirmation, :avatar,:current_password, :about,:user, :name) }
  # end
  
  
end
