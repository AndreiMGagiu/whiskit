class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[email address photo first_name surname])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[email address photo first_name surname])
  end

  def default_url_options
    { host: ENV["www.whiskit.club"] || "localhost:3000" }
  end
end
