class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_permitted_parameters_update, if: :devise_controller?
  before_action :authenticate_user!

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :picture])
  end
  def configure_permitted_parameters_update
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end
