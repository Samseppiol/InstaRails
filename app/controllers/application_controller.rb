class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:
    [:date_of_birth, :phone_number])
    devise_parameter_sanitizer.permit(:account_update, keys:
    [:date_of_birth, :phone_number])
    devise_parameter_sanitizer.permit(:account_update) do |user_params|
    user_params.permit({ roles: [] }, :email, :password, :password_confirmation)
  end
  end

end
