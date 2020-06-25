class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def current_u
    if current_user
      current_user
    # elsif current_admin
    #   current_admin
    else
      User.new
    end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastname ,:username,:bio,:address,:phone, :avatar])
  end

end
