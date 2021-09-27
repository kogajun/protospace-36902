class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_partameters, if: :devise_controller?

  private
  def configure_permitted_partameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position])
  end
end