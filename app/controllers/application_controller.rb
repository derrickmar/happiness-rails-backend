class ApplicationController < ActionController::Base
	acts_as_token_authentication_handler_for User, except: [:home]

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception 

  before_action :configure_permitted_parameters, if: :devise_controller?

  responders :json

  protected

  def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) << :regid
    devise_parameter_sanitizer.for(:sign_up) << :time_zone
  	# devise_parameter_sanitizer.for(:sign_in) << :regid
  end
end
